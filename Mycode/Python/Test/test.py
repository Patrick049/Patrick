#!/usr/bin/env python3b
# coding: utf-8

import os
import sys
from datetime import *

sys.path.append("/cmcc_na1/xfer/cbbs_interface/lib")
os.environ['NLS_LANG'] = 'SIMPLIFIED CHINESE_CHINA.UTF8'
sys.path.append("/cmcc_na1/xfer/cbbs_interface/lib/python3.5/site-packages")
sys.path.append("/cmcc_na1/xfer/cbbs_interface/lib/python2.7/site-packages")
import CommonUtil
import logging
import traceback
import MySQLdb


# system_code_IP     112001

home_dir = "/cmcc_na1/xfer/cbbs_interface/mcb4_zqjf"
dest_dir = os.path.join("/cmcc_na1/xfer/cbbs_interface/mcb4_zqjf/file")

def generate_file_name(interface_type, cell_code, date_type):
    if (date_type.upper() == "MONTH"):
        extract_date = CommonUtil.getOptionalDate("Month", -5)

    if (date_type.upper() == "DAY"):
        extract_date = CommonUtil.getOptionalDate("DAY", -1)

    # ${DataAddType}_$SystemCode(BSMS)_${DataExtractDate}_${CellCode}_00_001
    data_file_name = "%s_%s_%s_001.dat" % (interface_type,  extract_date, cell_code)

    verf_file_name = "%s_%s_%s_001.chk" % (interface_type, extract_date, cell_code)

    list = [extract_date, data_file_name, verf_file_name]

    return list


def write_verf_file(file_name_list, file_size, records):
    try:
        extract_date = file_name_list[0]
        data_file_name = file_name_list[1]
        verf_file_name = file_name_list[2]
        verf_file = os.path.join(dest_dir, verf_file_name)
        cur_time = datetime.strftime(datetime.now(), "%Y%m%d%H%M%S")

        verf_file_stream = open(verf_file, 'w', encoding='utf-8', errors="ignore")
        verf_file_stream.write("%-40s%-20s%-20s%-20s%-20s\r\n"
                               % (data_file_name, file_size, records, extract_date, cur_time))

    except Exception as e:
        print("[ERROR]error message: %s, get_bsms_info.py exit!!!" % str(e))
        sys.exit(0)

    finally:
        verf_file_stream.close()


def get_hedu_info_month():

    try:
        cell_code = "112001"
        filename_list = generate_file_name("i", cell_code, "month")
        extract_date = filename_list[0]
        data_file_name = filename_list[1]

        date_output_stream = open(os.path.join(dest_dir, data_file_name), 'w', encoding='utf-8', errors="ignore")
        sql = """select curr_deal ,
       chrg_prov ,
       Sp_code ,
       oper_code ,
       data_type ,
       SUM(sheet_cnt) ,
       SUM(bal_fee) ,
       SUM(outcome1) 
  from (SELECT substr(curr_deal, 1, 6) as curr_deal,
               chrg_prov,
               Sp_code,
               oper_code,
               data_type,
               SUM(sheet_cnt) as sheet_cnt,
               SUM(bal_fee) / 100 as bal_fee,
               SUM(outcome1) / 100 as outcome1
          FROM cbbs_rst4.CBBS_RST_BALANCE_SP
         WHERE dr_type = '90527'
           and curr_deal like '%s%%'
         GROUP BY curr_deal, chrg_prov, Sp_code, oper_code, data_type) a
 group by curr_deal, chrg_prov, Sp_code, oper_code, data_type
 order by curr_deal, chrg_prov, Sp_code, oper_code, data_type;""" % (extract_date)

        print(sql)
        conn = MySQLdb.connect("10.252.190.206", "admin", "8klly&yCBBS", "cbbs_rst4", port=18066)
        cursor = conn.cursor()
        cursor.execute(sql)

        num = 0
        sum_records = 0
        file_size = 0

        while True:
            resultlist = list(cursor.fetchmany())

            if not resultlist:
                break

            for res in resultlist:
                res = list(res)
                print(res)
                format_line = "%s|%s|%s|%s|%s|%s|%d|%d\r\n" % (res[0], res[1],res[2],res[3],res[4],res[5],int(res[6]),int(res[7]))
                date_output_stream.write(format_line)
                num += 1
                sum_records += 1
                file_size += len(format_line)

                if num >= 1000:
                    date_output_stream.flush()
                    num = 0

        # gen verf file
        write_verf_file(filename_list, file_size, sum_records)

        logging.info("%s [done], fetch %s records!!!" % ("get_bsms_cnt_month", sum_records))

    except Exception as e:
        print("[ERROR]error message: %s, get_hedu_info_month  exit!!!" % str(e))
        sys.exit(0)

    finally:
        date_output_stream.close()
        cursor.close()
        conn.close()


if __name__ == '__main__':

    get_hedu_info_month()