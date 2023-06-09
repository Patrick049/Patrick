/*
Navicat MySQL Data Transfer

Source Server         : Mysql105
Source Server Version : 50639
Source Host           : 192.168.209.128:3306
Source Database       : aeaicrm

Target Server Type    : MYSQL
Target Server Version : 50639
File Encoding         : 65001

Date: 2022-07-08 10:46:12
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `crm_city`
-- ----------------------------
DROP TABLE IF EXISTS `crm_city`;
CREATE TABLE `crm_city` (
  `CODE_ID` varchar(32) DEFAULT NULL,
  `CITY_ID` varchar(32) NOT NULL,
  `CITY_NAME` varchar(32) DEFAULT NULL,
  `CITY_SORT` int(32) DEFAULT NULL,
  PRIMARY KEY (`CITY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of crm_city
-- ----------------------------
INSERT INTO `crm_city` VALUES ('SiChuan', 'ABa', '阿坝', '19');
INSERT INTO `crm_city` VALUES ('XinJiang', 'AKeSu', '阿克苏', '6');
INSERT INTO `crm_city` VALUES ('NeiMengGu', 'ALaShan', '阿拉善', '12');
INSERT INTO `crm_city` VALUES ('XinJiang', 'ALeTai', '阿勒泰', '14');
INSERT INTO `crm_city` VALUES ('XiZang', 'ALi', '阿里', '6');
INSERT INTO `crm_city` VALUES ('SanXi', 'AnKang', '安康', '9');
INSERT INTO `crm_city` VALUES ('AnHui', 'AnQing', '安庆', '8');
INSERT INTO `crm_city` VALUES ('LiaoNing', 'AnShan', '鞍山', '3');
INSERT INTO `crm_city` VALUES ('GuiZhou', 'AnShun', '安顺', '4');
INSERT INTO `crm_city` VALUES ('HeNan', 'AnYang', '安阳', '8');
INSERT INTO `crm_city` VALUES ('JiLin', 'BaiCheng', '白城', '8');
INSERT INTO `crm_city` VALUES ('GuangXi', 'BaiSe', '百色', '10');
INSERT INTO `crm_city` VALUES ('JiLin', 'BaiShan', '白山', '6');
INSERT INTO `crm_city` VALUES ('GanSu', 'BaiYin', '白银', '4');
INSERT INTO `crm_city` VALUES ('HeBei', 'BaoDing', '保定', '6');
INSERT INTO `crm_city` VALUES ('SanXi', 'BaoJi', '宝鸡', '3');
INSERT INTO `crm_city` VALUES ('YunNan', 'BaoShan', '保山', '4');
INSERT INTO `crm_city` VALUES ('NeiMengGu', 'BaoTou', '包头', '2');
INSERT INTO `crm_city` VALUES ('NeiMengGu', 'BaYanNaoEr', '巴彦淖尔', '8');
INSERT INTO `crm_city` VALUES ('XinJiang', 'BaYinGuoLeMengGu', '巴音郭楞蒙古', '9');
INSERT INTO `crm_city` VALUES ('SiChuan', 'BaZhong', '巴中', '17');
INSERT INTO `crm_city` VALUES ('GuangXi', 'BeiHai', '北海', '5');
INSERT INTO `crm_city` VALUES ('AnHui', 'BengBu', '蚌埠', '3');
INSERT INTO `crm_city` VALUES ('LiaoNing', 'BenXi', '本溪', '5');
INSERT INTO `crm_city` VALUES ('GuiZhou', 'BiJie', '毕节', '6');
INSERT INTO `crm_city` VALUES ('ShanDong', 'BinZhou', '滨州', '16');
INSERT INTO `crm_city` VALUES ('XinJiang', 'BoErTaLaMengGu', '博尔塔拉蒙古', '11');
INSERT INTO `crm_city` VALUES ('AnHui', 'BoZhou', '亳州', '15');
INSERT INTO `crm_city` VALUES ('HeBei', 'CangZhou', '沧州', '9');
INSERT INTO `crm_city` VALUES ('JiLin', 'ChangChun', '长春', '1');
INSERT INTO `crm_city` VALUES ('HuNan', 'ChangDe', '常德', '7');
INSERT INTO `crm_city` VALUES ('XiZang', 'ChangDu', '昌都', '2');
INSERT INTO `crm_city` VALUES ('XinJiang', 'ChangJi', '昌吉', '10');
INSERT INTO `crm_city` VALUES ('HuNan', 'ChangSha', '长沙', '1');
INSERT INTO `crm_city` VALUES ('Shanxi', 'ChangZhi', '长治', '4');
INSERT INTO `crm_city` VALUES ('JiangSu', 'ChangZhou', '常州', '4');
INSERT INTO `crm_city` VALUES ('AnHui', 'ChaoHu', '巢湖', '13');
INSERT INTO `crm_city` VALUES ('LiaoNing', 'ChaoYang', '朝阳', '13');
INSERT INTO `crm_city` VALUES ('GuangDong', 'ChaoZhou', '潮州', '19');
INSERT INTO `crm_city` VALUES ('HeBei', 'ChengDe', '承德', '8');
INSERT INTO `crm_city` VALUES ('SiChuan', 'ChengDu', '成都', '1');
INSERT INTO `crm_city` VALUES ('HuNan', 'ChenZhou', '郴州', '10');
INSERT INTO `crm_city` VALUES ('NeiMengGu', 'ChiFeng', '赤峰', '4');
INSERT INTO `crm_city` VALUES ('AnHui', 'ChiZhou', '池州', '16');
INSERT INTO `crm_city` VALUES ('GuangXi', 'ChongZuo', '崇左', '14');
INSERT INTO `crm_city` VALUES ('YunNan', 'ChuXiong', '楚雄', '12');
INSERT INTO `crm_city` VALUES ('AnHui', 'ChuZhou', '滁州', '10');
INSERT INTO `crm_city` VALUES ('YunNan', 'DaLi', '大理', '13');
INSERT INTO `crm_city` VALUES ('LiaoNing', 'DaLian', '大连', '2');
INSERT INTO `crm_city` VALUES ('LiaoNing', 'DanDong', '丹东', '6');
INSERT INTO `crm_city` VALUES ('HeiLongJiang', 'DaQing', '大庆', '6');
INSERT INTO `crm_city` VALUES ('Shanxi', 'DaTong', '大同', '2');
INSERT INTO `crm_city` VALUES ('HeiLongJiang', 'DaXingAnLing', '大兴安岭', '13');
INSERT INTO `crm_city` VALUES ('SiChuan', 'DaZhou', '达州', '14');
INSERT INTO `crm_city` VALUES ('YunNan', 'DeHong', '德宏', '14');
INSERT INTO `crm_city` VALUES ('SiChuan', 'DeYang', '德阳', '5');
INSERT INTO `crm_city` VALUES ('ShanDong', 'DeZhou', '德州', '14');
INSERT INTO `crm_city` VALUES ('GanSu', 'DingXi', '定西', '11');
INSERT INTO `crm_city` VALUES ('YunNan', 'DiQing', '迪庆', '16');
INSERT INTO `crm_city` VALUES ('GuangDong', 'DongGuan', '东莞', '17');
INSERT INTO `crm_city` VALUES ('ShanDong', 'DongYing', '东营', '5');
INSERT INTO `crm_city` VALUES ('NeiMengGu', 'EErDuoSi', '鄂尔多斯', '6');
INSERT INTO `crm_city` VALUES ('HuBei', 'EnShi', '恩施', '13');
INSERT INTO `crm_city` VALUES ('HuBei', 'EZhou', '鄂州', '8');
INSERT INTO `crm_city` VALUES ('GuangXi', 'FangChengGang', '防城港', '6');
INSERT INTO `crm_city` VALUES ('GuangDong', 'Foshan', '佛山', '6');
INSERT INTO `crm_city` VALUES ('LiaoNing', 'FuShun', '抚顺', '4');
INSERT INTO `crm_city` VALUES ('LiaoNing', 'FuXin', '阜新', '9');
INSERT INTO `crm_city` VALUES ('AnHui', 'FuYang', '阜阳', '11');
INSERT INTO `crm_city` VALUES ('FuJian', 'FuZhou', '福州', '1');
INSERT INTO `crm_city` VALUES ('JiangXi', 'FuZhouShi', '抚州', '10');
INSERT INTO `crm_city` VALUES ('GanSu', 'GanNan', '甘南', '14');
INSERT INTO `crm_city` VALUES ('JiangXi', 'GanZhou', '赣州', '7');
INSERT INTO `crm_city` VALUES ('SiChuan', 'GanZi', '甘孜', '20');
INSERT INTO `crm_city` VALUES ('TaiWan', 'GaoXiong', '高雄', '2');
INSERT INTO `crm_city` VALUES ('SiChuan', 'GuangAn', '广安', '13');
INSERT INTO `crm_city` VALUES ('SiChuan', 'GuangYuan', '广元', '7');
INSERT INTO `crm_city` VALUES ('GuangDong', 'GuangZhou', '广州', '1');
INSERT INTO `crm_city` VALUES ('GuangXi', 'GuiGang', '贵港', '8');
INSERT INTO `crm_city` VALUES ('GuangXi', 'GuiLin', '桂林', '3');
INSERT INTO `crm_city` VALUES ('GuiZhou', 'GuiYang', '贵阳', '1');
INSERT INTO `crm_city` VALUES ('QingHai', 'GuoLuo', '果洛', '6');
INSERT INTO `crm_city` VALUES ('NingXia', 'GuYuan', '固原', '4');
INSERT INTO `crm_city` VALUES ('HeiLongJiang', 'HaErBin', '哈尔滨', '1');
INSERT INTO `crm_city` VALUES ('QingHai', 'HaiBei', '海北', '3');
INSERT INTO `crm_city` VALUES ('QingHai', 'HaiDong', '海东', '2');
INSERT INTO `crm_city` VALUES ('HaiNan', 'HaiKou', '海口', '1');
INSERT INTO `crm_city` VALUES ('QingHai', 'HaiNanShi', '海南', '5');
INSERT INTO `crm_city` VALUES ('QingHai', 'HaiXi', '海西', '8');
INSERT INTO `crm_city` VALUES ('XinJiang', 'HaMi', '哈密', '4');
INSERT INTO `crm_city` VALUES ('HeBei', 'HanDan', '邯郸', '4');
INSERT INTO `crm_city` VALUES ('ZheJiang', 'HangZhou', '杭州', '1');
INSERT INTO `crm_city` VALUES ('SanXi', 'HanZhong', '汉中', '7');
INSERT INTO `crm_city` VALUES ('HeNan', 'HeBi', '鹤壁', '6');
INSERT INTO `crm_city` VALUES ('GuangXi', 'HeChi', '河池', '12');
INSERT INTO `crm_city` VALUES ('AnHui', 'HeFei', '合肥', '1');
INSERT INTO `crm_city` VALUES ('HeiLongJiang', 'HeGang', '鹤岗', '4');
INSERT INTO `crm_city` VALUES ('HeiLongJiang', 'HeiHe', '黑河', '11');
INSERT INTO `crm_city` VALUES ('HeBei', 'HengShui', '衡水', '11');
INSERT INTO `crm_city` VALUES ('HuNan', 'HengYang', '衡阳', '4');
INSERT INTO `crm_city` VALUES ('XinJiang', 'HeTian', '和田', '5');
INSERT INTO `crm_city` VALUES ('GuangDong', 'HeYuan', '河源', '14');
INSERT INTO `crm_city` VALUES ('ShanDong', 'HeZe', '菏泽', '17');
INSERT INTO `crm_city` VALUES ('GuangXi', 'HeZhou', '贺州', '11');
INSERT INTO `crm_city` VALUES ('YunNan', 'HongHe', '红河', '10');
INSERT INTO `crm_city` VALUES ('JiangSu', 'HuaiAn', '淮安', '8');
INSERT INTO `crm_city` VALUES ('AnHui', 'HuaiBei', '淮北', '6');
INSERT INTO `crm_city` VALUES ('HuNan', 'HuaiHua', '怀化', '12');
INSERT INTO `crm_city` VALUES ('AnHui', 'HuaiNan', '淮南', '4');
INSERT INTO `crm_city` VALUES ('HuBei', 'HuangGang', '黄冈', '10');
INSERT INTO `crm_city` VALUES ('QingHai', 'HuangNan', '黄南', '4');
INSERT INTO `crm_city` VALUES ('AnHui', 'HuangShan', '黄山', '9');
INSERT INTO `crm_city` VALUES ('HuBei', 'Huangshi', '黄石', '2');
INSERT INTO `crm_city` VALUES ('NeiMengGu', 'HuHuHaoTe', '呼呼浩特', '1');
INSERT INTO `crm_city` VALUES ('GuangDong', 'HuiZhou', '惠州', '11');
INSERT INTO `crm_city` VALUES ('LiaoNing', 'HuLuDao', '葫芦岛', '14');
INSERT INTO `crm_city` VALUES ('NeiMengGu', 'HuLuoBeiEr', '呼伦贝尔', '7');
INSERT INTO `crm_city` VALUES ('ZheJiang', 'HuZhou', '湖州', '5');
INSERT INTO `crm_city` VALUES ('HeiLongJiang', 'JiaMuSi', '佳木斯', '8');
INSERT INTO `crm_city` VALUES ('JiangXi', 'JiAn', '吉安', '8');
INSERT INTO `crm_city` VALUES ('GuangDong', 'JiangMen', '江门', '7');
INSERT INTO `crm_city` VALUES ('HeNan', 'JiaoZuo', '焦作', '5');
INSERT INTO `crm_city` VALUES ('ZheJiang', 'JiaXing', '嘉兴', '4');
INSERT INTO `crm_city` VALUES ('TaiWan', 'JiaYi', '嘉义', '7');
INSERT INTO `crm_city` VALUES ('GanSu', 'JiaYuGuan', '嘉峪关', '2');
INSERT INTO `crm_city` VALUES ('GuangDong', 'JieYang', '揭阳', '20');
INSERT INTO `crm_city` VALUES ('JiLin', 'JiLinShi', '吉林', '2');
INSERT INTO `crm_city` VALUES ('TaiWan', 'JiLong', '基隆', '3');
INSERT INTO `crm_city` VALUES ('ShanDong', 'JiNan', '济南', '1');
INSERT INTO `crm_city` VALUES ('GanSu', 'JinChang', '金昌', '3');
INSERT INTO `crm_city` VALUES ('Shanxi', 'JinCheng', '晋城', '5');
INSERT INTO `crm_city` VALUES ('JiangXi', 'JingDeZhen', '景德镇', '2');
INSERT INTO `crm_city` VALUES ('HuBei', 'JingMen', '荆门', '7');
INSERT INTO `crm_city` VALUES ('HuBei', 'JingZhou', '荆州', '5');
INSERT INTO `crm_city` VALUES ('ZheJiang', 'JinHua', '金华', '7');
INSERT INTO `crm_city` VALUES ('ShanDong', 'JiNing', '济宁', '9');
INSERT INTO `crm_city` VALUES ('Shanxi', 'JinZhong', '晋中', '7');
INSERT INTO `crm_city` VALUES ('LiaoNing', 'JinZhou', '锦州', '7');
INSERT INTO `crm_city` VALUES ('JiangXi', 'JiuJiang', '九江', '4');
INSERT INTO `crm_city` VALUES ('GanSu', 'JiuQuan', '酒泉', '9');
INSERT INTO `crm_city` VALUES ('HeiLongJiang', 'JiXi', '鸡西', '3');
INSERT INTO `crm_city` VALUES ('HeNan', 'KaiFeng', '开封', '2');
INSERT INTO `crm_city` VALUES ('XinJiang', 'KaShi', '喀什', '7');
INSERT INTO `crm_city` VALUES ('XinJiang', 'KeLaMaYi', '克拉玛依', '2');
INSERT INTO `crm_city` VALUES ('XinJiang', 'KeZiLeSuKeErKeZi', '克孜勒苏柯尔克孜', '8');
INSERT INTO `crm_city` VALUES ('YunNan', 'KunMing', '昆明', '1');
INSERT INTO `crm_city` VALUES ('GuangXi', 'LaiBin', '来宾', '13');
INSERT INTO `crm_city` VALUES ('ShanDong', 'LaiWu', '莱芜', '12');
INSERT INTO `crm_city` VALUES ('HeBei', 'LangFang', '廊坊', '10');
INSERT INTO `crm_city` VALUES ('GanSu', 'LanZhou', '兰州', '1');
INSERT INTO `crm_city` VALUES ('XiZang', 'LaSa', '拉萨', '1');
INSERT INTO `crm_city` VALUES ('SiChuan', 'LeShan', '乐山', '10');
INSERT INTO `crm_city` VALUES ('SiChuan', 'LiangShan', '凉山', '21');
INSERT INTO `crm_city` VALUES ('JiangSu', 'LianYunGang', '连云港', '7');
INSERT INTO `crm_city` VALUES ('ShanDong', 'LiaoCheng', '聊城', '15');
INSERT INTO `crm_city` VALUES ('LiaoNing', 'LiaoYang', '辽阳', '10');
INSERT INTO `crm_city` VALUES ('JiLin', 'LiaoYuan', '辽源', '4');
INSERT INTO `crm_city` VALUES ('YunNan', 'LiJiang', '丽江', '6');
INSERT INTO `crm_city` VALUES ('YunNan', 'LinCang', '临沧', '8');
INSERT INTO `crm_city` VALUES ('Shanxi', 'LinFen', '临汾', '10');
INSERT INTO `crm_city` VALUES ('GanSu', 'LinXia', '临夏', '13');
INSERT INTO `crm_city` VALUES ('ShanDong', 'LinYi', '临沂', '13');
INSERT INTO `crm_city` VALUES ('XiZang', 'LinZhi', '林芝', '7');
INSERT INTO `crm_city` VALUES ('ZheJiang', 'LiShui', '丽水', '11');
INSERT INTO `crm_city` VALUES ('GuiZhou', 'LiuPanShui', '六盘水', '2');
INSERT INTO `crm_city` VALUES ('GuangXi', 'LiuZhou', '柳州', '2');
INSERT INTO `crm_city` VALUES ('GanSu', 'LongNan', '陇南', '12');
INSERT INTO `crm_city` VALUES ('FuJian', 'LongYan', '龙岩', '8');
INSERT INTO `crm_city` VALUES ('HuNan', 'LouDi', '娄底', '13');
INSERT INTO `crm_city` VALUES ('AnHui', 'LuAn', '六安', '14');
INSERT INTO `crm_city` VALUES ('HeNan', 'LuoHe', '漯河', '11');
INSERT INTO `crm_city` VALUES ('HeNan', 'Luoyang', '洛阳', '3');
INSERT INTO `crm_city` VALUES ('SiChuan', 'LuZhou', '泸州', '4');
INSERT INTO `crm_city` VALUES ('Shanxi', 'LvLiang', '吕梁', '11');
INSERT INTO `crm_city` VALUES ('AnHui', 'MaAnShan', '马鞍山', '5');
INSERT INTO `crm_city` VALUES ('GuangDong', 'MaoMing', '茂名', '9');
INSERT INTO `crm_city` VALUES ('SiChuan', 'MeiShan', '眉山', '15');
INSERT INTO `crm_city` VALUES ('GuangDong', 'MeiZhou', '梅州', '12');
INSERT INTO `crm_city` VALUES ('SiChuan', 'MianYang', '绵阳', '6');
INSERT INTO `crm_city` VALUES ('HeiLongJiang', 'MuDanJiang', '牡丹江', '10');
INSERT INTO `crm_city` VALUES ('JiangXi', 'NanChang', '南昌', '1');
INSERT INTO `crm_city` VALUES ('SiChuan', 'NanChong', '南充', '11');
INSERT INTO `crm_city` VALUES ('JiangSu', 'NanJing', '南京', '1');
INSERT INTO `crm_city` VALUES ('GuangXi', 'NanNing', '南宁', '1');
INSERT INTO `crm_city` VALUES ('FuJian', 'NanPing', '南平', '7');
INSERT INTO `crm_city` VALUES ('JiangSu', 'NanTong', '南通', '6');
INSERT INTO `crm_city` VALUES ('HeNan', 'NanYang', '南阳', '13');
INSERT INTO `crm_city` VALUES ('XiZang', 'NaQv', '那曲', '5');
INSERT INTO `crm_city` VALUES ('SiChuan', 'NeiJiang', '内江', '9');
INSERT INTO `crm_city` VALUES ('ZheJiang', 'NingBo', '宁波', '2');
INSERT INTO `crm_city` VALUES ('FuJian', 'NingDe', '宁德', '9');
INSERT INTO `crm_city` VALUES ('YunNan', 'NuJiang', '怒江', '15');
INSERT INTO `crm_city` VALUES ('LiaoNing', 'PanJin', '盘锦', '11');
INSERT INTO `crm_city` VALUES ('SiChuan', 'PanZhiHua', '攀枝花', '3');
INSERT INTO `crm_city` VALUES ('HeNan', 'PingDingShan', '平顶山', '4');
INSERT INTO `crm_city` VALUES ('GanSu', 'PingLiang', '平凉', '8');
INSERT INTO `crm_city` VALUES ('JiangXi', 'PingXiang', '萍乡', '3');
INSERT INTO `crm_city` VALUES ('YunNan', 'PuEr', '普洱', '7');
INSERT INTO `crm_city` VALUES ('FuJian', 'PuTian', '莆田', '3');
INSERT INTO `crm_city` VALUES ('HeNan', 'PuYang', '濮阳', '9');
INSERT INTO `crm_city` VALUES ('GuiZhou', 'QianDongNan', '黔东南', '8');
INSERT INTO `crm_city` VALUES ('GuiZhou', 'QianNan', '黔南', '9');
INSERT INTO `crm_city` VALUES ('GuiZhou', 'QianXiNan', '黔西南', '7');
INSERT INTO `crm_city` VALUES ('ShanDong', 'QingDao', '青岛', '2');
INSERT INTO `crm_city` VALUES ('HeBei', 'QingHuangDao', '秦皇岛', '3');
INSERT INTO `crm_city` VALUES ('GanSu', 'QingYang', '庆阳', '10');
INSERT INTO `crm_city` VALUES ('GuangDong', 'QingYuan', '清远', '16');
INSERT INTO `crm_city` VALUES ('GuangXi', 'QinZhou', '钦州', '7');
INSERT INTO `crm_city` VALUES ('HeiLongJiang', 'QiQiHaEr', '齐齐哈尔', '2');
INSERT INTO `crm_city` VALUES ('HeiLongJiang', 'QiTaiHe', '七台河', '9');
INSERT INTO `crm_city` VALUES ('FuJian', 'QuanZhou', '泉州', '5');
INSERT INTO `crm_city` VALUES ('YunNan', 'QvJing', '曲靖', '2');
INSERT INTO `crm_city` VALUES ('ZheJiang', 'QvZhou', '衢州', '8');
INSERT INTO `crm_city` VALUES ('XiZang', 'RiKaZe', '日喀则', '4');
INSERT INTO `crm_city` VALUES ('ShanDong', 'RiZhao', '日照', '11');
INSERT INTO `crm_city` VALUES ('HeNan', 'SanMenXia', '三门峡', '12');
INSERT INTO `crm_city` VALUES ('FuJian', 'SanMing', '三明', '4');
INSERT INTO `crm_city` VALUES ('HaiNan', 'SanYa', '三亚', '2');
INSERT INTO `crm_city` VALUES ('SanXi', 'ShangLuo', '商洛', '10');
INSERT INTO `crm_city` VALUES ('HeNan', 'ShangQiU', '商丘', '14');
INSERT INTO `crm_city` VALUES ('JiangXi', 'ShangRao', '上饶', '11');
INSERT INTO `crm_city` VALUES ('HeiLongJiang', 'ShangYaShan', '双鸭山', '5');
INSERT INTO `crm_city` VALUES ('XiZang', 'ShanNan', '山南', '3');
INSERT INTO `crm_city` VALUES ('GuangDong', 'ShanTou', '汕头', '4');
INSERT INTO `crm_city` VALUES ('GuangDong', 'ShanWei', '汕尾', '13');
INSERT INTO `crm_city` VALUES ('GuangDong', 'ShaoGuan', '韶关', '5');
INSERT INTO `crm_city` VALUES ('ZheJiang', 'ShaoXing', '绍兴', '6');
INSERT INTO `crm_city` VALUES ('HuNan', 'ShaoYang', '邵阳', '5');
INSERT INTO `crm_city` VALUES ('LiaoNing', 'ShenYang', '沈阳', '1');
INSERT INTO `crm_city` VALUES ('GuangDong', 'ShenZhen', '深圳', '2');
INSERT INTO `crm_city` VALUES ('HeBei', 'ShiJiaZhuag', '石家庄', '1');
INSERT INTO `crm_city` VALUES ('HuBei', 'ShiYan', '十堰', '4');
INSERT INTO `crm_city` VALUES ('NingXia', 'ShiZuiShan', '石嘴山', '2');
INSERT INTO `crm_city` VALUES ('JiLin', 'SiPing', '四平', '3');
INSERT INTO `crm_city` VALUES ('JiLin', 'SongYuan', '松原', '7');
INSERT INTO `crm_city` VALUES ('HeiLongJiang', 'SuiHua', '绥化', '12');
INSERT INTO `crm_city` VALUES ('SiChuan', 'SuiNing', '遂宁', '8');
INSERT INTO `crm_city` VALUES ('HuBei', 'SuiZhou', '随州', '12');
INSERT INTO `crm_city` VALUES ('Shanxi', 'SuoZhou', '朔州', '6');
INSERT INTO `crm_city` VALUES ('JiangSu', 'SuQian', '宿迁', '13');
INSERT INTO `crm_city` VALUES ('JiangSu', 'SuZhou', '苏州', '5');
INSERT INTO `crm_city` VALUES ('AnHui', 'SuZhouShi', '宿州', '12');
INSERT INTO `crm_city` VALUES ('XinJiang', 'TaCheng', '塔城', '13');
INSERT INTO `crm_city` VALUES ('ShanDong', 'TaiAn', '泰安', '10');
INSERT INTO `crm_city` VALUES ('TaiWan', 'TaiBei', '台北', '1');
INSERT INTO `crm_city` VALUES ('TaiWan', 'TaiNan', '台南', '5');
INSERT INTO `crm_city` VALUES ('Shanxi', 'TaiYuan', '太原', '1');
INSERT INTO `crm_city` VALUES ('TaiWan', 'TaiZhong', '台中', '4');
INSERT INTO `crm_city` VALUES ('JiangSu', 'TaiZhou', '泰州', '12');
INSERT INTO `crm_city` VALUES ('ZheJiang', 'TaiZhouShi', '台州', '10');
INSERT INTO `crm_city` VALUES ('HeBei', 'TangShan', '唐山', '2');
INSERT INTO `crm_city` VALUES ('GanSu', 'TianShui', '天水', '5');
INSERT INTO `crm_city` VALUES ('LiaoNing', 'TieLing', '铁岭', '12');
INSERT INTO `crm_city` VALUES ('SanXi', 'TongChuan', '铜川', '2');
INSERT INTO `crm_city` VALUES ('JiLin', 'TongHua', '通化', '5');
INSERT INTO `crm_city` VALUES ('NeiMengGu', 'TongLiao', '通辽', '5');
INSERT INTO `crm_city` VALUES ('AnHui', 'TongLing', '铜陵', '7');
INSERT INTO `crm_city` VALUES ('GuiZhou', 'TongRen', '铜仁', '5');
INSERT INTO `crm_city` VALUES ('XinJiang', 'TuLuFan', '吐鲁番', '3');
INSERT INTO `crm_city` VALUES ('ShanDong', 'WeiFang', '潍坊', '7');
INSERT INTO `crm_city` VALUES ('ShanDong', 'WeiHai', '威海', '8');
INSERT INTO `crm_city` VALUES ('SanXi', 'WeiNan', '渭南', '5');
INSERT INTO `crm_city` VALUES ('YunNan', 'WenShan', '文山', '9');
INSERT INTO `crm_city` VALUES ('ZheJiang', 'WenZhou', '温州', '3');
INSERT INTO `crm_city` VALUES ('NeiMengGu', 'WuHai', '乌海', '3');
INSERT INTO `crm_city` VALUES ('HuBei', 'WuHan', '武汉', '1');
INSERT INTO `crm_city` VALUES ('AnHui', 'WuHu', '芜湖', '2');
INSERT INTO `crm_city` VALUES ('NeiMengGu', 'WuLanChaBu', '乌兰察布', '9');
INSERT INTO `crm_city` VALUES ('XinJiang', 'WuLuMuQi', '乌鲁木齐', '1');
INSERT INTO `crm_city` VALUES ('GanSu', 'WuWei', '武威', '6');
INSERT INTO `crm_city` VALUES ('JiangSu', 'WuXi', '无锡', '2');
INSERT INTO `crm_city` VALUES ('NingXia', 'WuZhong', '吴忠', '3');
INSERT INTO `crm_city` VALUES ('GuangXi', 'WuZhou', '梧州', '4');
INSERT INTO `crm_city` VALUES ('FuJian', 'XiaMen', '厦门', '2');
INSERT INTO `crm_city` VALUES ('SanXi', 'XiAn', '西安', '1');
INSERT INTO `crm_city` VALUES ('HuBei', 'XiangFan', '襄樊', '3');
INSERT INTO `crm_city` VALUES ('HuNan', 'XiangTan', '湘潭', '3');
INSERT INTO `crm_city` VALUES ('HuNan', 'XiangXi', '湘西', '14');
INSERT INTO `crm_city` VALUES ('HuBei', 'XianNing', '咸宁', '11');
INSERT INTO `crm_city` VALUES ('SanXi', 'XianYang', '咸阳', '4');
INSERT INTO `crm_city` VALUES ('HuBei', 'XiaoGan', '孝感', '9');
INSERT INTO `crm_city` VALUES ('NeiMengGu', 'XiLinGuoLe', '锡林郭勒', '11');
INSERT INTO `crm_city` VALUES ('NeiMengGu', 'XingAn', '兴安', '10');
INSERT INTO `crm_city` VALUES ('HeBei', 'XingTan', '邢台', '5');
INSERT INTO `crm_city` VALUES ('QingHai', 'XiNing', '西宁', '1');
INSERT INTO `crm_city` VALUES ('HeNan', 'XinXiang', '新乡', '7');
INSERT INTO `crm_city` VALUES ('HeNan', 'XinYang', '信阳', '15');
INSERT INTO `crm_city` VALUES ('JiangXi', 'XinYu', '新余', '5');
INSERT INTO `crm_city` VALUES ('Shanxi', 'XinZhou', '忻州', '9');
INSERT INTO `crm_city` VALUES ('TaiWan', 'XinZhu', '新竹', '6');
INSERT INTO `crm_city` VALUES ('YunNan', 'XiShungBanNa', '西双版纳', '11');
INSERT INTO `crm_city` VALUES ('AnHui', 'XuanCheng', '宣城', '17');
INSERT INTO `crm_city` VALUES ('HeNan', 'XvChang', '许昌', '10');
INSERT INTO `crm_city` VALUES ('JiangSu', 'XvZhou', '徐州', '3');
INSERT INTO `crm_city` VALUES ('SiChuan', 'YaAn', '雅安', '16');
INSERT INTO `crm_city` VALUES ('SanXi', 'YanAn', '延安', '6');
INSERT INTO `crm_city` VALUES ('JiLin', 'YanBian', '延边', '9');
INSERT INTO `crm_city` VALUES ('JiangSu', 'YanCheng', '盐城', '9');
INSERT INTO `crm_city` VALUES ('GuangDong', 'YangJiang', '阳江', '15');
INSERT INTO `crm_city` VALUES ('Shanxi', 'YangQuan', '阳泉', '3');
INSERT INTO `crm_city` VALUES ('JiangSu', 'YangZhou', '扬州', '10');
INSERT INTO `crm_city` VALUES ('ShanDong', 'YanTai', '烟台', '6');
INSERT INTO `crm_city` VALUES ('SiChuan', 'YiBin', '宜宾', '12');
INSERT INTO `crm_city` VALUES ('HuBei', 'YiChang', '宜昌', '6');
INSERT INTO `crm_city` VALUES ('HeiLongJiang', 'YiChun', '伊春', '7');
INSERT INTO `crm_city` VALUES ('JiangXi', 'YiChunShi', '宜春', '9');
INSERT INTO `crm_city` VALUES ('XinJiang', 'YiLiHaSaKe', '伊犁哈萨克', '12');
INSERT INTO `crm_city` VALUES ('NingXia', 'YinChuan', ' 银川', '1');
INSERT INTO `crm_city` VALUES ('LiaoNing', 'YingKou', '营口', '8');
INSERT INTO `crm_city` VALUES ('JiangXi', 'YingTan', '鹰潭', '6');
INSERT INTO `crm_city` VALUES ('HuNan', 'YiYang', '益阳', '9');
INSERT INTO `crm_city` VALUES ('HuNan', 'YongZhou', '永州', '11');
INSERT INTO `crm_city` VALUES ('HuNan', 'YueYang', '岳阳', '6');
INSERT INTO `crm_city` VALUES ('GuangXi', 'YuLin', '玉林', '9');
INSERT INTO `crm_city` VALUES ('SanXi', 'YuLinShi', '榆林', '8');
INSERT INTO `crm_city` VALUES ('Shanxi', 'YunCheng', '运城', '8');
INSERT INTO `crm_city` VALUES ('GuangDong', 'YunFu', '云浮', '21');
INSERT INTO `crm_city` VALUES ('QingHai', 'YuShu', '玉树', '7');
INSERT INTO `crm_city` VALUES ('YunNan', 'YuXi', '玉溪', '3');
INSERT INTO `crm_city` VALUES ('ShanDong', 'ZaoZhuang', '枣庄', '4');
INSERT INTO `crm_city` VALUES ('HuNan', 'ZhangJiaJie', '张家界', '8');
INSERT INTO `crm_city` VALUES ('HeBei', 'ZhangJiaKou', '张家口', '7');
INSERT INTO `crm_city` VALUES ('GanSu', 'ZhangYe', '张掖', '7');
INSERT INTO `crm_city` VALUES ('FuJian', 'ZhangZhou', '漳州', '6');
INSERT INTO `crm_city` VALUES ('GuangDong', 'ZhanJiang', '湛江', '8');
INSERT INTO `crm_city` VALUES ('GuangDong', 'ZhaoQing', '肇庆', '10');
INSERT INTO `crm_city` VALUES ('YunNan', 'ZhaoTong', '昭通', '5');
INSERT INTO `crm_city` VALUES ('HeNan', 'ZhengZhou', '郑州', '1');
INSERT INTO `crm_city` VALUES ('JiangSu', 'ZhenJiang', '镇江', '11');
INSERT INTO `crm_city` VALUES ('GuangDong', 'ZhongShan', '中山', '18');
INSERT INTO `crm_city` VALUES ('NingXia', 'ZhongWei', '中卫', '5');
INSERT INTO `crm_city` VALUES ('HeNan', 'ZhouKou', '周口', '16');
INSERT INTO `crm_city` VALUES ('ZheJiang', 'ZhouShan', '舟山', '9');
INSERT INTO `crm_city` VALUES ('GuangDong', 'ZhuHai', '珠海', '3');
INSERT INTO `crm_city` VALUES ('HeNan', 'ZhuMaDian', '驻马店', '17');
INSERT INTO `crm_city` VALUES ('HuNan', 'ZhuZhou', '株洲', '2');
INSERT INTO `crm_city` VALUES ('ShanDong', 'ZiBo', '淄博', '3');
INSERT INTO `crm_city` VALUES ('SiChuan', 'ZiGong', '自贡', '2');
INSERT INTO `crm_city` VALUES ('SiChuan', 'ZiYang', '资阳', '18');
INSERT INTO `crm_city` VALUES ('GuiZhou', 'ZunYi', '遵义', '3');

-- ----------------------------
-- Table structure for `crm_clue_info`
-- ----------------------------
DROP TABLE IF EXISTS `crm_clue_info`;
CREATE TABLE `crm_clue_info` (
  `CLUE_ID` char(36) NOT NULL,
  `CUST_ID` char(36) DEFAULT NULL,
  `CLUE_LIKEMAN_NAME` varchar(32) DEFAULT NULL,
  `CLUE_CONN_WAY` varchar(256) DEFAULT NULL,
  `CLUE_SOURCE` varchar(32) DEFAULT NULL,
  `CLUE_CREATE_MAN` char(36) DEFAULT NULL,
  `CLUE_CREATE_TIME` varchar(32) DEFAULT NULL,
  `CLUE_STATE` varchar(32) DEFAULT NULL,
  `CLUE_SALESMAN` char(36) DEFAULT NULL,
  `CLUE_GET_TIME` varchar(32) DEFAULT NULL,
  `CLUE_DISPOSE_DEL` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`CLUE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of crm_clue_info
-- ----------------------------
INSERT INTO `crm_clue_info` VALUES ('7208879C-B86A-40A6-89DF-AEB4EA8620CA', '198BFDDD-5E3C-49C5-BE03-380909A1A171', '', '??? ???????', '1', '42832062-C20C-4AD3-8D3A-C93B1942D652', '2022-07-05 16:32', '0', null, null, null);
INSERT INTO `crm_clue_info` VALUES ('7386EF10-97A4-48D0-97AD-831807B49EF5', '248881C2-4B31-4FB2-B957-88FF19676D71', '', '邮箱： 其他联系方式：QQ邮箱微信', '0', '439D83A6-148E-483E-BF6C-9EF131C27ACF', '2015-05-29 13:48', '2', '542798C0-9D66-4DF2-B5B1-70D9323B954F', '2015-05-29 13:50', null);
INSERT INTO `crm_clue_info` VALUES ('933A3A96-C72B-47FF-A6BA-D1FAE2156EA0', 'C2AB7651-03E3-48E3-B41A-8EB0A41D4635', '', '??? ???????', '0', '4A9233B6-0092-4575-8932-2BC8521C0705', '2022-07-05 16:31', '0', null, null, null);
INSERT INTO `crm_clue_info` VALUES ('9CA3A485-11EA-4064-8D3E-FF2E24BC82B0', 'BA1218B6-19E6-4342-AF70-2B162CB7BAF1', '', '??? ???????', '0', '42832062-C20C-4AD3-8D3A-C93B1942D652', '2022-07-05 16:33', '2', '6B6AF5B1-CC57-42B1-AB9C-1711D6A5C50A', '2022-07-07 19:01', null);
INSERT INTO `crm_clue_info` VALUES ('C424F885-B482-4B96-BC9D-07CA2672171E', '2F645C1A-96C2-42DD-BFAA-FF5C449A4551', 'renzhengfei', '???renzhengfei@huawei.com ???????12345678911', '0', '42832062-C20C-4AD3-8D3A-C93B1942D652', '2022-07-05 14:55', '0', null, null, null);
INSERT INTO `crm_clue_info` VALUES ('F3A816AA-6950-46B4-807E-8F4C61DF9754', '352349E7-6453-499D-BC3F-2A35BBA8ED05', 'renzhengfei', '???renzhengfei@huawei.com ???????12345678911', '1', '4A9233B6-0092-4575-8932-2BC8521C0705', '2022-07-05 14:05', '2', '6B6AF5B1-CC57-42B1-AB9C-1711D6A5C50A', '2022-07-05 14:07', null);

-- ----------------------------
-- Table structure for `crm_contact_person`
-- ----------------------------
DROP TABLE IF EXISTS `crm_contact_person`;
CREATE TABLE `crm_contact_person` (
  `CONT_ID` char(36) NOT NULL,
  `CUST_ID` char(36) DEFAULT NULL,
  `CONT_JOB` varchar(32) DEFAULT NULL,
  `CONT_NAME` varchar(32) DEFAULT NULL,
  `CONT_SEX` varchar(32) DEFAULT NULL,
  `CONT_PHONE` varchar(32) DEFAULT NULL,
  `CONT_EMAIL` varchar(32) DEFAULT NULL,
  `CONT_OTHER` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`CONT_ID`),
  KEY `FK_Reference_3` (`CUST_ID`),
  CONSTRAINT `FK_Reference_3` FOREIGN KEY (`CUST_ID`) REFERENCES `crm_customer_info` (`CUST_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of crm_contact_person
-- ----------------------------
INSERT INTO `crm_contact_person` VALUES ('A30565FB-8A59-4089-ABE6-301F42930F97', '248881C2-4B31-4FB2-B957-88FF19676D71', '', '测试联系人', 'M', '', '', '');

-- ----------------------------
-- Table structure for `crm_customer_group`
-- ----------------------------
DROP TABLE IF EXISTS `crm_customer_group`;
CREATE TABLE `crm_customer_group` (
  `GRP_ID` char(36) NOT NULL,
  `GRP_SUP_ID` char(36) DEFAULT NULL,
  `GRP_CODE` varchar(32) DEFAULT NULL,
  `GRP_NAME` varchar(32) DEFAULT NULL,
  `GRP_SORT` int(11) DEFAULT NULL,
  `GRP_STATE` varchar(32) DEFAULT NULL,
  `GRP_DESC` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`GRP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of crm_customer_group
-- ----------------------------
INSERT INTO `crm_customer_group` VALUES ('00000000-0000-0000-00000000000000000', '', 'Root', '组织名称', '0', '1', '');
INSERT INTO `crm_customer_group` VALUES ('2FCAAFDE-E2E8-41C2-9C1A-18248650F761', '00000000-0000-0000-00000000000000000', 'Government', '政务相关', '18', null, null);
INSERT INTO `crm_customer_group` VALUES ('338805DC-4095-4E00-B6DC-181F573D9090', '00000000-0000-0000-00000000000000000', 'HotelStores', '酒店卖场', '9', null, null);
INSERT INTO `crm_customer_group` VALUES ('5636C0A6-265D-4C25-A6C7-515A53577800', '00000000-0000-0000-00000000000000000', 'RetailIndustry', '零售行业', '10', null, null);
INSERT INTO `crm_customer_group` VALUES ('597E8622-944A-44A7-BE5A-28E95F7834D6', '00000000-0000-0000-00000000000000000', 'TEMP', '临时分组', '5', null, null);
INSERT INTO `crm_customer_group` VALUES ('6EDF0BBE-7CCC-4423-9E68-4AD0A47C9B36', '00000000-0000-0000-00000000000000000', 'Heavymanufacturing', '制造重工', '19', null, null);
INSERT INTO `crm_customer_group` VALUES ('7BE8ED1C-784F-42BA-8C98-18D0741C4782', '00000000-0000-0000-00000000000000000', 'BankTelecom', '银行电信', '17', null, null);
INSERT INTO `crm_customer_group` VALUES ('877A3C17-603A-4D2B-A9DC-2EEC82BEDB9A', '00000000-0000-0000-00000000000000000', 'RelatedCase', '相关案例', '13', null, null);
INSERT INTO `crm_customer_group` VALUES ('932E1980-8078-4C15-95A7-9C8E5F3D5CB6', '00000000-0000-0000-00000000000000000', 'Otherindustries', '其它行业', '12', null, null);
INSERT INTO `crm_customer_group` VALUES ('9AA7658E-31E5-42BB-860D-6B4EF70814CF', '00000000-0000-0000-00000000000000000', 'Pharmaceuticalindustry', '医药行业', '16', null, null);
INSERT INTO `crm_customer_group` VALUES ('BDB7F8CB-761D-47A6-A8B1-96222DA734C9', '00000000-0000-0000-00000000000000000', 'Transportation', '交通运输', '7', null, null);
INSERT INTO `crm_customer_group` VALUES ('D2133B90-3532-480C-9BC9-A9B9842C7375', '00000000-0000-0000-00000000000000000', 'EducationCampus', '教育校园', '8', null, null);
INSERT INTO `crm_customer_group` VALUES ('E18B9133-A846-4B38-A911-2C710BFADCD3', '00000000-0000-0000-00000000000000000', 'ConstructionProperty', '建筑地产', '6', null, null);
INSERT INTO `crm_customer_group` VALUES ('EFAE7889-AA26-48EC-A9FB-37C4FC10C88C', '00000000-0000-0000-00000000000000000', 'Healthcare', '医疗卫生', '15', null, null);
INSERT INTO `crm_customer_group` VALUES ('F3CEA72B-398A-42D2-A1D1-545867D768EF', '00000000-0000-0000-00000000000000000', 'CoalEnergy', '煤炭能源', '11', null, null);
INSERT INTO `crm_customer_group` VALUES ('FB30368E-E04C-4420-968C-F7E0A3A946B5', '00000000-0000-0000-00000000000000000', 'TobaccoIndustry', '烟草行业', '14', null, null);

-- ----------------------------
-- Table structure for `crm_customer_grp_rel`
-- ----------------------------
DROP TABLE IF EXISTS `crm_customer_grp_rel`;
CREATE TABLE `crm_customer_grp_rel` (
  `GRP_ID` char(36) NOT NULL,
  `CUST_ID` char(36) NOT NULL,
  PRIMARY KEY (`GRP_ID`,`CUST_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of crm_customer_grp_rel
-- ----------------------------
INSERT INTO `crm_customer_grp_rel` VALUES ('00000000-0000-0000-00000000000000000', '36A58A7C-95C3-4A53-83D5-1202D95489A6');
INSERT INTO `crm_customer_grp_rel` VALUES ('597E8622-944A-44A7-BE5A-28E95F7834D6', '06781DD0-783A-4418-A194-7455127EEE13');
INSERT INTO `crm_customer_grp_rel` VALUES ('597E8622-944A-44A7-BE5A-28E95F7834D6', '097F7F1C-EE13-4154-96B8-DEFA7E7A6850');
INSERT INTO `crm_customer_grp_rel` VALUES ('597E8622-944A-44A7-BE5A-28E95F7834D6', '0DE950F5-9A93-40B0-9783-04833701BDCA');
INSERT INTO `crm_customer_grp_rel` VALUES ('597E8622-944A-44A7-BE5A-28E95F7834D6', '198BFDDD-5E3C-49C5-BE03-380909A1A171');
INSERT INTO `crm_customer_grp_rel` VALUES ('597E8622-944A-44A7-BE5A-28E95F7834D6', '2F645C1A-96C2-42DD-BFAA-FF5C449A4551');
INSERT INTO `crm_customer_grp_rel` VALUES ('597E8622-944A-44A7-BE5A-28E95F7834D6', '30C71012-C10A-4F96-89EF-81D8E378FDF6');
INSERT INTO `crm_customer_grp_rel` VALUES ('597E8622-944A-44A7-BE5A-28E95F7834D6', '352349E7-6453-499D-BC3F-2A35BBA8ED05');
INSERT INTO `crm_customer_grp_rel` VALUES ('597E8622-944A-44A7-BE5A-28E95F7834D6', '36AAB050-1391-4A3D-A6BD-66B9F70F2B7E');
INSERT INTO `crm_customer_grp_rel` VALUES ('597E8622-944A-44A7-BE5A-28E95F7834D6', '36C3001A-E69D-4641-838F-8DF0AEB367AB');
INSERT INTO `crm_customer_grp_rel` VALUES ('597E8622-944A-44A7-BE5A-28E95F7834D6', '5AF4C62D-8139-4B44-B6A7-F0C504A517C8');
INSERT INTO `crm_customer_grp_rel` VALUES ('597E8622-944A-44A7-BE5A-28E95F7834D6', '6412E06D-C989-440A-ADDD-616A3EEB78C5');
INSERT INTO `crm_customer_grp_rel` VALUES ('597E8622-944A-44A7-BE5A-28E95F7834D6', '81CBC064-32BB-4896-BD44-F9A27E7CB8A9');
INSERT INTO `crm_customer_grp_rel` VALUES ('597E8622-944A-44A7-BE5A-28E95F7834D6', 'AD0C4E5E-8D82-4AC5-B390-946CE6D14676');
INSERT INTO `crm_customer_grp_rel` VALUES ('597E8622-944A-44A7-BE5A-28E95F7834D6', 'B1B29AD7-0724-47A1-BC17-E0D0903160FD');
INSERT INTO `crm_customer_grp_rel` VALUES ('597E8622-944A-44A7-BE5A-28E95F7834D6', 'BA1218B6-19E6-4342-AF70-2B162CB7BAF1');
INSERT INTO `crm_customer_grp_rel` VALUES ('597E8622-944A-44A7-BE5A-28E95F7834D6', 'BADAFCAE-892B-4920-BAAF-FA96EC234E52');
INSERT INTO `crm_customer_grp_rel` VALUES ('597E8622-944A-44A7-BE5A-28E95F7834D6', 'C2AB7651-03E3-48E3-B41A-8EB0A41D4635');
INSERT INTO `crm_customer_grp_rel` VALUES ('597E8622-944A-44A7-BE5A-28E95F7834D6', 'DB1EF4CE-7C27-475D-8EF7-353EF53A3DC1');
INSERT INTO `crm_customer_grp_rel` VALUES ('597E8622-944A-44A7-BE5A-28E95F7834D6', 'F70868B3-9682-4AD9-9139-CEE431966973');
INSERT INTO `crm_customer_grp_rel` VALUES ('597E8622-944A-44A7-BE5A-28E95F7834D6', 'FC00A863-62A0-461B-9B8F-264C39BD46A5');
INSERT INTO `crm_customer_grp_rel` VALUES ('932E1980-8078-4C15-95A7-9C8E5F3D5CB6', '36AAB050-1391-4A3D-A6BD-66B9F70F2B7E');
INSERT INTO `crm_customer_grp_rel` VALUES ('BDB7F8CB-761D-47A6-A8B1-96222DA734C9', '2F645C1A-96C2-42DD-BFAA-FF5C449A4551');
INSERT INTO `crm_customer_grp_rel` VALUES ('D2133B90-3532-480C-9BC9-A9B9842C7375', '2F645C1A-96C2-42DD-BFAA-FF5C449A4551');
INSERT INTO `crm_customer_grp_rel` VALUES ('D2133B90-3532-480C-9BC9-A9B9842C7375', '46881371-56C0-41C8-A27F-D4834DFED796');
INSERT INTO `crm_customer_grp_rel` VALUES ('E18B9133-A846-4B38-A911-2C710BFADCD3', '248881C2-4B31-4FB2-B957-88FF19676D71');

-- ----------------------------
-- Table structure for `crm_customer_info`
-- ----------------------------
DROP TABLE IF EXISTS `crm_customer_info`;
CREATE TABLE `crm_customer_info` (
  `CUST_ID` char(36) NOT NULL,
  `CUST_NAME` varchar(32) DEFAULT NULL,
  `CUST_INDUSTRY` varchar(32) DEFAULT NULL,
  `CUST_PROVINCE` varchar(32) DEFAULT NULL,
  `CUST_CITY` varchar(32) DEFAULT NULL,
  `CUST_ADDRESS` varchar(128) DEFAULT NULL,
  `CUST_SCALE` varchar(32) DEFAULT NULL,
  `CUST_NATURE` varchar(32) DEFAULT NULL,
  `CUST_INTRODUCE` varchar(256) DEFAULT NULL,
  `CUST_STATE` varchar(32) DEFAULT NULL,
  `CUST_CREATE_ID` char(36) DEFAULT NULL,
  `CUST_CREATE_TIME` datetime DEFAULT NULL,
  `CUST_SUBMIT_ID` char(36) DEFAULT NULL,
  `CUST_SUBMIT_TIME` datetime DEFAULT NULL,
  `CUST_CONFIRM_ID` char(36) DEFAULT NULL,
  `CUST_CONFIRM_TIME` datetime DEFAULT NULL,
  `CUST_COMPANY_WEB` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`CUST_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of crm_customer_info
-- ----------------------------
INSERT INTO `crm_customer_info` VALUES ('198BFDDD-5E3C-49C5-BE03-380909A1A171', 'xiaohei', null, null, null, null, null, null, 'xqasdfqw', 'init', '42832062-C20C-4AD3-8D3A-C93B1942D652', '2022-07-05 16:32:00', null, null, null, null, null);
INSERT INTO `crm_customer_info` VALUES ('248881C2-4B31-4FB2-B957-88FF19676D71', '孙小三的组织客户', '', '', null, '', '', '', '', 'init', '439D83A6-148E-483E-BF6C-9EF131C27ACF', '2015-05-29 13:48:00', '542798C0-9D66-4DF2-B5B1-70D9323B954F', '2015-05-29 13:50:00', '439D83A6-148E-483E-BF6C-9EF131C27ACF', '2015-05-29 13:48:00', null);
INSERT INTO `crm_customer_info` VALUES ('2F645C1A-96C2-42DD-BFAA-FF5C449A4551', 'huawei', null, null, null, null, null, null, 'huawei666', 'Confirm', '42832062-C20C-4AD3-8D3A-C93B1942D652', '2022-07-05 14:55:00', '6B6AF5B1-CC57-42B1-AB9C-1711D6A5C50A', '2022-07-05 14:59:00', '42832062-C20C-4AD3-8D3A-C93B1942D652', '2022-07-05 15:02:00', null);
INSERT INTO `crm_customer_info` VALUES ('352349E7-6453-499D-BC3F-2A35BBA8ED05', 'huawei', null, null, null, null, null, null, 'huawei666', 'init', '4A9233B6-0092-4575-8932-2BC8521C0705', '2022-07-05 14:05:00', null, null, null, null, null);
INSERT INTO `crm_customer_info` VALUES ('36C3001A-E69D-4641-838F-8DF0AEB367AB', 'oppo', '0', '', null, '', '', '', '', 'Confirm', '6B6AF5B1-CC57-42B1-AB9C-1711D6A5C50A', '2022-07-05 15:05:00', '42832062-C20C-4AD3-8D3A-C93B1942D652', '2022-07-05 15:06:00', '42832062-C20C-4AD3-8D3A-C93B1942D652', '2022-07-05 15:06:00', null);
INSERT INTO `crm_customer_info` VALUES ('46881371-56C0-41C8-A27F-D4834DFED796', 'xiaomi', '0', '', null, '', '', '', '', 'Confirm', '6B6AF5B1-CC57-42B1-AB9C-1711D6A5C50A', '2022-07-05 15:01:00', '6B6AF5B1-CC57-42B1-AB9C-1711D6A5C50A', '2022-07-05 15:02:00', '42832062-C20C-4AD3-8D3A-C93B1942D652', '2022-07-05 15:03:00', null);
INSERT INTO `crm_customer_info` VALUES ('B1B29AD7-0724-47A1-BC17-E0D0903160FD', 'xiaohei', null, null, null, null, null, null, 'sdfvwefwe', 'init', '42832062-C20C-4AD3-8D3A-C93B1942D652', '2022-07-05 16:39:00', null, null, null, null, null);
INSERT INTO `crm_customer_info` VALUES ('BA1218B6-19E6-4342-AF70-2B162CB7BAF1', 'xiaohei', null, null, null, null, null, null, 'asdqwd', 'init', '42832062-C20C-4AD3-8D3A-C93B1942D652', '2022-07-05 16:33:00', null, null, null, null, null);
INSERT INTO `crm_customer_info` VALUES ('C2AB7651-03E3-48E3-B41A-8EB0A41D4635', 'xiaohei', null, null, null, null, null, null, 'asefdef', 'init', '4A9233B6-0092-4575-8932-2BC8521C0705', '2022-07-05 16:31:00', null, null, null, null, null);

-- ----------------------------
-- Table structure for `crm_customer_sales_rel`
-- ----------------------------
DROP TABLE IF EXISTS `crm_customer_sales_rel`;
CREATE TABLE `crm_customer_sales_rel` (
  `CUST_ID` char(36) DEFAULT NULL,
  `USER_ID` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of crm_customer_sales_rel
-- ----------------------------
INSERT INTO `crm_customer_sales_rel` VALUES ('248881C2-4B31-4FB2-B957-88FF19676D71', '542798C0-9D66-4DF2-B5B1-70D9323B954F');
INSERT INTO `crm_customer_sales_rel` VALUES ('2F645C1A-96C2-42DD-BFAA-FF5C449A4551', '6B6AF5B1-CC57-42B1-AB9C-1711D6A5C50A');
INSERT INTO `crm_customer_sales_rel` VALUES ('36C3001A-E69D-4641-838F-8DF0AEB367AB', '6B6AF5B1-CC57-42B1-AB9C-1711D6A5C50A');
INSERT INTO `crm_customer_sales_rel` VALUES ('198BFDDD-5E3C-49C5-BE03-380909A1A171', '6B6AF5B1-CC57-42B1-AB9C-1711D6A5C50A');

-- ----------------------------
-- Table structure for `crm_opp_info`
-- ----------------------------
DROP TABLE IF EXISTS `crm_opp_info`;
CREATE TABLE `crm_opp_info` (
  `OPP_ID` char(36) NOT NULL,
  `OPP_NAME` varchar(32) DEFAULT NULL,
  `CLUE_ID` char(36) DEFAULT NULL,
  `CUST_ID` char(36) DEFAULT NULL,
  `CONT_ID` char(36) DEFAULT NULL,
  `OPP_DES` varchar(256) DEFAULT NULL,
  `OPP_CONCERN_PRODUCT` varchar(32) DEFAULT NULL,
  `OPP_EXPECT_INVEST` decimal(10,2) DEFAULT NULL,
  `OPP_START_TIME` varchar(32) DEFAULT NULL,
  `OPP_STATE` varchar(32) DEFAULT NULL,
  `CLUE_SALESMAN` char(36) DEFAULT NULL,
  `OPP_CREATER` char(36) DEFAULT NULL,
  `OPP_CREATE_TIME` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`OPP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of crm_opp_info
-- ----------------------------
INSERT INTO `crm_opp_info` VALUES ('57E3AA39-2710-49CF-AA08-95B2E305A31A', '孙小三的商机客户', 'D0BA17D9-6ED0-45F7-A113-878F4C290547', '248881C2-4B31-4FB2-B957-88FF19676D71', '', '', null, null, null, '2', '542798C0-9D66-4DF2-B5B1-70D9323B954F', '542798C0-9D66-4DF2-B5B1-70D9323B954F', '2015-05-29 13:50');
INSERT INTO `crm_opp_info` VALUES ('97CD537B-41F3-43D7-A6E7-694E18C530A0', 'dahei', '64557914-EC30-44DD-955D-5C0DD2DF98B1', '352349E7-6453-499D-BC3F-2A35BBA8ED05', '', '', null, null, null, '2', '6B6AF5B1-CC57-42B1-AB9C-1711D6A5C50A', '6B6AF5B1-CC57-42B1-AB9C-1711D6A5C50A', '2022-07-05 17:05');
INSERT INTO `crm_opp_info` VALUES ('A46F781F-9384-42DD-9AB9-0C6518D1472A', 'wef q', '5191B01A-FC2C-4BDB-AB65-FA5F6D01CDC7', 'BA1218B6-19E6-4342-AF70-2B162CB7BAF1', '', 'dqwd', null, null, null, '1', '6B6AF5B1-CC57-42B1-AB9C-1711D6A5C50A', '6B6AF5B1-CC57-42B1-AB9C-1711D6A5C50A', '2022-07-07 19:01');
INSERT INTO `crm_opp_info` VALUES ('E241ED2F-9287-44E4-9B56-A345F04E9922', 'huawei', '2F55EB51-5152-4D0A-9A10-08E7AD2B6131', '352349E7-6453-499D-BC3F-2A35BBA8ED05', '', 'shouji', null, null, null, '2', '6B6AF5B1-CC57-42B1-AB9C-1711D6A5C50A', '6B6AF5B1-CC57-42B1-AB9C-1711D6A5C50A', '2022-07-05 14:23');

-- ----------------------------
-- Table structure for `crm_order_entry`
-- ----------------------------
DROP TABLE IF EXISTS `crm_order_entry`;
CREATE TABLE `crm_order_entry` (
  `ENTRY_ID` char(36) NOT NULL,
  `ORDER_ID` char(36) DEFAULT NULL,
  `ENTRY_ORDER_PRODUCT` varchar(32) DEFAULT NULL,
  `ENTRY_PRODUCT_MODEL` varchar(32) DEFAULT NULL,
  `ENTRY_NUMBER` decimal(6,0) DEFAULT NULL,
  `ENTRY_UNIT_PRICE` decimal(10,2) DEFAULT NULL,
  `ENTRY_DISCOUNT` decimal(3,2) DEFAULT NULL,
  `ENTRY_REAL_PRICE` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`ENTRY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of crm_order_entry
-- ----------------------------
INSERT INTO `crm_order_entry` VALUES ('39D634DD-3CB7-417D-A378-07A216AFF187', '3DC112E6-0C55-4165-AD24-827D1EE0327B', 'qw3', 'qwdq', '214235', '12.00', '1.00', '2570820.00');
INSERT INTO `crm_order_entry` VALUES ('594656F6-06B7-4A0C-8C64-35207962336B', '3DC112E6-0C55-4165-AD24-827D1EE0327B', '2re', '24415', '124512', '24.00', '1.00', '2988288.00');
INSERT INTO `crm_order_entry` VALUES ('BA0E30E4-668B-49CC-BEB0-12EE42D4B468', 'C5D41446-B358-4FC3-AE04-77097E150DE3', '测试产品', '测试型号', '1', '10000.00', '1.00', '10000.00');

-- ----------------------------
-- Table structure for `crm_order_info`
-- ----------------------------
DROP TABLE IF EXISTS `crm_order_info`;
CREATE TABLE `crm_order_info` (
  `ORDER_ID` char(36) NOT NULL,
  `OPP_ID` char(36) DEFAULT NULL,
  `ORDER_CHIEF` varchar(32) DEFAULT NULL,
  `ORDER_DELIVERY_COST` decimal(10,2) DEFAULT NULL,
  `ORDER_COST` decimal(10,2) DEFAULT NULL,
  `ORDER_DES` varchar(200) DEFAULT NULL,
  `ORDER_STATE` varchar(32) DEFAULT NULL,
  `ORDER_CREATER` char(36) DEFAULT NULL,
  `ORDER_CREATE_TIME` varchar(32) DEFAULT NULL,
  `ORDER_CONFIRM_PERSON` char(36) DEFAULT NULL,
  `ORDER_CONFIRM_TIME` varchar(32) DEFAULT NULL,
  `CLUE_SALESMAN` char(36) DEFAULT NULL,
  PRIMARY KEY (`ORDER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of crm_order_info
-- ----------------------------
INSERT INTO `crm_order_info` VALUES ('3DC112E6-0C55-4165-AD24-827D1EE0327B', '97CD537B-41F3-43D7-A6E7-694E18C530A0', 'testxs', null, '5559108.00', 'eojfowef', '1', '6B6AF5B1-CC57-42B1-AB9C-1711D6A5C50A', '2022-07-05 18:35', '42832062-C20C-4AD3-8D3A-C93B1942D652', '2022-07-05 18:36', '6B6AF5B1-CC57-42B1-AB9C-1711D6A5C50A');
INSERT INTO `crm_order_info` VALUES ('C2478687-83D9-481D-A2E0-5C150052A507', '97CD537B-41F3-43D7-A6E7-694E18C530A0', 'wqrq', null, null, 'qefrq', '0', '6B6AF5B1-CC57-42B1-AB9C-1711D6A5C50A', '2022-07-07 19:12', null, null, '6B6AF5B1-CC57-42B1-AB9C-1711D6A5C50A');
INSERT INTO `crm_order_info` VALUES ('C5D41446-B358-4FC3-AE04-77097E150DE3', '57E3AA39-2710-49CF-AA08-95B2E305A31A', '孙小小', '1000.00', '11000.00', '孙小三的测试订单', '1', '542798C0-9D66-4DF2-B5B1-70D9323B954F', '2015-05-29 13:51', '439D83A6-148E-483E-BF6C-9EF131C27ACF', '2015-05-29 13:53', '542798C0-9D66-4DF2-B5B1-70D9323B954F');

-- ----------------------------
-- Table structure for `crm_org_info`
-- ----------------------------
DROP TABLE IF EXISTS `crm_org_info`;
CREATE TABLE `crm_org_info` (
  `ORG_ID` char(36) NOT NULL,
  `ORG_NAME` varchar(32) DEFAULT NULL,
  `ORG_TYPE` varchar(32) DEFAULT NULL,
  `ORG_INTRODUCTION` varchar(256) DEFAULT NULL,
  `ORG_LINKMAN_NAME` varchar(32) DEFAULT NULL,
  `ORG_EMAIL` varchar(32) DEFAULT NULL,
  `ORG_CONTACT_WAY` varchar(256) DEFAULT NULL,
  `ORG_STATE` varchar(32) DEFAULT NULL,
  `ORG_LABELS` varchar(32) DEFAULT NULL,
  `ORG_ADDRESS` varchar(256) DEFAULT NULL,
  `ORG_WEBSITE` varchar(128) DEFAULT NULL,
  `ORG_CREATER` char(36) DEFAULT NULL,
  `ORG_CREATE_TIME` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`ORG_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of crm_org_info
-- ----------------------------
INSERT INTO `crm_org_info` VALUES ('B15FA222-8201-44E5-9DB9-019EF6BA063E', '孙小三的组织客户', '', '', '', '', 'QQ邮箱微信', '0', '', '', '', '439D83A6-148E-483E-BF6C-9EF131C27ACF', '2015-05-29 13:47');
INSERT INTO `crm_org_info` VALUES ('D308621F-EA32-4537-9658-03B7B53B4065', 'xiaohei', '0', '', '', '', '', '0', '', '', '', '3FD2A1E0-E0F1-4BB5-9FFD-8A2921E6D6FA', '2022-07-05 16:30');
INSERT INTO `crm_org_info` VALUES ('EE2A09F3-9A7C-4FC7-8834-2983156045E8', 'huawei', '10', 'huawei666', 'renzhengfei', 'renzhengfei@huawei.com', '12345678911', '0', 'maishouji', 'm78', 'www.huawei.com', '3FD2A1E0-E0F1-4BB5-9FFD-8A2921E6D6FA', '2022-07-05 14:02');

-- ----------------------------
-- Table structure for `crm_per_info`
-- ----------------------------
DROP TABLE IF EXISTS `crm_per_info`;
CREATE TABLE `crm_per_info` (
  `PER_ID` char(36) NOT NULL,
  `PER_NAME` varchar(32) DEFAULT NULL,
  `PER_SEX` varchar(10) DEFAULT NULL,
  `PER_EMAIL` varchar(32) DEFAULT NULL,
  `PER_CONTACT_WAY` varchar(256) DEFAULT NULL,
  `PER_STATE` varchar(32) DEFAULT NULL,
  `PER_LABELS` varchar(32) DEFAULT NULL,
  `PER_BELONG_ORG` varchar(32) DEFAULT NULL,
  `PER_CREATER` char(36) DEFAULT NULL,
  `PER_CREATE_TIME` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`PER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of crm_per_info
-- ----------------------------
INSERT INTO `crm_per_info` VALUES ('4295FF51-7772-4FCB-8BDA-04FFA638C3F1', '孙小三的潜在客户', 'UNKONW', '', 'QQ邮箱微信', '0', '', '', '439D83A6-148E-483E-BF6C-9EF131C27ACF', '2015-05-29 13:47');

-- ----------------------------
-- Table structure for `crm_visit`
-- ----------------------------
DROP TABLE IF EXISTS `crm_visit`;
CREATE TABLE `crm_visit` (
  `VISIT_ID` char(36) NOT NULL,
  `VISIT_TYPE` varchar(32) DEFAULT NULL,
  `VISIT_CUST_ID` char(36) DEFAULT NULL,
  `VISIT_RECEPTION_NAME` varchar(32) DEFAULT NULL,
  `VISIT_RECEPTION_SEX` varchar(32) DEFAULT NULL,
  `VISIT_RECEPTION_JOB` varchar(32) DEFAULT NULL,
  `VISIT_RECEPTION_PHONE` varchar(32) DEFAULT NULL,
  `VISIT_USER_ID` char(36) DEFAULT NULL,
  `VISIT_PEER_NAME` varchar(32) DEFAULT NULL,
  `VISIT_DATE` date DEFAULT NULL,
  `VISIT_CONTENT` varchar(256) DEFAULT NULL,
  `VISIT_CUST_FOCUS` varchar(32) DEFAULT NULL,
  `VISIT_EFFECT` varchar(32) DEFAULT NULL,
  `VISIT_IMPROVEMENT` varchar(32) DEFAULT NULL,
  `VISIT_COST` decimal(10,2) DEFAULT NULL,
  `VISIT_COST_EXPLAIN` varchar(256) DEFAULT NULL,
  `VISIT_STATE` varchar(32) DEFAULT NULL,
  `VISIT_FILL_ID` char(36) DEFAULT NULL,
  `VISIT_FILL_TIME` datetime DEFAULT NULL,
  `VISIT_CONFIRM_ID` char(36) DEFAULT NULL,
  `VISIT_CONFIRM_TIME` datetime DEFAULT NULL,
  PRIMARY KEY (`VISIT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of crm_visit
-- ----------------------------
INSERT INTO `crm_visit` VALUES ('00853145-9D68-41DD-9A7E-09990295FDA7', '0', '2F645C1A-96C2-42DD-BFAA-FF5C449A4551', 'jsofpe', 'F', '', '', '6B6AF5B1-CC57-42B1-AB9C-1711D6A5C50A', '', '2022-07-05', '', '', '', '', '999999.00', 'qwdfwqfdqw', 'Confirm', '6B6AF5B1-CC57-42B1-AB9C-1711D6A5C50A', '2022-07-05 15:04:00', '42832062-C20C-4AD3-8D3A-C93B1942D652', '2022-07-05 18:39:00');
INSERT INTO `crm_visit` VALUES ('0A59E359-7BE0-4412-98C6-A751EE914D4F', '3', '198BFDDD-5E3C-49C5-BE03-380909A1A171', 'regfq', 'M', '', '', '6B6AF5B1-CC57-42B1-AB9C-1711D6A5C50A', '', '2022-07-05', '', '', '', '', '0.00', '', 'Confirm', '6B6AF5B1-CC57-42B1-AB9C-1711D6A5C50A', '2022-07-05 18:38:00', '42832062-C20C-4AD3-8D3A-C93B1942D652', '2022-07-05 18:39:00');
INSERT INTO `crm_visit` VALUES ('E3C0C89D-7798-4082-8465-6AC6C926D7BA', '1', '36C3001A-E69D-4641-838F-8DF0AEB367AB', 'wfqe', 'F', '', '', '6B6AF5B1-CC57-42B1-AB9C-1711D6A5C50A', '', '2022-07-05', '', '', '', '', '999999.00', ' qf qf ', 'Confirm', '6B6AF5B1-CC57-42B1-AB9C-1711D6A5C50A', '2022-07-05 15:09:00', '42832062-C20C-4AD3-8D3A-C93B1942D652', '2022-07-05 18:38:00');

-- ----------------------------
-- Table structure for `security_group`
-- ----------------------------
DROP TABLE IF EXISTS `security_group`;
CREATE TABLE `security_group` (
  `GRP_ID` varchar(36) NOT NULL,
  `GRP_CODE` varchar(32) DEFAULT NULL,
  `GRP_NAME` varchar(32) DEFAULT NULL,
  `GRP_PID` varchar(36) DEFAULT NULL,
  `GRP_DESC` varchar(128) DEFAULT NULL,
  `GRP_STATE` varchar(1) DEFAULT NULL,
  `GRP_SORT` int(11) DEFAULT NULL,
  PRIMARY KEY (`GRP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of security_group
-- ----------------------------
INSERT INTO `security_group` VALUES ('00000000-0000-0000-00000000000000000', 'Root', '公司集团', null, null, '1', '0');
INSERT INTO `security_group` VALUES ('0BE47DDB-862E-45F3-8E43-0A4990847D8B', 'ITT', 'IT部', '00000000-0000-0000-00000000000000000', '', '1', '3');
INSERT INTO `security_group` VALUES ('B6F11BD3-DE55-4F14-A400-540B9E4F45F3', 'IT', '信息部', '00000000-0000-0000-00000000000000000', '', '1', '2');

-- ----------------------------
-- Table structure for `security_group_auth`
-- ----------------------------
DROP TABLE IF EXISTS `security_group_auth`;
CREATE TABLE `security_group_auth` (
  `GRP_AUTH_ID` varchar(36) NOT NULL,
  `GRP_ID` varchar(36) DEFAULT NULL,
  `RES_TYPE` varchar(32) DEFAULT NULL,
  `RES_ID` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`GRP_AUTH_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of security_group_auth
-- ----------------------------
INSERT INTO `security_group_auth` VALUES ('4C20EDAC-0A0B-45BB-8B71-B557A94E7429', 'B6F11BD3-DE55-4F14-A400-540B9E4F45F3', 'Navigater', '02');

-- ----------------------------
-- Table structure for `security_role`
-- ----------------------------
DROP TABLE IF EXISTS `security_role`;
CREATE TABLE `security_role` (
  `ROLE_ID` varchar(36) NOT NULL,
  `ROLE_CODE` varchar(32) DEFAULT NULL,
  `ROLE_NAME` varchar(32) DEFAULT NULL,
  `ROLE_PID` varchar(36) DEFAULT NULL,
  `ROLE_DESC` varchar(128) DEFAULT NULL,
  `ROLE_STATE` varchar(32) DEFAULT NULL,
  `ROLE_SORT` int(11) DEFAULT NULL,
  PRIMARY KEY (`ROLE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of security_role
-- ----------------------------
INSERT INTO `security_role` VALUES ('00000000-0000-0000-00000000000000000', 'System', '系统角色', null, null, '1', null);
INSERT INTO `security_role` VALUES ('0A6C302D-8531-4C7D-AF38-B7B653CBA668', 'TEL_NET_SALESMAN', '电销网销', '00000000-0000-0000-00000000000000000', '', '1', '5');
INSERT INTO `security_role` VALUES ('6A79C287-E013-4A92-AAB2-B926F38144BB', 'INFO_COLLECTOR', '信息采集', '00000000-0000-0000-00000000000000000', '', '1', '4');
INSERT INTO `security_role` VALUES ('8AAF1DCF-114D-49D4-B691-A46F77288AF0', 'SALESMAN', '销售人员', '00000000-0000-0000-00000000000000000', '', '1', '6');
INSERT INTO `security_role` VALUES ('DDA88E11-231C-43EC-9657-7AA55D842407', 'SALES_DIRECTOR', '销售总监', '00000000-0000-0000-00000000000000000', '', '1', '7');

-- ----------------------------
-- Table structure for `security_role_auth`
-- ----------------------------
DROP TABLE IF EXISTS `security_role_auth`;
CREATE TABLE `security_role_auth` (
  `ROLE_AUTH_ID` varchar(36) NOT NULL,
  `ROLE_ID` varchar(36) DEFAULT NULL,
  `RES_TYPE` varchar(32) DEFAULT NULL,
  `RES_ID` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`ROLE_AUTH_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of security_role_auth
-- ----------------------------
INSERT INTO `security_role_auth` VALUES ('1186C4CA-3F2A-47E2-B9CD-34848E180BF3', 'DDA88E11-231C-43EC-9657-7AA55D842407', 'Menu', '1FEEF11B-605F-432E-83BE-AA2173C0EC59');
INSERT INTO `security_role_auth` VALUES ('174C4AA2-0967-4C91-9BF5-B1DE91EE5A19', '8AAF1DCF-114D-49D4-B691-A46F77288AF0', 'Menu', 'AA10D06A-C8FB-4C1F-8193-A81F1BCD438B');
INSERT INTO `security_role_auth` VALUES ('1B9AB8FD-5747-49AE-834B-AC5B3D58A22E', '6A79C287-E013-4A92-AAB2-B926F38144BB', 'Menu', '029FB2F2-370F-46D5-A283-A22C8E49341C');
INSERT INTO `security_role_auth` VALUES ('2A37F566-598E-4C7F-BABD-80036EA33133', '0A6C302D-8531-4C7D-AF38-B7B653CBA668', 'Menu', '20EBAE31-F49D-4A12-992D-089656CFE9A1');
INSERT INTO `security_role_auth` VALUES ('2AE7CE54-F8D7-41FE-B5D0-340A6FEBE9C9', '8AAF1DCF-114D-49D4-B691-A46F77288AF0', 'Menu', '20EBAE31-F49D-4A12-992D-089656CFE9A1');
INSERT INTO `security_role_auth` VALUES ('36363324-DBFB-4439-AA39-CB7F06A089C6', '0A6C302D-8531-4C7D-AF38-B7B653CBA668', 'Menu', '7FFE281D-6135-4180-84DD-8C2715E7EDC7');
INSERT INTO `security_role_auth` VALUES ('408932A2-1089-4E26-83E0-06A998884CE9', '0A6C302D-8531-4C7D-AF38-B7B653CBA668', 'Menu', '00000000-0000-0000-00000000000000001');
INSERT INTO `security_role_auth` VALUES ('44D70975-8A7E-4D7B-A601-DBB18530CBD0', '0A6C302D-8531-4C7D-AF38-B7B653CBA668', 'Menu', 'D16F9D22-079C-45A7-9C71-7B15A5BDFE21');
INSERT INTO `security_role_auth` VALUES ('4575FC72-65D3-4556-9676-B25DB9019F84', 'DDA88E11-231C-43EC-9657-7AA55D842407', 'Menu', '20EBAE31-F49D-4A12-992D-089656CFE9A1');
INSERT INTO `security_role_auth` VALUES ('60BB37EE-7853-42F0-87EB-D7AD48833316', '8AAF1DCF-114D-49D4-B691-A46F77288AF0', 'Menu', '1FEEF11B-605F-432E-83BE-AA2173C0EC59');
INSERT INTO `security_role_auth` VALUES ('6354DBD0-9763-496C-B32E-0FE8CB05EA06', 'DDA88E11-231C-43EC-9657-7AA55D842407', 'Menu', '00000000-0000-0000-00000000000000000');
INSERT INTO `security_role_auth` VALUES ('6387EBD7-D350-40F1-9A59-7F1D9C1AEEC8', 'DDA88E11-231C-43EC-9657-7AA55D842407', 'Menu', 'AA10D06A-C8FB-4C1F-8193-A81F1BCD438B');
INSERT INTO `security_role_auth` VALUES ('67B01527-1687-45A4-BA09-CB81DB34A667', '6A79C287-E013-4A92-AAB2-B926F38144BB', 'Menu', '7FFE281D-6135-4180-84DD-8C2715E7EDC7');
INSERT INTO `security_role_auth` VALUES ('79B152A6-6288-41C4-B09C-516B4197D5A5', '8AAF1DCF-114D-49D4-B691-A46F77288AF0', 'Menu', '7FFE281D-6135-4180-84DD-8C2715E7EDC7');
INSERT INTO `security_role_auth` VALUES ('897650B4-5F12-4180-99F3-8104A4A57560', '6A79C287-E013-4A92-AAB2-B926F38144BB', 'Menu', '00000000-0000-0000-00000000000000001');
INSERT INTO `security_role_auth` VALUES ('89AB9B7E-C1E9-4F04-831B-772B784A6B84', 'DDA88E11-231C-43EC-9657-7AA55D842407', 'Menu', 'D3582A2A-3173-4F92-B1AD-2F999A2CBE18');
INSERT INTO `security_role_auth` VALUES ('9801A5B0-8FB9-42F3-B3C1-A7BC4FBA7E80', '8AAF1DCF-114D-49D4-B691-A46F77288AF0', 'Menu', '029FB2F2-370F-46D5-A283-A22C8E49341C');
INSERT INTO `security_role_auth` VALUES ('A05F9B00-943D-4DD1-8F21-E410BF1D01DA', 'DDA88E11-231C-43EC-9657-7AA55D842407', 'Menu', '00000000-0000-0000-00000000000000001');
INSERT INTO `security_role_auth` VALUES ('A3C3D8C6-FF38-4207-819C-94AAF2668AAD', 'DDA88E11-231C-43EC-9657-7AA55D842407', 'Menu', 'D16F9D22-079C-45A7-9C71-7B15A5BDFE21');
INSERT INTO `security_role_auth` VALUES ('AD0C6CCD-FD07-4B99-A067-C10FD3F12A92', '8AAF1DCF-114D-49D4-B691-A46F77288AF0', 'Menu', '3B1CB4FE-03E4-406B-99FA-B17520AA9C1E');
INSERT INTO `security_role_auth` VALUES ('B369A769-D39A-42B6-8A08-9E36F801BADB', '0A6C302D-8531-4C7D-AF38-B7B653CBA668', 'Menu', '00000000-0000-0000-00000000000000000');
INSERT INTO `security_role_auth` VALUES ('B62EF221-3E30-4CA6-A4A9-72AC4045D9FF', '0A6C302D-8531-4C7D-AF38-B7B653CBA668', 'Menu', 'AA10D06A-C8FB-4C1F-8193-A81F1BCD438B');
INSERT INTO `security_role_auth` VALUES ('BC9603EA-5A97-4B60-A706-0C4B11857637', 'DDA88E11-231C-43EC-9657-7AA55D842407', 'Menu', '33CF8E06-1181-453B-ADF4-1F18ABC026CF');
INSERT INTO `security_role_auth` VALUES ('BD84B0E1-B953-446A-8521-31D8B5F7FC7C', 'DDA88E11-231C-43EC-9657-7AA55D842407', 'Menu', '3B1CB4FE-03E4-406B-99FA-B17520AA9C1E');
INSERT INTO `security_role_auth` VALUES ('CEC6A18A-D3E1-498A-AF07-BAADD5F40887', '6A79C287-E013-4A92-AAB2-B926F38144BB', 'Menu', 'D3582A2A-3173-4F92-B1AD-2F999A2CBE18');
INSERT INTO `security_role_auth` VALUES ('D2C4AC31-5B32-418B-B388-498C3C77AAFE', 'DDA88E11-231C-43EC-9657-7AA55D842407', 'Menu', '029FB2F2-370F-46D5-A283-A22C8E49341C');
INSERT INTO `security_role_auth` VALUES ('D568A397-933B-4A0A-81BD-120354A50D50', '6A79C287-E013-4A92-AAB2-B926F38144BB', 'Menu', '00000000-0000-0000-00000000000000000');
INSERT INTO `security_role_auth` VALUES ('E1B8DB41-BFBE-40AD-97AC-1EA63CA41B41', '0A6C302D-8531-4C7D-AF38-B7B653CBA668', 'Menu', 'D3582A2A-3173-4F92-B1AD-2F999A2CBE18');
INSERT INTO `security_role_auth` VALUES ('E6CE5472-85D8-4616-88E3-4E2661A187C5', '8AAF1DCF-114D-49D4-B691-A46F77288AF0', 'Menu', 'D16F9D22-079C-45A7-9C71-7B15A5BDFE21');
INSERT INTO `security_role_auth` VALUES ('E7E0F21C-EEDB-46B6-B795-22A427A08402', '0A6C302D-8531-4C7D-AF38-B7B653CBA668', 'Menu', '029FB2F2-370F-46D5-A283-A22C8E49341C');
INSERT INTO `security_role_auth` VALUES ('E90043CA-556D-4580-83E6-FB0A201009F6', '8AAF1DCF-114D-49D4-B691-A46F77288AF0', 'Menu', 'D3582A2A-3173-4F92-B1AD-2F999A2CBE18');
INSERT INTO `security_role_auth` VALUES ('ED9718D2-5F5B-4C96-8A87-703A259FE9BD', '8AAF1DCF-114D-49D4-B691-A46F77288AF0', 'Menu', '00000000-0000-0000-00000000000000001');
INSERT INTO `security_role_auth` VALUES ('F5A166E1-C816-49BE-9A27-2A716869B59F', 'DDA88E11-231C-43EC-9657-7AA55D842407', 'Menu', '7FFE281D-6135-4180-84DD-8C2715E7EDC7');
INSERT INTO `security_role_auth` VALUES ('FE4E7AFD-4DE2-40B9-8BD9-63F0924FBCF4', '8AAF1DCF-114D-49D4-B691-A46F77288AF0', 'Menu', '00000000-0000-0000-00000000000000000');

-- ----------------------------
-- Table structure for `security_role_group_rel`
-- ----------------------------
DROP TABLE IF EXISTS `security_role_group_rel`;
CREATE TABLE `security_role_group_rel` (
  `GRP_ID` varchar(36) NOT NULL,
  `ROLE_ID` varchar(36) NOT NULL,
  PRIMARY KEY (`GRP_ID`,`ROLE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of security_role_group_rel
-- ----------------------------
INSERT INTO `security_role_group_rel` VALUES ('00000000-0000-0000-00000000000000000', '00000000-0000-0000-00000000000000000');
INSERT INTO `security_role_group_rel` VALUES ('21E50836-912E-4DB8-82CB-9B32C8A44C9F', '00000000-0000-0000-00000000000000000');
INSERT INTO `security_role_group_rel` VALUES ('21E50836-912E-4DB8-82CB-9B32C8A44C9F', '25788B54-CE0A-4137-8890-EFA4F0DE06B6');
INSERT INTO `security_role_group_rel` VALUES ('23F5915B-C8F1-4BA5-AED9-7CE50B11D5F4', '00000000-0000-0000-00000000000000000');
INSERT INTO `security_role_group_rel` VALUES ('23F5915B-C8F1-4BA5-AED9-7CE50B11D5F4', '25788B54-CE0A-4137-8890-EFA4F0DE06B6');
INSERT INTO `security_role_group_rel` VALUES ('315F898C-A008-4F77-BAB0-4FDF935F7B1F', '00000000-0000-0000-00000000000000000');
INSERT INTO `security_role_group_rel` VALUES ('315F898C-A008-4F77-BAB0-4FDF935F7B1F', '25788B54-CE0A-4137-8890-EFA4F0DE06B6');
INSERT INTO `security_role_group_rel` VALUES ('BBD420A2-68AE-49C2-B3D8-78DC166F511F', '00000000-0000-0000-00000000000000000');

-- ----------------------------
-- Table structure for `security_user`
-- ----------------------------
DROP TABLE IF EXISTS `security_user`;
CREATE TABLE `security_user` (
  `USER_ID` varchar(36) NOT NULL,
  `USER_CODE` varchar(32) DEFAULT NULL,
  `USER_NAME` varchar(32) DEFAULT NULL,
  `USER_PWD` varchar(32) DEFAULT NULL,
  `USER_SEX` varchar(1) DEFAULT NULL,
  `USER_DESC` varchar(128) DEFAULT NULL,
  `USER_STATE` varchar(32) DEFAULT NULL,
  `USER_SORT` int(11) DEFAULT NULL,
  `USER_MAIL` varchar(64) DEFAULT NULL,
  `USER_PHONE` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of security_user
-- ----------------------------
INSERT INTO `security_user` VALUES ('2CE11AC8-0E03-488F-BF7C-9568DFDD9C7A', 'CS04', '赵小四', 'FBAF749E6A085DCBBE41FF5C030EBF98', 'M', '', '1', '4', '', '');
INSERT INTO `security_user` VALUES ('3FD2A1E0-E0F1-4BB5-9FFD-8A2921E6D6FA', 'testxx', 'testxx', 'E10ADC3949BA59ABBE56E057F20F883E', 'F', '', '1', '100', '', '');
INSERT INTO `security_user` VALUES ('42832062-C20C-4AD3-8D3A-C93B1942D652', 'testzj', 'testzj', 'E10ADC3949BA59ABBE56E057F20F883E', 'M', '', '1', '103', '', '');
INSERT INTO `security_user` VALUES ('439D83A6-148E-483E-BF6C-9EF131C27ACF', 'CS01', '张老大', 'DAE6CDC2B49F7C32164BE2AF1A7916AA', 'M', '', '1', '1', '', '');
INSERT INTO `security_user` VALUES ('4A9233B6-0092-4575-8932-2BC8521C0705', 'testdx', 'testdx', 'E10ADC3949BA59ABBE56E057F20F883E', 'M', '', '1', '101', '', '');
INSERT INTO `security_user` VALUES ('542798C0-9D66-4DF2-B5B1-70D9323B954F', 'CS03', '孙小三', '25EC07853BDC7B87DD021F5580C70855', 'M', '', '1', '3', '', '');
INSERT INTO `security_user` VALUES ('6B6AF5B1-CC57-42B1-AB9C-1711D6A5C50A', 'testxs', 'testxs', 'E10ADC3949BA59ABBE56E057F20F883E', 'M', '', '1', '102', '', '');
INSERT INTO `security_user` VALUES ('7ACD7AD5-9A6F-4616-8122-A17D42288BE1', 'userr', 'user', 'EE11CBB19052E40B07AAC0CA060C23EE', 'M', '', '1', '1', '', '');
INSERT INTO `security_user` VALUES ('7DE6ED51-3F4B-4BE6-84A6-17BC6186CC24', 'admin', '管理员', '21232F297A57A5A743894A0E4A801FC3', 'M', '内置账户，勿删！！', '1', '1', null, null);
INSERT INTO `security_user` VALUES ('B587A80F-1863-434C-999F-A92C240BD314', 'CS02', '赵晓二', '39661AF3C6AFE19E95700A0E7373446A', 'F', '', '1', '2', '', '');

-- ----------------------------
-- Table structure for `security_user_auth`
-- ----------------------------
DROP TABLE IF EXISTS `security_user_auth`;
CREATE TABLE `security_user_auth` (
  `USER_AUTH_ID` varchar(36) NOT NULL,
  `USER_ID` varchar(36) DEFAULT NULL,
  `RES_TYPE` varchar(32) DEFAULT NULL,
  `RES_ID` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`USER_AUTH_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of security_user_auth
-- ----------------------------

-- ----------------------------
-- Table structure for `security_user_group_rel`
-- ----------------------------
DROP TABLE IF EXISTS `security_user_group_rel`;
CREATE TABLE `security_user_group_rel` (
  `GRP_ID` varchar(36) NOT NULL,
  `USER_ID` varchar(36) NOT NULL,
  PRIMARY KEY (`GRP_ID`,`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of security_user_group_rel
-- ----------------------------
INSERT INTO `security_user_group_rel` VALUES ('00000000-0000-0000-00000000000000000', '2CE11AC8-0E03-488F-BF7C-9568DFDD9C7A');
INSERT INTO `security_user_group_rel` VALUES ('00000000-0000-0000-00000000000000000', '3FD2A1E0-E0F1-4BB5-9FFD-8A2921E6D6FA');
INSERT INTO `security_user_group_rel` VALUES ('00000000-0000-0000-00000000000000000', '42832062-C20C-4AD3-8D3A-C93B1942D652');
INSERT INTO `security_user_group_rel` VALUES ('00000000-0000-0000-00000000000000000', '439D83A6-148E-483E-BF6C-9EF131C27ACF');
INSERT INTO `security_user_group_rel` VALUES ('00000000-0000-0000-00000000000000000', '4A9233B6-0092-4575-8932-2BC8521C0705');
INSERT INTO `security_user_group_rel` VALUES ('00000000-0000-0000-00000000000000000', '542798C0-9D66-4DF2-B5B1-70D9323B954F');
INSERT INTO `security_user_group_rel` VALUES ('00000000-0000-0000-00000000000000000', '6B6AF5B1-CC57-42B1-AB9C-1711D6A5C50A');
INSERT INTO `security_user_group_rel` VALUES ('00000000-0000-0000-00000000000000000', '7DE6ED51-3F4B-4BE6-84A6-17BC6186CC24');
INSERT INTO `security_user_group_rel` VALUES ('00000000-0000-0000-00000000000000000', 'B587A80F-1863-434C-999F-A92C240BD314');
INSERT INTO `security_user_group_rel` VALUES ('0BE47DDB-862E-45F3-8E43-0A4990847D8B', '7ACD7AD5-9A6F-4616-8122-A17D42288BE1');
INSERT INTO `security_user_group_rel` VALUES ('B6F11BD3-DE55-4F14-A400-540B9E4F45F3', '7ACD7AD5-9A6F-4616-8122-A17D42288BE1');
INSERT INTO `security_user_group_rel` VALUES ('B6F11BD3-DE55-4F14-A400-540B9E4F45F3', '9A0A9DE7-608A-4B2B-B1C7-F6C11FD1A94E');
INSERT INTO `security_user_group_rel` VALUES ('B6F11BD3-DE55-4F14-A400-540B9E4F45F3', 'B64DCBC3-F28A-4DC8-92F1-1FB10367CACC');

-- ----------------------------
-- Table structure for `security_user_role_rel`
-- ----------------------------
DROP TABLE IF EXISTS `security_user_role_rel`;
CREATE TABLE `security_user_role_rel` (
  `ROLE_ID` varchar(36) NOT NULL,
  `USER_ID` varchar(36) NOT NULL,
  PRIMARY KEY (`ROLE_ID`,`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of security_user_role_rel
-- ----------------------------
INSERT INTO `security_user_role_rel` VALUES ('', '7DE6ED51-3F4B-4BE6-84A6-17BC6186CC24');
INSERT INTO `security_user_role_rel` VALUES ('00000000-0000-0000-00000000000000000', '7DE6ED51-3F4B-4BE6-84A6-17BC6186CC24');
INSERT INTO `security_user_role_rel` VALUES ('00000000-0000-0000-00000000000000000', 'B64DCBC3-F28A-4DC8-92F1-1FB10367CACC');
INSERT INTO `security_user_role_rel` VALUES ('0A6C302D-8531-4C7D-AF38-B7B653CBA668', '4A9233B6-0092-4575-8932-2BC8521C0705');
INSERT INTO `security_user_role_rel` VALUES ('0A6C302D-8531-4C7D-AF38-B7B653CBA668', 'B587A80F-1863-434C-999F-A92C240BD314');
INSERT INTO `security_user_role_rel` VALUES ('6A79C287-E013-4A92-AAB2-B926F38144BB', '2CE11AC8-0E03-488F-BF7C-9568DFDD9C7A');
INSERT INTO `security_user_role_rel` VALUES ('6A79C287-E013-4A92-AAB2-B926F38144BB', '3FD2A1E0-E0F1-4BB5-9FFD-8A2921E6D6FA');
INSERT INTO `security_user_role_rel` VALUES ('6A79C287-E013-4A92-AAB2-B926F38144BB', '439D83A6-148E-483E-BF6C-9EF131C27ACF');
INSERT INTO `security_user_role_rel` VALUES ('6A79C287-E013-4A92-AAB2-B926F38144BB', 'B587A80F-1863-434C-999F-A92C240BD314');
INSERT INTO `security_user_role_rel` VALUES ('8AAF1DCF-114D-49D4-B691-A46F77288AF0', '2CE11AC8-0E03-488F-BF7C-9568DFDD9C7A');
INSERT INTO `security_user_role_rel` VALUES ('8AAF1DCF-114D-49D4-B691-A46F77288AF0', '325F3A78-4671-485C-A9E9-D0581A635E77');
INSERT INTO `security_user_role_rel` VALUES ('8AAF1DCF-114D-49D4-B691-A46F77288AF0', '439D83A6-148E-483E-BF6C-9EF131C27ACF');
INSERT INTO `security_user_role_rel` VALUES ('8AAF1DCF-114D-49D4-B691-A46F77288AF0', '542798C0-9D66-4DF2-B5B1-70D9323B954F');
INSERT INTO `security_user_role_rel` VALUES ('8AAF1DCF-114D-49D4-B691-A46F77288AF0', '6B6AF5B1-CC57-42B1-AB9C-1711D6A5C50A');
INSERT INTO `security_user_role_rel` VALUES ('8AAF1DCF-114D-49D4-B691-A46F77288AF0', '94AC9607-92D5-4FDD-A1FA-52799BB9EB1C');
INSERT INTO `security_user_role_rel` VALUES ('8AAF1DCF-114D-49D4-B691-A46F77288AF0', 'B587A80F-1863-434C-999F-A92C240BD314');
INSERT INTO `security_user_role_rel` VALUES ('DDA88E11-231C-43EC-9657-7AA55D842407', '42832062-C20C-4AD3-8D3A-C93B1942D652');
INSERT INTO `security_user_role_rel` VALUES ('DDA88E11-231C-43EC-9657-7AA55D842407', '439D83A6-148E-483E-BF6C-9EF131C27ACF');
INSERT INTO `security_user_role_rel` VALUES ('DDA88E11-231C-43EC-9657-7AA55D842407', '94AC9607-92D5-4FDD-A1FA-52799BB9EB1C');

-- ----------------------------
-- Table structure for `sys_codelist`
-- ----------------------------
DROP TABLE IF EXISTS `sys_codelist`;
CREATE TABLE `sys_codelist` (
  `TYPE_ID` varchar(32) NOT NULL,
  `CODE_ID` varchar(32) NOT NULL,
  `CODE_NAME` varchar(32) DEFAULT NULL,
  `CODE_DESC` varchar(128) DEFAULT NULL,
  `CODE_SORT` int(11) DEFAULT NULL,
  `CODE_FLAG` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`TYPE_ID`,`CODE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_codelist
-- ----------------------------
INSERT INTO `sys_codelist` VALUES ('BOOL_DEFINE', 'N', '否', '', '2', '1');
INSERT INTO `sys_codelist` VALUES ('BOOL_DEFINE', 'Y', '是', '', '1', '1');
INSERT INTO `sys_codelist` VALUES ('CLUE_SOURCE', '0', '邮件推广', '', '1', '1');
INSERT INTO `sys_codelist` VALUES ('CLUE_SOURCE', '1', '电话推广', '', '2', '1');
INSERT INTO `sys_codelist` VALUES ('CLUE_SOURCE', '2', '网上搜索', '', '3', '1');
INSERT INTO `sys_codelist` VALUES ('CLUE_SOURCE', '3', '朋友介绍', '', '4', '1');
INSERT INTO `sys_codelist` VALUES ('CLUE_SOURCE', '4', '其他', '', '5', '1');
INSERT INTO `sys_codelist` VALUES ('CLUE_STATE', '0', '初始化', '', '1', '1');
INSERT INTO `sys_codelist` VALUES ('CLUE_STATE', '1', '已分配', '', '2', '1');
INSERT INTO `sys_codelist` VALUES ('CLUE_STATE', '2', '已认领', '', '3', '1');
INSERT INTO `sys_codelist` VALUES ('CLUE_STATE', '3', '已搁置', '', '4', '1');
INSERT INTO `sys_codelist` VALUES ('CLUE_STATE', '4', '已关闭', '', '5', '1');
INSERT INTO `sys_codelist` VALUES ('CODE_TYPE_GROUP', 'app_code_define', '应用编码', 'null', '1', '1');
INSERT INTO `sys_codelist` VALUES ('CODE_TYPE_GROUP', 'sys_code_define', '系统编码', '系统编码123a1', '3', '1');
INSERT INTO `sys_codelist` VALUES ('CUST_INDUSTRY', '0', '计算机 | 互联网 | 通信 | 电子', '', '1', '1');
INSERT INTO `sys_codelist` VALUES ('CUST_INDUSTRY', '1', '会计/金融/银行/保险', '', '2', '1');
INSERT INTO `sys_codelist` VALUES ('CUST_INDUSTRY', '10', '政府/非赢利机构/其他', '', '11', '1');
INSERT INTO `sys_codelist` VALUES ('CUST_INDUSTRY', '2', '贸易/消费/制造/营运', '', '3', '1');
INSERT INTO `sys_codelist` VALUES ('CUST_INDUSTRY', '3', '制药/医疗', '', '4', '1');
INSERT INTO `sys_codelist` VALUES ('CUST_INDUSTRY', '4', '广告/媒体', '', '5', '1');
INSERT INTO `sys_codelist` VALUES ('CUST_INDUSTRY', '5', '房地产/建筑', '', '6', '1');
INSERT INTO `sys_codelist` VALUES ('CUST_INDUSTRY', '6', '专业服务/教育/培训', '', '7', '1');
INSERT INTO `sys_codelist` VALUES ('CUST_INDUSTRY', '7', '服务业', '', '8', '1');
INSERT INTO `sys_codelist` VALUES ('CUST_INDUSTRY', '8', '物流/运输', '', '9', '1');
INSERT INTO `sys_codelist` VALUES ('CUST_INDUSTRY', '9', '能源/原材料', '', '10', '1');
INSERT INTO `sys_codelist` VALUES ('CUST_NATURE', '0', '未知', '', '1', '1');
INSERT INTO `sys_codelist` VALUES ('CUST_NATURE', '1', '外资(欧美)', '', '2', '1');
INSERT INTO `sys_codelist` VALUES ('CUST_NATURE', '10', '非营利机构', '', '11', '1');
INSERT INTO `sys_codelist` VALUES ('CUST_NATURE', '11', '其他性质', '', '12', '1');
INSERT INTO `sys_codelist` VALUES ('CUST_NATURE', '2', '外资(非欧美)', '', '3', '1');
INSERT INTO `sys_codelist` VALUES ('CUST_NATURE', '3', '合资', '', '4', '1');
INSERT INTO `sys_codelist` VALUES ('CUST_NATURE', '4', '国企', '', '5', '1');
INSERT INTO `sys_codelist` VALUES ('CUST_NATURE', '5', '民营公司', '', '6', '1');
INSERT INTO `sys_codelist` VALUES ('CUST_NATURE', '6', '国内上市公司', '', '7', '1');
INSERT INTO `sys_codelist` VALUES ('CUST_NATURE', '7', '外企代表处', '', '8', '1');
INSERT INTO `sys_codelist` VALUES ('CUST_NATURE', '8', '政府机关', '', '9', '1');
INSERT INTO `sys_codelist` VALUES ('CUST_NATURE', '9', '事业单位', '', '10', '1');
INSERT INTO `sys_codelist` VALUES ('CUST_SCALE', '1000-5000', '1000-5000人', '', '5', '1');
INSERT INTO `sys_codelist` VALUES ('CUST_SCALE', '10000', '10000人以上', '', '7', '1');
INSERT INTO `sys_codelist` VALUES ('CUST_SCALE', '150-500', '150-500人', '', '3', '1');
INSERT INTO `sys_codelist` VALUES ('CUST_SCALE', '50', '少于50人', '', '1', '1');
INSERT INTO `sys_codelist` VALUES ('CUST_SCALE', '50-150', '50-150人', '', '2', '1');
INSERT INTO `sys_codelist` VALUES ('CUST_SCALE', '500-1000', '500-1000人', '', '4', '1');
INSERT INTO `sys_codelist` VALUES ('CUST_SCALE', '5000-10000', '5000-10000人', '', '6', '1');
INSERT INTO `sys_codelist` VALUES ('CUST_STATE', 'Confirm', '确认', '', '3', '1');
INSERT INTO `sys_codelist` VALUES ('CUST_STATE', 'init', '初始化', '', '1', '1');
INSERT INTO `sys_codelist` VALUES ('CUST_STATE', 'Submit', '提交', '', '2', '1');
INSERT INTO `sys_codelist` VALUES ('FUNCTION_TYPE', 'funcmenu', '功能菜单', '', '1', '1');
INSERT INTO `sys_codelist` VALUES ('FUNCTION_TYPE', 'funcnode', '功能节点', '', '1', '1');
INSERT INTO `sys_codelist` VALUES ('GRP_STATE', '0', '无效', '', '1', '1');
INSERT INTO `sys_codelist` VALUES ('GRP_STATE', '1', '有效', '', '2', '1');
INSERT INTO `sys_codelist` VALUES ('HANDLER_TYPE', 'MAIN', '主处理器', '', '1', '1');
INSERT INTO `sys_codelist` VALUES ('HANDLER_TYPE', 'OTHER', '其他处理器', '', '2', '1');
INSERT INTO `sys_codelist` VALUES ('MENUTREE_CASCADE', '0', '关闭', '', '1', '1');
INSERT INTO `sys_codelist` VALUES ('MENUTREE_CASCADE', '1', '展开', '', '2', '1');
INSERT INTO `sys_codelist` VALUES ('OPER_CTR_TYPE', 'disableMode', '不能操作', '', '2', '1');
INSERT INTO `sys_codelist` VALUES ('OPER_CTR_TYPE', 'hiddenMode', '隐藏按钮', '', '1', '1');
INSERT INTO `sys_codelist` VALUES ('OPP_CONCERN_PRODUCT', 'crm', 'AEAI CRM', '', '4', '1');
INSERT INTO `sys_codelist` VALUES ('OPP_CONCERN_PRODUCT', 'dp', 'AEAI DP', '', '3', '1');
INSERT INTO `sys_codelist` VALUES ('OPP_CONCERN_PRODUCT', 'esb', 'AEAI ESB', '', '0', '1');
INSERT INTO `sys_codelist` VALUES ('OPP_CONCERN_PRODUCT', 'hr', 'AEAI HR', '', '5', '1');
INSERT INTO `sys_codelist` VALUES ('OPP_CONCERN_PRODUCT', 'portal', 'AEAI PORTAL', '', '1', '1');
INSERT INTO `sys_codelist` VALUES ('OPP_CONCERN_PRODUCT', 'wm', 'AEAI WM', '', '6', '1');
INSERT INTO `sys_codelist` VALUES ('OPP_STATE', '0', '初始化', '', '1', '1');
INSERT INTO `sys_codelist` VALUES ('OPP_STATE', '1', '已提交', '', '2', '1');
INSERT INTO `sys_codelist` VALUES ('OPP_STATE', '2', '已确认', '', '3', '1');
INSERT INTO `sys_codelist` VALUES ('OPP_STATE', '3', '已关闭', '', '4', '1');
INSERT INTO `sys_codelist` VALUES ('ORDER_STATE', '0', '初始化', '', '1', '1');
INSERT INTO `sys_codelist` VALUES ('ORDER_STATE', '1', '已确认', '', '3', '1');
INSERT INTO `sys_codelist` VALUES ('ORG_TYPE', '0', '未知', '', '1', '1');
INSERT INTO `sys_codelist` VALUES ('ORG_TYPE', '1', '外资（欧美）', '', '2', '1');
INSERT INTO `sys_codelist` VALUES ('ORG_TYPE', '10', '非营利机构', '', '11', '1');
INSERT INTO `sys_codelist` VALUES ('ORG_TYPE', '11', '其他性质', '', '12', '1');
INSERT INTO `sys_codelist` VALUES ('ORG_TYPE', '2', '外资（非欧美）', '', '3', '1');
INSERT INTO `sys_codelist` VALUES ('ORG_TYPE', '3', '合资', '', '4', '1');
INSERT INTO `sys_codelist` VALUES ('ORG_TYPE', '4', '国企', '', '5', '1');
INSERT INTO `sys_codelist` VALUES ('ORG_TYPE', '5', '民营公司', '', '6', '1');
INSERT INTO `sys_codelist` VALUES ('ORG_TYPE', '6', '国内上市公司', '', '7', '1');
INSERT INTO `sys_codelist` VALUES ('ORG_TYPE', '7', '外企代表处', '', '8', '1');
INSERT INTO `sys_codelist` VALUES ('ORG_TYPE', '8', '政府机关', '', '9', '1');
INSERT INTO `sys_codelist` VALUES ('ORG_TYPE', '9', '事业单位', '', '10', '1');
INSERT INTO `sys_codelist` VALUES ('PER_SEX', 'F', '女', '', '3', '1');
INSERT INTO `sys_codelist` VALUES ('PER_SEX', 'M', '男', '', '2', '1');
INSERT INTO `sys_codelist` VALUES ('PER_SEX', 'UNKONW', '未知', '', '1', '1');
INSERT INTO `sys_codelist` VALUES ('PER_STATE', '0', '有效', '', '1', '1');
INSERT INTO `sys_codelist` VALUES ('PER_STATE', '1', '无效', '', '2', '1');
INSERT INTO `sys_codelist` VALUES ('POSITION_TYPE', 'dummy_postion', '虚拟岗位', 'null', '1', '1');
INSERT INTO `sys_codelist` VALUES ('POSITION_TYPE', 'real_postion', '实际岗位', 'null', '1', '1');
INSERT INTO `sys_codelist` VALUES ('PROVINCE', 'AnHui', '安徽', '', '13', '1');
INSERT INTO `sys_codelist` VALUES ('PROVINCE', 'AoMen', '澳门', '', '33', '1');
INSERT INTO `sys_codelist` VALUES ('PROVINCE', 'BeiJing', '北京', '', '1', '1');
INSERT INTO `sys_codelist` VALUES ('PROVINCE', 'ChongQing', '重庆', '', '4', '1');
INSERT INTO `sys_codelist` VALUES ('PROVINCE', 'FuJian', '福建', '', '14', '1');
INSERT INTO `sys_codelist` VALUES ('PROVINCE', 'GanSu', '甘肃', '', '28', '1');
INSERT INTO `sys_codelist` VALUES ('PROVINCE', 'GuangDong', '广东', '', '20', '1');
INSERT INTO `sys_codelist` VALUES ('PROVINCE', 'GuangXi', '广西', '', '21', '1');
INSERT INTO `sys_codelist` VALUES ('PROVINCE', 'GuiZhou', '贵州', '', '24', '1');
INSERT INTO `sys_codelist` VALUES ('PROVINCE', 'HaiNan', '海南', '', '22', '1');
INSERT INTO `sys_codelist` VALUES ('PROVINCE', 'HeBei', '河北', '', '5', '1');
INSERT INTO `sys_codelist` VALUES ('PROVINCE', 'HeiLongJiang', '黑龙江', '', '10', '1');
INSERT INTO `sys_codelist` VALUES ('PROVINCE', 'HeNan', '河南', '', '17', '1');
INSERT INTO `sys_codelist` VALUES ('PROVINCE', 'HuBei', '湖北', '', '18', '1');
INSERT INTO `sys_codelist` VALUES ('PROVINCE', 'HuNan', '湖南', '', '19', '1');
INSERT INTO `sys_codelist` VALUES ('PROVINCE', 'JiangSu', '江苏', '', '11', '1');
INSERT INTO `sys_codelist` VALUES ('PROVINCE', 'JiangXi', '江西', '', '15', '1');
INSERT INTO `sys_codelist` VALUES ('PROVINCE', 'JiLin', '吉林', '', '9', '1');
INSERT INTO `sys_codelist` VALUES ('PROVINCE', 'LiaoNing', '辽宁', '', '8', '1');
INSERT INTO `sys_codelist` VALUES ('PROVINCE', 'NeiMengGu', '内蒙古', '', '7', '1');
INSERT INTO `sys_codelist` VALUES ('PROVINCE', 'NingXia', '宁夏', '', '30', '1');
INSERT INTO `sys_codelist` VALUES ('PROVINCE', 'QingHai', '青海', '', '29', '1');
INSERT INTO `sys_codelist` VALUES ('PROVINCE', 'SanXi', '陕西', '', '27', '1');
INSERT INTO `sys_codelist` VALUES ('PROVINCE', 'ShanDong', '山东', '', '16', '1');
INSERT INTO `sys_codelist` VALUES ('PROVINCE', 'ShangHai', '上海', '', '2', '1');
INSERT INTO `sys_codelist` VALUES ('PROVINCE', 'ShanXi', '山西', '', '6', '1');
INSERT INTO `sys_codelist` VALUES ('PROVINCE', 'SiChuan', '四川', '', '23', '1');
INSERT INTO `sys_codelist` VALUES ('PROVINCE', 'TaiWan', '台湾', '', '34', '1');
INSERT INTO `sys_codelist` VALUES ('PROVINCE', 'TianJin', '天津', '', '3', '1');
INSERT INTO `sys_codelist` VALUES ('PROVINCE', 'XiangGang', '香港', '', '32', '1');
INSERT INTO `sys_codelist` VALUES ('PROVINCE', 'XinJiang', '新疆', '', '31', '1');
INSERT INTO `sys_codelist` VALUES ('PROVINCE', 'XiZang', '西藏', '', '26', '1');
INSERT INTO `sys_codelist` VALUES ('PROVINCE', 'YunNan', '云南', '', '25', '1');
INSERT INTO `sys_codelist` VALUES ('PROVINCE', 'ZheJiang', '浙江', '', '12', '1');
INSERT INTO `sys_codelist` VALUES ('RES_TYPE', 'IMAGE', '图片文件', '', '2', '1');
INSERT INTO `sys_codelist` VALUES ('RES_TYPE', 'ISO', '镜像文件', '', '1', '1');
INSERT INTO `sys_codelist` VALUES ('RES_TYPE', 'VIDEO', '视频文件', '', '3', '1');
INSERT INTO `sys_codelist` VALUES ('SYS_VALID_TYPE', '0', '无效', 'null', '2', '1');
INSERT INTO `sys_codelist` VALUES ('SYS_VALID_TYPE', '1', '有效', 'null', '1', '1');
INSERT INTO `sys_codelist` VALUES ('UNIT_TYPE', 'dept', '部门', '', '10', '1');
INSERT INTO `sys_codelist` VALUES ('UNIT_TYPE', 'org', '机构', '', '20', '1');
INSERT INTO `sys_codelist` VALUES ('UNIT_TYPE', 'post', '岗位', '', '30', '1');
INSERT INTO `sys_codelist` VALUES ('USER_SEX', 'F', '女', '', '2', '1');
INSERT INTO `sys_codelist` VALUES ('USER_SEX', 'M', '男', 'null', '1', '1');
INSERT INTO `sys_codelist` VALUES ('VISIT_TYPE', '0', '预约拜访', '', '1', '1');
INSERT INTO `sys_codelist` VALUES ('VISIT_TYPE', '1', '电话拜访', '', '3', '1');
INSERT INTO `sys_codelist` VALUES ('VISIT_TYPE', '2', '邮件拜访', '', '4', '1');
INSERT INTO `sys_codelist` VALUES ('VISIT_TYPE', '3', '陌生拜访', '', '2', '1');

-- ----------------------------
-- Table structure for `sys_codelist_copy`
-- ----------------------------
DROP TABLE IF EXISTS `sys_codelist_copy`;
CREATE TABLE `sys_codelist_copy` (
  `TYPE_ID` varchar(32) NOT NULL,
  `CODE_ID` varchar(32) NOT NULL,
  `CODE_NAME` varchar(32) DEFAULT NULL,
  `CODE_DESC` varchar(128) DEFAULT NULL,
  `CODE_SORT` int(11) DEFAULT NULL,
  `CODE_FLAG` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`TYPE_ID`,`CODE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_codelist_copy
-- ----------------------------
INSERT INTO `sys_codelist_copy` VALUES ('BOOL_DEFINE', 'N', '否', '', '2', '1');
INSERT INTO `sys_codelist_copy` VALUES ('BOOL_DEFINE', 'Y', '是', '', '1', '1');
INSERT INTO `sys_codelist_copy` VALUES ('CLUE_SOURCE', '0', '邮件推广', '', '1', '1');
INSERT INTO `sys_codelist_copy` VALUES ('CLUE_SOURCE', '1', '电话推广', '', '2', '1');
INSERT INTO `sys_codelist_copy` VALUES ('CLUE_SOURCE', '2', '网上搜索', '', '3', '1');
INSERT INTO `sys_codelist_copy` VALUES ('CLUE_SOURCE', '3', '朋友介绍', '', '4', '1');
INSERT INTO `sys_codelist_copy` VALUES ('CLUE_SOURCE', '4', '其他', '', '5', '1');
INSERT INTO `sys_codelist_copy` VALUES ('CLUE_STATE', '0', '初始化', '', '1', '1');
INSERT INTO `sys_codelist_copy` VALUES ('CLUE_STATE', '1', '已分配', '', '2', '1');
INSERT INTO `sys_codelist_copy` VALUES ('CLUE_STATE', '2', '已认领', '', '3', '1');
INSERT INTO `sys_codelist_copy` VALUES ('CLUE_STATE', '3', '已搁置', '', '4', '1');
INSERT INTO `sys_codelist_copy` VALUES ('CLUE_STATE', '4', '已关闭', '', '5', '1');
INSERT INTO `sys_codelist_copy` VALUES ('CODE_TYPE_GROUP', 'app_code_define', '应用编码', 'null', '1', '1');
INSERT INTO `sys_codelist_copy` VALUES ('CODE_TYPE_GROUP', 'sys_code_define', '系统编码', '系统编码123a1', '3', '1');
INSERT INTO `sys_codelist_copy` VALUES ('CUST_INDUSTRY', '0', '计算机 | 互联网 | 通信 | 电子', '', '1', '1');
INSERT INTO `sys_codelist_copy` VALUES ('CUST_INDUSTRY', '1', '会计/金融/银行/保险', '', '2', '1');
INSERT INTO `sys_codelist_copy` VALUES ('CUST_INDUSTRY', '10', '政府/非赢利机构/其他', '', '11', '1');
INSERT INTO `sys_codelist_copy` VALUES ('CUST_INDUSTRY', '2', '贸易/消费/制造/营运', '', '3', '1');
INSERT INTO `sys_codelist_copy` VALUES ('CUST_INDUSTRY', '3', '制药/医疗', '', '4', '1');
INSERT INTO `sys_codelist_copy` VALUES ('CUST_INDUSTRY', '4', '广告/媒体', '', '5', '1');
INSERT INTO `sys_codelist_copy` VALUES ('CUST_INDUSTRY', '5', '房地产/建筑', '', '6', '1');
INSERT INTO `sys_codelist_copy` VALUES ('CUST_INDUSTRY', '6', '专业服务/教育/培训', '', '7', '1');
INSERT INTO `sys_codelist_copy` VALUES ('CUST_INDUSTRY', '7', '服务业', '', '8', '1');
INSERT INTO `sys_codelist_copy` VALUES ('CUST_INDUSTRY', '8', '物流/运输', '', '9', '1');
INSERT INTO `sys_codelist_copy` VALUES ('CUST_INDUSTRY', '9', '能源/原材料', '', '10', '1');
INSERT INTO `sys_codelist_copy` VALUES ('CUST_NATURE', '0', '未知', '', '1', '1');
INSERT INTO `sys_codelist_copy` VALUES ('CUST_NATURE', '1', '外资(欧美)', '', '2', '1');
INSERT INTO `sys_codelist_copy` VALUES ('CUST_NATURE', '10', '非营利机构', '', '11', '1');
INSERT INTO `sys_codelist_copy` VALUES ('CUST_NATURE', '11', '其他性质', '', '12', '1');
INSERT INTO `sys_codelist_copy` VALUES ('CUST_NATURE', '2', '外资(非欧美)', '', '3', '1');
INSERT INTO `sys_codelist_copy` VALUES ('CUST_NATURE', '3', '合资', '', '4', '1');
INSERT INTO `sys_codelist_copy` VALUES ('CUST_NATURE', '4', '国企', '', '5', '1');
INSERT INTO `sys_codelist_copy` VALUES ('CUST_NATURE', '5', '民营公司', '', '6', '1');
INSERT INTO `sys_codelist_copy` VALUES ('CUST_NATURE', '6', '国内上市公司', '', '7', '1');
INSERT INTO `sys_codelist_copy` VALUES ('CUST_NATURE', '7', '外企代表处', '', '8', '1');
INSERT INTO `sys_codelist_copy` VALUES ('CUST_NATURE', '8', '政府机关', '', '9', '1');
INSERT INTO `sys_codelist_copy` VALUES ('CUST_NATURE', '9', '事业单位', '', '10', '1');
INSERT INTO `sys_codelist_copy` VALUES ('CUST_SCALE', '1000-5000', '1000-5000人', '', '5', '1');
INSERT INTO `sys_codelist_copy` VALUES ('CUST_SCALE', '10000', '10000人以上', '', '7', '1');
INSERT INTO `sys_codelist_copy` VALUES ('CUST_SCALE', '150-500', '150-500人', '', '3', '1');
INSERT INTO `sys_codelist_copy` VALUES ('CUST_SCALE', '50', '少于50人', '', '1', '1');
INSERT INTO `sys_codelist_copy` VALUES ('CUST_SCALE', '50-150', '50-150人', '', '2', '1');
INSERT INTO `sys_codelist_copy` VALUES ('CUST_SCALE', '500-1000', '500-1000人', '', '4', '1');
INSERT INTO `sys_codelist_copy` VALUES ('CUST_SCALE', '5000-10000', '5000-10000人', '', '6', '1');
INSERT INTO `sys_codelist_copy` VALUES ('CUST_STATE', 'Confirm', '确认', '', '3', '1');
INSERT INTO `sys_codelist_copy` VALUES ('CUST_STATE', 'init', '初始化', '', '1', '1');
INSERT INTO `sys_codelist_copy` VALUES ('CUST_STATE', 'Submit', '提交', '', '2', '1');
INSERT INTO `sys_codelist_copy` VALUES ('FUNCTION_TYPE', 'funcmenu', '功能菜单', '', '1', '1');
INSERT INTO `sys_codelist_copy` VALUES ('FUNCTION_TYPE', 'funcnode', '功能节点', '', '1', '1');
INSERT INTO `sys_codelist_copy` VALUES ('GRP_STATE', '0', '无效', '', '1', '1');
INSERT INTO `sys_codelist_copy` VALUES ('GRP_STATE', '1', '有效', '', '2', '1');
INSERT INTO `sys_codelist_copy` VALUES ('HANDLER_TYPE', 'MAIN', '主处理器', '', '1', '1');
INSERT INTO `sys_codelist_copy` VALUES ('HANDLER_TYPE', 'OTHER', '其他处理器', '', '2', '1');
INSERT INTO `sys_codelist_copy` VALUES ('MENUTREE_CASCADE', '0', '关闭', '', '1', '1');
INSERT INTO `sys_codelist_copy` VALUES ('MENUTREE_CASCADE', '1', '展开', '', '2', '1');
INSERT INTO `sys_codelist_copy` VALUES ('OPER_CTR_TYPE', 'disableMode', '不能操作', '', '2', '1');
INSERT INTO `sys_codelist_copy` VALUES ('OPER_CTR_TYPE', 'hiddenMode', '隐藏按钮', '', '1', '1');
INSERT INTO `sys_codelist_copy` VALUES ('OPP_CONCERN_PRODUCT', 'crm', 'AEAI CRM', '', '4', '1');
INSERT INTO `sys_codelist_copy` VALUES ('OPP_CONCERN_PRODUCT', 'dp', 'AEAI DP', '', '3', '1');
INSERT INTO `sys_codelist_copy` VALUES ('OPP_CONCERN_PRODUCT', 'esb', 'AEAI ESB', '', '0', '1');
INSERT INTO `sys_codelist_copy` VALUES ('OPP_CONCERN_PRODUCT', 'hr', 'AEAI HR', '', '5', '1');
INSERT INTO `sys_codelist_copy` VALUES ('OPP_CONCERN_PRODUCT', 'portal', 'AEAI PORTAL', '', '1', '1');
INSERT INTO `sys_codelist_copy` VALUES ('OPP_CONCERN_PRODUCT', 'wm', 'AEAI WM', '', '6', '1');
INSERT INTO `sys_codelist_copy` VALUES ('OPP_STATE', '0', '初始化', '', '1', '1');
INSERT INTO `sys_codelist_copy` VALUES ('OPP_STATE', '1', '已提交', '', '2', '1');
INSERT INTO `sys_codelist_copy` VALUES ('OPP_STATE', '2', '已确认', '', '3', '1');
INSERT INTO `sys_codelist_copy` VALUES ('ORDER_STATE', '0', '初始化', '', '1', '1');
INSERT INTO `sys_codelist_copy` VALUES ('ORDER_STATE', '1', '已确认', '', '3', '1');
INSERT INTO `sys_codelist_copy` VALUES ('ORG_TYPE', '0', '未知', '', '1', '1');
INSERT INTO `sys_codelist_copy` VALUES ('ORG_TYPE', '1', '外资（欧美）', '', '2', '1');
INSERT INTO `sys_codelist_copy` VALUES ('ORG_TYPE', '10', '非营利机构', '', '11', '1');
INSERT INTO `sys_codelist_copy` VALUES ('ORG_TYPE', '11', '其他性质', '', '12', '1');
INSERT INTO `sys_codelist_copy` VALUES ('ORG_TYPE', '2', '外资（非欧美）', '', '3', '1');
INSERT INTO `sys_codelist_copy` VALUES ('ORG_TYPE', '3', '合资', '', '4', '1');
INSERT INTO `sys_codelist_copy` VALUES ('ORG_TYPE', '4', '国企', '', '5', '1');
INSERT INTO `sys_codelist_copy` VALUES ('ORG_TYPE', '5', '民营公司', '', '6', '1');
INSERT INTO `sys_codelist_copy` VALUES ('ORG_TYPE', '6', '国内上市公司', '', '7', '1');
INSERT INTO `sys_codelist_copy` VALUES ('ORG_TYPE', '7', '外企代表处', '', '8', '1');
INSERT INTO `sys_codelist_copy` VALUES ('ORG_TYPE', '8', '政府机关', '', '9', '1');
INSERT INTO `sys_codelist_copy` VALUES ('ORG_TYPE', '9', '事业单位', '', '10', '1');
INSERT INTO `sys_codelist_copy` VALUES ('PER_SEX', 'F', '女', '', '3', '1');
INSERT INTO `sys_codelist_copy` VALUES ('PER_SEX', 'M', '男', '', '2', '1');
INSERT INTO `sys_codelist_copy` VALUES ('PER_SEX', 'UNKONW', '未知', '', '1', '1');
INSERT INTO `sys_codelist_copy` VALUES ('PER_STATE', '0', '有效', '', '1', '1');
INSERT INTO `sys_codelist_copy` VALUES ('PER_STATE', '1', '无效', '', '2', '1');
INSERT INTO `sys_codelist_copy` VALUES ('POSITION_TYPE', 'dummy_postion', '虚拟岗位', 'null', '1', '1');
INSERT INTO `sys_codelist_copy` VALUES ('POSITION_TYPE', 'real_postion', '实际岗位', 'null', '1', '1');
INSERT INTO `sys_codelist_copy` VALUES ('PROVINCE', 'AnHui', '安徽', '', '13', '1');
INSERT INTO `sys_codelist_copy` VALUES ('PROVINCE', 'AoMen', '澳门', '', '33', '1');
INSERT INTO `sys_codelist_copy` VALUES ('PROVINCE', 'BeiJing', '北京', '', '1', '1');
INSERT INTO `sys_codelist_copy` VALUES ('PROVINCE', 'ChongQing', '重庆', '', '4', '1');
INSERT INTO `sys_codelist_copy` VALUES ('PROVINCE', 'FuJian', '福建', '', '14', '1');
INSERT INTO `sys_codelist_copy` VALUES ('PROVINCE', 'GanSu', '甘肃', '', '28', '1');
INSERT INTO `sys_codelist_copy` VALUES ('PROVINCE', 'GuangDong', '广东', '', '20', '1');
INSERT INTO `sys_codelist_copy` VALUES ('PROVINCE', 'GuangXi', '广西', '', '21', '1');
INSERT INTO `sys_codelist_copy` VALUES ('PROVINCE', 'GuiZhou', '贵州', '', '24', '1');
INSERT INTO `sys_codelist_copy` VALUES ('PROVINCE', 'HaiNan', '海南', '', '22', '1');
INSERT INTO `sys_codelist_copy` VALUES ('PROVINCE', 'HeBei', '河北', '', '5', '1');
INSERT INTO `sys_codelist_copy` VALUES ('PROVINCE', 'HeiLongJiang', '黑龙江', '', '10', '1');
INSERT INTO `sys_codelist_copy` VALUES ('PROVINCE', 'HeNan', '河南', '', '17', '1');
INSERT INTO `sys_codelist_copy` VALUES ('PROVINCE', 'HuBei', '湖北', '', '18', '1');
INSERT INTO `sys_codelist_copy` VALUES ('PROVINCE', 'HuNan', '湖南', '', '19', '1');
INSERT INTO `sys_codelist_copy` VALUES ('PROVINCE', 'JiangSu', '江苏', '', '11', '1');
INSERT INTO `sys_codelist_copy` VALUES ('PROVINCE', 'JiangXi', '江西', '', '15', '1');
INSERT INTO `sys_codelist_copy` VALUES ('PROVINCE', 'JiLin', '吉林', '', '9', '1');
INSERT INTO `sys_codelist_copy` VALUES ('PROVINCE', 'LiaoNing', '辽宁', '', '8', '1');
INSERT INTO `sys_codelist_copy` VALUES ('PROVINCE', 'NeiMengGu', '内蒙古', '', '7', '1');
INSERT INTO `sys_codelist_copy` VALUES ('PROVINCE', 'NingXia', '宁夏', '', '30', '1');
INSERT INTO `sys_codelist_copy` VALUES ('PROVINCE', 'QingHai', '青海', '', '29', '1');
INSERT INTO `sys_codelist_copy` VALUES ('PROVINCE', 'SanXi', '陕西', '', '27', '1');
INSERT INTO `sys_codelist_copy` VALUES ('PROVINCE', 'ShanDong', '山东', '', '16', '1');
INSERT INTO `sys_codelist_copy` VALUES ('PROVINCE', 'ShangHai', '上海', '', '2', '1');
INSERT INTO `sys_codelist_copy` VALUES ('PROVINCE', 'ShanXi', '山西', '', '6', '1');
INSERT INTO `sys_codelist_copy` VALUES ('PROVINCE', 'SiChuan', '四川', '', '23', '1');
INSERT INTO `sys_codelist_copy` VALUES ('PROVINCE', 'TaiWan', '台湾', '', '34', '1');
INSERT INTO `sys_codelist_copy` VALUES ('PROVINCE', 'TianJin', '天津', '', '3', '1');
INSERT INTO `sys_codelist_copy` VALUES ('PROVINCE', 'XiangGang', '香港', '', '32', '1');
INSERT INTO `sys_codelist_copy` VALUES ('PROVINCE', 'XinJiang', '新疆', '', '31', '1');
INSERT INTO `sys_codelist_copy` VALUES ('PROVINCE', 'XiZang', '西藏', '', '26', '1');
INSERT INTO `sys_codelist_copy` VALUES ('PROVINCE', 'YunNan', '云南', '', '25', '1');
INSERT INTO `sys_codelist_copy` VALUES ('PROVINCE', 'ZheJiang', '浙江', '', '12', '1');
INSERT INTO `sys_codelist_copy` VALUES ('RES_TYPE', 'IMAGE', '图片文件', '', '2', '1');
INSERT INTO `sys_codelist_copy` VALUES ('RES_TYPE', 'ISO', '镜像文件', '', '1', '1');
INSERT INTO `sys_codelist_copy` VALUES ('RES_TYPE', 'VIDEO', '视频文件', '', '3', '1');
INSERT INTO `sys_codelist_copy` VALUES ('SYS_VALID_TYPE', '0', '无效', 'null', '2', '1');
INSERT INTO `sys_codelist_copy` VALUES ('SYS_VALID_TYPE', '1', '有效', 'null', '1', '1');
INSERT INTO `sys_codelist_copy` VALUES ('UNIT_TYPE', 'dept', '部门', '', '10', '1');
INSERT INTO `sys_codelist_copy` VALUES ('UNIT_TYPE', 'org', '机构', '', '20', '1');
INSERT INTO `sys_codelist_copy` VALUES ('UNIT_TYPE', 'post', '岗位', '', '30', '1');
INSERT INTO `sys_codelist_copy` VALUES ('USER_SEX', 'F', '女', '', '2', '1');
INSERT INTO `sys_codelist_copy` VALUES ('USER_SEX', 'M', '男', 'null', '1', '1');
INSERT INTO `sys_codelist_copy` VALUES ('VISIT_TYPE', '0', '预约拜访', '', '1', '1');
INSERT INTO `sys_codelist_copy` VALUES ('VISIT_TYPE', '1', '电话拜访', '', '3', '1');
INSERT INTO `sys_codelist_copy` VALUES ('VISIT_TYPE', '2', '邮件拜访', '', '4', '1');
INSERT INTO `sys_codelist_copy` VALUES ('VISIT_TYPE', '3', '陌生拜访', '', '2', '1');

-- ----------------------------
-- Table structure for `sys_codetype`
-- ----------------------------
DROP TABLE IF EXISTS `sys_codetype`;
CREATE TABLE `sys_codetype` (
  `TYPE_ID` varchar(32) NOT NULL,
  `TYPE_NAME` varchar(32) DEFAULT NULL,
  `TYPE_GROUP` varchar(32) DEFAULT NULL,
  `TYPE_DESC` varchar(128) DEFAULT NULL,
  `IS_CACHED` char(1) DEFAULT NULL,
  `IS_UNITEADMIN` char(1) DEFAULT NULL,
  `IS_EDITABLE` char(1) DEFAULT NULL,
  `LEGNTT_LIMIT` varchar(6) DEFAULT NULL,
  `CHARACTER_LIMIT` char(1) DEFAULT NULL,
  `EXTEND_SQL` char(1) DEFAULT NULL,
  `SQL_BODY` varchar(512) DEFAULT NULL,
  `SQL_COND` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`TYPE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_codetype
-- ----------------------------
INSERT INTO `sys_codetype` VALUES ('BOOL_DEFINE', '布尔定义', 'sys_code_define', '', 'Y', 'Y', 'Y', '1', 'C', '', '', '');
INSERT INTO `sys_codetype` VALUES ('CLUE_SOURCE', '来源方式', 'sys_code_define', null, 'Y', 'Y', 'Y', '', null, null, null, null);
INSERT INTO `sys_codetype` VALUES ('CLUE_STATE', '线索状态', 'sys_code_define', '', 'Y', 'Y', 'Y', '12', '', null, null, null);
INSERT INTO `sys_codetype` VALUES ('CODE_TYPE_GROUP', '编码类型分组', 'app_code_define', '编码类型分组', null, null, null, null, null, null, null, null);
INSERT INTO `sys_codetype` VALUES ('CUST_INDUSTRY', '行业', 'sys_code_define', '', 'Y', 'Y', 'Y', '10', '', 'N', '', '');
INSERT INTO `sys_codetype` VALUES ('CUST_NATURE', '性质', 'sys_code_define', '', 'Y', 'Y', 'Y', '10', '', 'N', '', '');
INSERT INTO `sys_codetype` VALUES ('CUST_SCALE', '规模', 'sys_code_define', '', 'Y', 'Y', 'Y', '24', '', 'N', '', '');
INSERT INTO `sys_codetype` VALUES ('CUST_STATE', '状态', 'sys_code_define', '', 'Y', 'Y', 'Y', '10', '', 'N', '', '');
INSERT INTO `sys_codetype` VALUES ('FUNCTION_TYPE', '功能类型', 'sys_code_define', null, null, null, null, null, null, null, null, null);
INSERT INTO `sys_codetype` VALUES ('GRP_STATE', '客户分组状态', 'sys_code_define', '', 'Y', 'Y', 'Y', '10', '', 'N', '', '');
INSERT INTO `sys_codetype` VALUES ('HANDLER_TYPE', '控制器类型', 'sys_code_define', '', 'N', 'Y', 'Y', '32', 'C', null, null, null);
INSERT INTO `sys_codetype` VALUES ('MENUTREE_CASCADE', '是否展开', 'sys_code_define', '', 'Y', 'Y', 'Y', '1', 'N', 'N', '', '');
INSERT INTO `sys_codetype` VALUES ('OPER_CTR_TYPE', '操作控制类型', 'sys_code_define', null, null, null, null, null, null, null, null, null);
INSERT INTO `sys_codetype` VALUES ('OPP_CONCERN_PRODUCT', '产品类型', 'sys_code_define', '', 'Y', 'Y', 'Y', '20', '', 'N', '', '');
INSERT INTO `sys_codetype` VALUES ('OPP_STATE', '商机状态', 'sys_code_define', '', 'Y', 'Y', 'Y', '10', '', 'N', '', '');
INSERT INTO `sys_codetype` VALUES ('ORDER_STATE', '订单状态', 'sys_code_define', '', 'Y', 'Y', 'Y', '10', '', 'N', '', '');
INSERT INTO `sys_codetype` VALUES ('ORG_TYPE', '组织资源', 'sys_code_define', '', 'Y', 'Y', 'Y', '20', '', 'N', '', '');
INSERT INTO `sys_codetype` VALUES ('PER_SEX', '个人性别类型', 'sys_code_define', '', 'Y', 'Y', 'Y', '10', '', 'N', '', '');
INSERT INTO `sys_codetype` VALUES ('PER_STATE', '潜在用户状态', 'sys_code_define', null, 'Y', 'Y', 'Y', '', null, null, null, null);
INSERT INTO `sys_codetype` VALUES ('POSITION_TYPE', '岗位类型', 'app_code_define', null, null, null, null, null, null, null, null, null);
INSERT INTO `sys_codetype` VALUES ('PROVINCE', '省份', 'sys_code_define', '', 'Y', 'Y', 'Y', '20', '', 'N', '', '');
INSERT INTO `sys_codetype` VALUES ('RES_TYPE', '资源类型', 'sys_code_define', '', 'N', 'Y', 'Y', '16', 'C', null, null, null);
INSERT INTO `sys_codetype` VALUES ('SYS_VALID_TYPE', '有效标识符', 'app_code_define', null, null, null, null, null, null, null, null, null);
INSERT INTO `sys_codetype` VALUES ('UNIT_TYPE', '单位类型', 'app_code_define', null, null, null, null, null, null, null, null, null);
INSERT INTO `sys_codetype` VALUES ('USER_SEX', '性别类型', 'sys_code_define', '', 'N', 'Y', 'Y', '16', 'C', null, null, null);
INSERT INTO `sys_codetype` VALUES ('VISIT_TYPE', '拜访类型', 'sys_code_define', '', 'Y', 'Y', 'Y', '10', '', 'N', '', '');

-- ----------------------------
-- Table structure for `sys_function`
-- ----------------------------
DROP TABLE IF EXISTS `sys_function`;
CREATE TABLE `sys_function` (
  `FUNC_ID` varchar(36) NOT NULL,
  `FUNC_NAME` varchar(64) DEFAULT NULL,
  `FUNC_TYPE` varchar(32) DEFAULT NULL,
  `MAIN_HANDLER` varchar(36) DEFAULT NULL,
  `FUNC_PID` varchar(36) DEFAULT NULL,
  `FUNC_STATE` char(1) DEFAULT NULL,
  `FUNC_SORT` int(11) DEFAULT NULL,
  `FUNC_DESC` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`FUNC_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_function
-- ----------------------------
INSERT INTO `sys_function` VALUES ('00000000-0000-0000-00000000000000000', '客户管理系统', 'funcmenu', null, null, '1', null, null);
INSERT INTO `sys_function` VALUES ('00000000-0000-0000-00000000000000001', '系统管理', 'funcmenu', '', '00000000-0000-0000-00000000000000000', '1', '101', '');
INSERT INTO `sys_function` VALUES ('029FB2F2-370F-46D5-A283-A22C8E49341C', '客户管理', 'funcmenu', '', '00000000-0000-0000-00000000000000000', '1', '99', '');
INSERT INTO `sys_function` VALUES ('1FEEF11B-605F-432E-83BE-AA2173C0EC59', '订单管理', 'funcnode', '1CD98EC9-334B-40EE-8AE4-CDDAB4E99B57', '029FB2F2-370F-46D5-A283-A22C8E49341C', '1', '9', '');
INSERT INTO `sys_function` VALUES ('20EBAE31-F49D-4A12-992D-089656CFE9A1', '线索管理', 'funcnode', '56000CEF-AAC9-4D09-835A-93247C75381E', '029FB2F2-370F-46D5-A283-A22C8E49341C', '1', '6', '');
INSERT INTO `sys_function` VALUES ('33CF8E06-1181-453B-ADF4-1F18ABC026CF', '客户分组', 'funcnode', '9F4DFA03-9114-4268-87C6-26B8EE3606D3', '029FB2F2-370F-46D5-A283-A22C8E49341C', '1', '2', '');
INSERT INTO `sys_function` VALUES ('3B1CB4FE-03E4-406B-99FA-B17520AA9C1E', '商机管理', 'funcnode', '093413BA-1ABC-464F-AEA0-13FF82591D22', '029FB2F2-370F-46D5-A283-A22C8E49341C', '1', '8', '');
INSERT INTO `sys_function` VALUES ('5FDEE3AB-6D32-4C5F-AD65-EF1EE5FFBAE6', '附件管理', 'funcnode', '1F617665-FC8B-4E8C-ABE4-540C363A17A8', '00000000-0000-0000-00000000000000001', '1', '7', '');
INSERT INTO `sys_function` VALUES ('67BA273A-DD31-48D0-B78C-1D60D5316074', '系统日志', 'funcnode', '494DF09B-7573-4CCA-85C1-97F4DC58C86B', '00000000-0000-0000-00000000000000001', '1', '6', null);
INSERT INTO `sys_function` VALUES ('692B0D37-2E66-4E82-92B4-E59BCF76EE76', '编码管理', 'funcnode', 'B4FE5722-9EA6-47D8-8770-D999A3F6A354', '00000000-0000-0000-00000000000000001', '1', '5', null);
INSERT INTO `sys_function` VALUES ('7FFE281D-6135-4180-84DD-8C2715E7EDC7', '潜在客户', 'funcnode', 'D7EB3E38-2988-4729-B810-62C539EAD445', '029FB2F2-370F-46D5-A283-A22C8E49341C', '1', '1', '');
INSERT INTO `sys_function` VALUES ('8C84B439-2788-4608-89C4-8F5AA076D124', '组织机构', 'funcnode', '439949F0-C6B7-49FF-8ED1-2A1B5062E7B9', '00000000-0000-0000-00000000000000001', '1', '1', null);
INSERT INTO `sys_function` VALUES ('A0334956-426E-4E49-831B-EB00E37285FD', '编码类型', 'funcnode', '9A16D554-F989-438A-B92D-C8C8AC6BF9B8', '00000000-0000-0000-00000000000000001', '1', '4', null);
INSERT INTO `sys_function` VALUES ('AA10D06A-C8FB-4C1F-8193-A81F1BCD438B', '拜访记录', 'funcnode', 'E97EEF76-3B5F-4863-B8B8-FA4FBC76E0B8', '029FB2F2-370F-46D5-A283-A22C8E49341C', '1', '7', '');
INSERT INTO `sys_function` VALUES ('C977BC31-C78F-4B16-B0C6-769783E46A06', '功能管理', 'funcnode', '46C52D33-8797-4251-951F-F7CA23C76BD7', '00000000-0000-0000-00000000000000001', '1', '3', null);
INSERT INTO `sys_function` VALUES ('D16F9D22-079C-45A7-9C71-7B15A5BDFE21', '客户信息', 'funcnode', 'AE104817-4754-49AA-9C29-BCB9EAFC9C22', '029FB2F2-370F-46D5-A283-A22C8E49341C', '1', '5', '');
INSERT INTO `sys_function` VALUES ('D3582A2A-3173-4F92-B1AD-2F999A2CBE18', '修改密码', 'funcnode', '88882DB9-967F-430E-BA9C-D0BBBBD2BD0C', '00000000-0000-0000-00000000000000001', '1', '8', '');
INSERT INTO `sys_function` VALUES ('DFE8BE4C-4024-4A7B-8DF2-630003832AE9', '角色管理', 'funcnode', '0CE03AD4-FF29-4FDB-8FEE-DA8AA38B649F', '00000000-0000-0000-00000000000000001', '1', '2', null);

-- ----------------------------
-- Table structure for `sys_handler`
-- ----------------------------
DROP TABLE IF EXISTS `sys_handler`;
CREATE TABLE `sys_handler` (
  `HANLER_ID` varchar(36) NOT NULL,
  `HANLER_CODE` varchar(64) DEFAULT NULL,
  `HANLER_TYPE` varchar(32) DEFAULT NULL,
  `HANLER_URL` varchar(128) DEFAULT NULL,
  `FUNC_ID` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`HANLER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_handler
-- ----------------------------
INSERT INTO `sys_handler` VALUES ('093413BA-1ABC-464F-AEA0-13FF82591D22', 'OppInfoManageList', 'MAIN', null, '3B1CB4FE-03E4-406B-99FA-B17520AA9C1E');
INSERT INTO `sys_handler` VALUES ('0CE03AD4-FF29-4FDB-8FEE-DA8AA38B649F', 'SecurityRoleTreeManage', 'MAIN', '', 'DFE8BE4C-4024-4A7B-8DF2-630003832AE9');
INSERT INTO `sys_handler` VALUES ('1CD98EC9-334B-40EE-8AE4-CDDAB4E99B57', 'OrderInfoManageList', 'MAIN', null, '1FEEF11B-605F-432E-83BE-AA2173C0EC59');
INSERT INTO `sys_handler` VALUES ('1F617665-FC8B-4E8C-ABE4-540C363A17A8', 'WcmGeneralGroup8ContentList', 'MAIN', null, '5FDEE3AB-6D32-4C5F-AD65-EF1EE5FFBAE6');
INSERT INTO `sys_handler` VALUES ('439949F0-C6B7-49FF-8ED1-2A1B5062E7B9', 'SecurityGroupList', 'MAIN', '', '8C84B439-2788-4608-89C4-8F5AA076D124');
INSERT INTO `sys_handler` VALUES ('46C52D33-8797-4251-951F-F7CA23C76BD7', 'FunctionTreeManage', 'MAIN', null, 'C977BC31-C78F-4B16-B0C6-769783E46A06');
INSERT INTO `sys_handler` VALUES ('494DF09B-7573-4CCA-85C1-97F4DC58C86B', 'SysLogQueryList', 'MAIN', null, '67BA273A-DD31-48D0-B78C-1D60D5316074');
INSERT INTO `sys_handler` VALUES ('56000CEF-AAC9-4D09-835A-93247C75381E', 'ClueInfoManageList', 'MAIN', null, '20EBAE31-F49D-4A12-992D-089656CFE9A1');
INSERT INTO `sys_handler` VALUES ('88882DB9-967F-430E-BA9C-D0BBBBD2BD0C', 'ModifyPassword', 'MAIN', null, 'D3582A2A-3173-4F92-B1AD-2F999A2CBE18');
INSERT INTO `sys_handler` VALUES ('9A16D554-F989-438A-B92D-C8C8AC6BF9B8', 'CodeTypeManageList', 'MAIN', null, 'A0334956-426E-4E49-831B-EB00E37285FD');
INSERT INTO `sys_handler` VALUES ('9F4DFA03-9114-4268-87C6-26B8EE3606D3', 'CustomerGroupManageList', 'MAIN', null, '33CF8E06-1181-453B-ADF4-1F18ABC026CF');
INSERT INTO `sys_handler` VALUES ('AE104817-4754-49AA-9C29-BCB9EAFC9C22', 'CustomerGroup8ContentList', 'MAIN', null, 'D16F9D22-079C-45A7-9C71-7B15A5BDFE21');
INSERT INTO `sys_handler` VALUES ('B4FE5722-9EA6-47D8-8770-D999A3F6A354', 'CodeListManageList', 'MAIN', null, '692B0D37-2E66-4E82-92B4-E59BCF76EE76');
INSERT INTO `sys_handler` VALUES ('D7EB3E38-2988-4729-B810-62C539EAD445', 'ProCustomer', 'MAIN', null, '7FFE281D-6135-4180-84DD-8C2715E7EDC7');
INSERT INTO `sys_handler` VALUES ('E97EEF76-3B5F-4863-B8B8-FA4FBC76E0B8', 'VisitManageList', 'MAIN', null, 'AA10D06A-C8FB-4C1F-8193-A81F1BCD438B');

-- ----------------------------
-- Table structure for `sys_log`
-- ----------------------------
DROP TABLE IF EXISTS `sys_log`;
CREATE TABLE `sys_log` (
  `ID` char(36) DEFAULT NULL,
  `OPER_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `IP_ADDTRESS` varchar(32) DEFAULT NULL,
  `USER_ID` varchar(32) DEFAULT NULL,
  `USER_NAME` varchar(32) DEFAULT NULL,
  `FUNC_NAME` varchar(64) DEFAULT NULL,
  `ACTION_TYPE` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_log
-- ----------------------------
INSERT INTO `sys_log` VALUES ('9087E401-4CD7-444F-86C5-20E904579460', '2022-06-29 16:58:06', '192.168.209.1', 'CS01', '???', '????', 'login');
INSERT INTO `sys_log` VALUES ('4787B211-DAD4-4CFB-BD99-48974CA5645B', '2022-07-05 09:17:41', '192.168.209.1', 'CS01', '???', '????', 'login');
INSERT INTO `sys_log` VALUES ('92E4F959-05B9-4972-BDD9-50BECCAADE46', '2022-07-05 11:51:16', '192.168.209.1', 'CS01', '???', '????', 'login');
INSERT INTO `sys_log` VALUES ('B5E831C9-F1BB-409C-B500-3B4E4ED4DE87', '2022-07-05 12:31:40', '192.168.209.1', 'CS01', '???', '????', 'login');
INSERT INTO `sys_log` VALUES ('FAD22ABD-229A-433C-A5E1-1E0E67DCC983', '2022-07-05 12:33:53', '192.168.209.1', 'CS01', '???', '????', 'login');
INSERT INTO `sys_log` VALUES ('40CB8C75-ED90-4AE0-868D-88D1E69B0A1A', '2022-07-05 13:32:54', '192.168.209.1', 'CS01', '???', '????', 'login');
INSERT INTO `sys_log` VALUES ('446DFF6F-3B61-45FC-A92B-8C466B289B7A', '2022-07-05 13:39:49', '192.168.209.1', 'admin', '???', '????', 'login');
INSERT INTO `sys_log` VALUES ('CCC96D12-6776-49CA-8835-75CEE4B05E45', '2022-07-05 13:49:23', '192.168.209.1', 'admin', '???', '????', 'logout');
INSERT INTO `sys_log` VALUES ('74BE274F-CE88-498D-A073-B4E16EF55A6D', '2022-07-05 13:49:30', '192.168.209.1', 'testzj', 'testzj', '????', 'login');
INSERT INTO `sys_log` VALUES ('BBB2F25E-7014-4438-9FF3-23833A5EEECE', '2022-07-05 13:49:44', '192.168.209.1', 'testzj', 'testzj', '????', 'logout');
INSERT INTO `sys_log` VALUES ('11C3B167-9240-41F0-86C0-6D525F43DA0C', '2022-07-05 13:50:01', '192.168.209.1', 'testzj', 'testzj', '????', 'login');
INSERT INTO `sys_log` VALUES ('03B8538A-1B20-4CAB-9B78-3D7D8AA27CF2', '2022-07-05 13:50:03', '192.168.209.1', 'testzj', 'testzj', '????', 'logout');
INSERT INTO `sys_log` VALUES ('01FD499A-A309-4744-8CEE-746B462257D8', '2022-07-05 13:50:14', '192.168.209.1', 'testxx', 'testxx', '????', 'login');
INSERT INTO `sys_log` VALUES ('FCDD6C45-E40C-4151-9D93-7EA4C696D05D', '2022-07-05 13:50:17', '192.168.209.1', 'testxx', 'testxx', '????', 'logout');
INSERT INTO `sys_log` VALUES ('B994C414-6A01-47DF-B39D-8C66347E18D4', '2022-07-05 13:50:26', '192.168.209.1', 'testdx', 'testdx', '????', 'login');
INSERT INTO `sys_log` VALUES ('F379AD5C-0D25-4CC3-A8C1-DF8B379939EF', '2022-07-05 13:50:28', '192.168.209.1', 'testdx', 'testdx', '????', 'logout');
INSERT INTO `sys_log` VALUES ('6289E725-6905-4703-8232-276DAAF147B0', '2022-07-05 13:50:37', '192.168.209.1', 'testxs', 'testxs', '????', 'login');
INSERT INTO `sys_log` VALUES ('6731B24C-FD82-44B9-B18D-87C6C1C0BB94', '2022-07-05 13:50:38', '192.168.209.1', 'testxs', 'testxs', '????', 'logout');
INSERT INTO `sys_log` VALUES ('746E018D-7048-43F1-A81E-8A2E7B3DDF24', '2022-07-05 13:50:52', '192.168.209.1', 'testxs', 'testxs', '????', 'login');
INSERT INTO `sys_log` VALUES ('7612DF9A-D4CE-450F-A2DA-81B9DF59EA0C', '2022-07-05 13:50:54', '192.168.209.1', 'testxs', 'testxs', '????', 'logout');
INSERT INTO `sys_log` VALUES ('8C7D6449-13EE-453A-9BC1-05B9F8D3FCDD', '2022-07-05 13:51:00', '192.168.209.1', 'admin', '???', '????', 'login');
INSERT INTO `sys_log` VALUES ('857F1E35-F5A5-42B1-B148-D7A5B6B090D0', '2022-07-05 14:01:53', '192.168.209.1', 'admin', '???', '????', 'logout');
INSERT INTO `sys_log` VALUES ('345D40AE-A50E-4AFB-A145-81A6385CA954', '2022-07-05 14:02:00', '192.168.209.1', 'testxx', 'testxx', '????', 'login');
INSERT INTO `sys_log` VALUES ('D57CC02F-D392-41F8-9206-5F07C4421271', '2022-07-05 14:04:58', '192.168.209.1', 'testxx', 'testxx', '????', 'logout');
INSERT INTO `sys_log` VALUES ('E7169AF9-8747-4648-9138-427974603776', '2022-07-05 14:05:08', '192.168.209.1', 'testdx', 'testdx', '????', 'login');
INSERT INTO `sys_log` VALUES ('3BDF111B-4398-4F12-BD05-F57DE9A412C0', '2022-07-05 14:06:04', '192.168.209.1', 'testdx', 'testdx', '????', 'logout');
INSERT INTO `sys_log` VALUES ('5E69B968-7192-4A97-ADD7-147DBED1D81B', '2022-07-05 14:06:11', '192.168.209.1', 'testzj', 'testzj', '????', 'login');
INSERT INTO `sys_log` VALUES ('294F98C2-399D-4AD2-92A9-DB7672A066D6', '2022-07-05 14:06:46', '192.168.209.1', 'testzj', 'testzj', '????', 'logout');
INSERT INTO `sys_log` VALUES ('DC1DE838-0747-4A09-9F77-9CF771BEE9B7', '2022-07-05 14:06:53', '192.168.209.1', 'testzj', 'testzj', '????', 'login');
INSERT INTO `sys_log` VALUES ('CFCE1DF3-A34A-4EAA-84D8-285435E98AA2', '2022-07-05 14:07:20', '192.168.209.1', 'testzj', 'testzj', '????', 'logout');
INSERT INTO `sys_log` VALUES ('90387905-6AB5-4080-A1DB-EE139BD48F4B', '2022-07-05 14:07:28', '192.168.209.1', 'testxs', 'testxs', '????', 'login');
INSERT INTO `sys_log` VALUES ('3D083045-A8B7-4E01-900C-352A6B1EEA2F', '2022-07-05 14:26:14', '192.168.209.1', 'testxs', 'testxs', '????', 'logout');
INSERT INTO `sys_log` VALUES ('FF63DD1C-9E85-4B5B-B7DB-4DFB2CDFA1B2', '2022-07-05 14:26:22', '192.168.209.1', 'testzj', 'testzj', '????', 'login');
INSERT INTO `sys_log` VALUES ('76F749AC-0297-4BD6-9472-6993A4D00FBC', '2022-07-05 14:26:37', '192.168.209.1', 'testzj', 'testzj', '????', 'logout');
INSERT INTO `sys_log` VALUES ('4823459C-840D-4BAE-BD8C-8E31C134F74B', '2022-07-05 14:26:44', '192.168.209.1', 'testxs', 'testxs', '????', 'login');
INSERT INTO `sys_log` VALUES ('5B86D548-6085-4B4C-87FB-5324A7058971', '2022-07-05 14:30:04', '192.168.209.1', 'testxs', 'testxs', '????', 'logout');
INSERT INTO `sys_log` VALUES ('AAECE659-6D03-468B-8103-B870E4524F09', '2022-07-05 14:30:11', '192.168.209.1', 'testzj', 'testzj', '????', 'login');
INSERT INTO `sys_log` VALUES ('E0EB3391-8B54-421F-9D90-47CBAB710499', '2022-07-05 14:54:05', '192.168.209.1', 'testzj', 'testzj', '????', 'logout');
INSERT INTO `sys_log` VALUES ('4C0FCE1F-63FE-4945-9F9A-7D578C4ADFCD', '2022-07-05 14:54:10', '192.168.209.1', 'testzj', 'testzj', '????', 'login');
INSERT INTO `sys_log` VALUES ('21D532EA-0348-4816-B9FF-B722D18EEE1F', '2022-07-05 14:58:01', '192.168.209.1', 'testzj', 'testzj', '????', 'logout');
INSERT INTO `sys_log` VALUES ('723C5E99-240A-41F0-AE2A-EA88A021731F', '2022-07-05 14:58:07', '192.168.209.1', 'testxs', 'testxs', '????', 'login');
INSERT INTO `sys_log` VALUES ('9DC835CB-F1D2-414D-B8AB-B3B1A6B7DF98', '2022-07-05 14:59:37', '192.168.209.1', 'testxs', 'testxs', '????', 'logout');
INSERT INTO `sys_log` VALUES ('C56A0158-260B-4BCC-958D-2F7A45A1104F', '2022-07-05 14:59:55', '192.168.209.1', 'testzj', 'testzj', '????', 'login');
INSERT INTO `sys_log` VALUES ('5150787C-C7AF-47C0-9D03-9805CAE81966', '2022-07-05 15:00:23', '192.168.209.1', 'testzj', 'testzj', '????', 'logout');
INSERT INTO `sys_log` VALUES ('80C1C79D-6509-4D8B-ADE2-5BAE6C4C216B', '2022-07-05 15:00:28', '192.168.209.1', 'testxs', 'testxs', '????', 'login');
INSERT INTO `sys_log` VALUES ('720A3B49-89EF-4F86-A38A-58D8E9C3D386', '2022-07-05 15:02:30', '192.168.209.1', 'testxs', 'testxs', '????', 'logout');
INSERT INTO `sys_log` VALUES ('7B4C1B77-AF62-4A21-810A-151D31286474', '2022-07-05 15:02:36', '192.168.209.1', 'testzj', 'testzj', '????', 'login');
INSERT INTO `sys_log` VALUES ('C03DD871-0164-451F-8FE3-F7E3E5562FAB', '2022-07-05 15:03:42', '192.168.209.1', 'testzj', 'testzj', '????', 'logout');
INSERT INTO `sys_log` VALUES ('DD8C883D-91B7-4D68-A13C-4D2DEC8AAF91', '2022-07-05 15:03:49', '192.168.209.1', 'testxs', 'testxs', '????', 'login');
INSERT INTO `sys_log` VALUES ('279FE0AB-C586-4CC5-8D01-13280CA1D5B1', '2022-07-05 15:06:11', '192.168.209.1', 'testxs', 'testxs', '????', 'logout');
INSERT INTO `sys_log` VALUES ('8AD4A676-3D96-4C03-BFC3-56C097E512E2', '2022-07-05 15:06:17', '192.168.209.1', 'testzj', 'testzj', '????', 'login');
INSERT INTO `sys_log` VALUES ('EFF3A89F-120F-4477-A7D0-3A629BAAD7E9', '2022-07-05 15:06:51', '192.168.209.1', 'testzj', 'testzj', '????', 'logout');
INSERT INTO `sys_log` VALUES ('528F5C3E-B6E6-448A-A7BB-EB9C69E53A54', '2022-07-05 15:06:56', '192.168.209.1', 'testxs', 'testxs', '????', 'login');
INSERT INTO `sys_log` VALUES ('698D63C3-377F-46A0-A1AC-5D0B274D891E', '2022-07-05 15:09:11', '192.168.209.1', 'testxs', 'testxs', '????', 'logout');
INSERT INTO `sys_log` VALUES ('0456796E-0448-4E76-BA81-1A3106E9A2FD', '2022-07-05 15:09:17', '192.168.209.1', 'testzj', 'testzj', '????', 'login');
INSERT INTO `sys_log` VALUES ('3EDDD127-2B48-423E-A16D-4C29BD80B360', '2022-07-05 15:09:39', '192.168.209.1', 'testzj', 'testzj', '????', 'logout');
INSERT INTO `sys_log` VALUES ('7BEEF108-C6F9-47E5-AD76-5C466D04735C', '2022-07-05 15:09:45', '192.168.209.1', 'testxs', 'testxs', '????', 'login');
INSERT INTO `sys_log` VALUES ('A52AEC0C-FA66-411D-AB6E-02DD53AD075C', '2022-07-05 16:03:05', '192.168.209.1', 'testzj', 'testzj', '????', 'login');
INSERT INTO `sys_log` VALUES ('C46DB96B-0BFA-44CE-B8BE-29821DE28C32', '2022-07-05 16:29:39', '192.168.209.1', 'testzj', 'testzj', '????', 'logout');
INSERT INTO `sys_log` VALUES ('D1F88A32-915A-462F-8085-59A33C5E8BE6', '2022-07-05 16:29:47', '192.168.209.1', 'testxx', 'testxx', '????', 'login');
INSERT INTO `sys_log` VALUES ('BE8E9ACB-B019-432E-A72F-560175701BC5', '2022-07-05 16:30:49', '192.168.209.1', 'testxx', 'testxx', '????', 'logout');
INSERT INTO `sys_log` VALUES ('3C98808B-D3EE-4902-B25B-5592FA15166F', '2022-07-05 16:30:56', '192.168.209.1', 'testdx', 'testdx', '????', 'login');
INSERT INTO `sys_log` VALUES ('8E8F6D7A-99FE-4B4B-9C81-AB56DB5B7363', '2022-07-05 16:32:17', '192.168.209.1', 'testdx', 'testdx', '????', 'logout');
INSERT INTO `sys_log` VALUES ('A503A6B8-14F9-4207-82D0-C8D36FDD4202', '2022-07-05 16:32:24', '192.168.209.1', 'testzj', 'testzj', '????', 'login');
INSERT INTO `sys_log` VALUES ('7639B0AF-CCCC-4613-846E-9C8AEFD95459', '2022-07-05 16:37:08', '192.168.209.1', 'testzj', 'testzj', '????', 'logout');
INSERT INTO `sys_log` VALUES ('E61D255F-B310-48B2-AF29-97E8C24CD0EA', '2022-07-05 16:37:16', '192.168.209.1', 'testxs', 'testxs', '????', 'login');
INSERT INTO `sys_log` VALUES ('256900CE-6E93-4A62-9E63-D936F9D6017B', '2022-07-05 16:38:16', '192.168.209.1', 'testxs', 'testxs', '????', 'logout');
INSERT INTO `sys_log` VALUES ('5E49A4D1-C1B2-47D0-97AF-976903AC931B', '2022-07-05 16:38:23', '192.168.209.1', 'testzj', 'testzj', '????', 'login');
INSERT INTO `sys_log` VALUES ('AEE42241-C6B2-4792-8B10-B8D24A8270F6', '2022-07-05 16:39:29', '192.168.209.1', 'testzj', 'testzj', '????', 'logout');
INSERT INTO `sys_log` VALUES ('F87DCFD1-874A-4954-A446-0428E5116628', '2022-07-05 16:39:34', '192.168.209.1', 'testxs', 'testxs', '????', 'login');
INSERT INTO `sys_log` VALUES ('D83DA5DB-8968-46FA-A299-F9656F451242', '2022-07-05 18:34:40', '192.168.209.1', 'testxs', 'testxs', '????', 'login');
INSERT INTO `sys_log` VALUES ('8000864D-AE12-4594-8BA4-0211FF8D9C9E', '2022-07-05 18:34:51', '192.168.209.1', 'testxs', 'testxs', '????', 'logout');
INSERT INTO `sys_log` VALUES ('10979D1F-259A-4ABD-B11C-FE480DA75478', '2022-07-05 18:34:58', '192.168.209.1', 'testzj', 'testzj', '????', 'login');
INSERT INTO `sys_log` VALUES ('F7588553-D92C-48FE-B125-0AE86B2F4A7F', '2022-07-05 18:35:05', '192.168.209.1', 'testzj', 'testzj', '????', 'logout');
INSERT INTO `sys_log` VALUES ('5E98B51B-E7E7-4F79-9533-7EF23414B4F2', '2022-07-05 18:35:11', '192.168.209.1', 'testxs', 'testxs', '????', 'login');
INSERT INTO `sys_log` VALUES ('D62171F6-E71A-49FF-AB30-05E00D557757', '2022-07-05 18:36:19', '192.168.209.1', 'testxs', 'testxs', '????', 'logout');
INSERT INTO `sys_log` VALUES ('45B89F2F-F1B4-4DCB-BDD9-9B6E9E41AE47', '2022-07-05 18:36:24', '192.168.209.1', 'testzj', 'testzj', '????', 'login');
INSERT INTO `sys_log` VALUES ('7150281E-BD1D-400F-9AD8-F20F9EFF4EFD', '2022-07-05 18:36:48', '192.168.209.1', 'testzj', 'testzj', '????', 'logout');
INSERT INTO `sys_log` VALUES ('2F50587B-A307-4FB4-B1AE-0750A9052518', '2022-07-05 18:36:56', '192.168.209.1', 'testxs', 'testxs', '????', 'login');
INSERT INTO `sys_log` VALUES ('CE63DC22-102E-4B0C-AD1B-CC1D154D89D8', '2022-07-05 18:38:42', '192.168.209.1', 'testxs', 'testxs', '????', 'logout');
INSERT INTO `sys_log` VALUES ('03709573-B207-47AE-96D7-F66A9513997E', '2022-07-05 18:38:48', '192.168.209.1', 'testzj', 'testzj', '????', 'login');
INSERT INTO `sys_log` VALUES ('80D92F3B-3785-40D9-AF09-68031B308DB9', '2022-07-06 09:13:11', '192.168.209.1', 'testzj', 'testzj', '????', 'login');
INSERT INTO `sys_log` VALUES ('9FEE61EF-B95C-42D7-95DE-507E925D082E', '2022-07-07 08:56:21', '192.168.209.1', 'testzj', 'testzj', '????', 'login');
INSERT INTO `sys_log` VALUES ('0FF94F67-AE4D-43E9-AB1D-F53A3783105B', '2022-07-07 10:11:09', '192.168.209.1', 'testzj', 'testzj', '????', 'login');
INSERT INTO `sys_log` VALUES ('CF24EF60-AB49-4D89-BA0A-FD5CFD49BD37', '2022-07-07 15:42:09', '192.168.209.1', 'testzj', 'testzj', '????', 'login');
INSERT INTO `sys_log` VALUES ('A0BEEE40-3CEE-497F-9BAB-4CD2D7CC4CF8', '2022-07-07 19:01:23', '192.168.209.1', 'testxs', 'testxs', '????', 'login');
INSERT INTO `sys_log` VALUES ('30965817-3B62-4E5D-B165-326A686AFBF6', '2022-07-07 19:01:43', '192.168.209.1', 'testxs', 'testxs', '????', 'logout');
INSERT INTO `sys_log` VALUES ('249B11A6-35D7-4AA3-804C-1A60323AC362', '2022-07-07 19:01:51', '192.168.209.1', 'testzj', 'testzj', '????', 'login');
INSERT INTO `sys_log` VALUES ('E1D3D8CD-2938-4348-9E76-DBA462074976', '2022-07-07 19:02:16', '192.168.209.1', 'testzj', 'testzj', '????', 'logout');
INSERT INTO `sys_log` VALUES ('87E9FBA6-FDC0-4AEE-9BE3-439E26D20932', '2022-07-07 19:02:22', '192.168.209.1', 'testxs', 'testxs', '????', 'login');
INSERT INTO `sys_log` VALUES ('7A86A66D-E2D7-453C-8567-1014593C1076', '2022-07-07 19:05:45', '192.168.209.1', 'testxs', 'testxs', '????', 'logout');
INSERT INTO `sys_log` VALUES ('B95B0880-4D13-4C2A-84EB-C7380E9CDDB8', '2022-07-07 19:05:51', '192.168.209.1', 'testxx', 'testxx', '????', 'login');
INSERT INTO `sys_log` VALUES ('9E4BE93B-7684-402E-A28A-F83720FADA8E', '2022-07-07 19:06:10', '192.168.209.1', 'testxx', 'testxx', '????', 'logout');
INSERT INTO `sys_log` VALUES ('E8702688-4789-4289-996D-4055657FCFD8', '2022-07-07 19:06:18', '192.168.209.1', 'testzj', 'testzj', '????', 'login');
INSERT INTO `sys_log` VALUES ('39C47EE2-97C9-47AB-905D-F3999FA5DC55', '2022-07-07 19:09:21', '192.168.209.1', 'testzj', 'testzj', '????', 'logout');
INSERT INTO `sys_log` VALUES ('84EF9D9D-8FC0-410F-A80C-3D50530C0416', '2022-07-07 19:09:26', '192.168.209.1', 'testzj', 'testzj', '????', 'login');
INSERT INTO `sys_log` VALUES ('9C5B4687-39C6-4A54-8EAD-1DD260954A0E', '2022-07-07 19:10:03', '192.168.209.1', 'testzj', 'testzj', '????', 'logout');
INSERT INTO `sys_log` VALUES ('EAF7C8AC-A154-48F6-ADB9-D266D7308E67', '2022-07-07 19:10:09', '192.168.209.1', 'testxs', 'testxs', '????', 'login');
INSERT INTO `sys_log` VALUES ('755597F3-3B01-4CD5-8A6A-DEA7739F3003', '2022-07-08 09:23:35', '192.168.209.1', 'testzj', 'testzj', '????', 'login');

-- ----------------------------
-- Table structure for `sys_onlinecount`
-- ----------------------------
DROP TABLE IF EXISTS `sys_onlinecount`;
CREATE TABLE `sys_onlinecount` (
  `IPADDRRESS` varchar(64) NOT NULL,
  `ONLINECOUNT` int(11) DEFAULT NULL,
  PRIMARY KEY (`IPADDRRESS`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_onlinecount
-- ----------------------------

-- ----------------------------
-- Table structure for `sys_operation`
-- ----------------------------
DROP TABLE IF EXISTS `sys_operation`;
CREATE TABLE `sys_operation` (
  `OPER_ID` char(36) NOT NULL,
  `HANLER_ID` varchar(36) DEFAULT NULL,
  `OPER_CODE` varchar(64) DEFAULT NULL,
  `OPER_NAME` varchar(64) DEFAULT NULL,
  `OPER_ACTIONTPYE` varchar(64) DEFAULT NULL,
  `OPER_SORT` int(11) DEFAULT NULL,
  PRIMARY KEY (`OPER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_operation
-- ----------------------------
INSERT INTO `sys_operation` VALUES ('3EC41FB8-ED98-41F3-B86D-F7473AEDD002', '494DF09B-7573-4CCA-85C1-97F4DC58C86B', 'viewDetail', '查看', 'viewDetail', '1');
INSERT INTO `sys_operation` VALUES ('6BF7A157-D333-4F40-8612-F61D3FD4D258', '494DF09B-7573-4CCA-85C1-97F4DC58C86B', 'refreshImgBtn', '刷新', 'refresh', '2');

-- ----------------------------
-- Table structure for `wcm_general_group`
-- ----------------------------
DROP TABLE IF EXISTS `wcm_general_group`;
CREATE TABLE `wcm_general_group` (
  `GRP_ID` varchar(36) NOT NULL,
  `GRP_NAME` varchar(64) DEFAULT NULL,
  `GRP_PID` varchar(36) DEFAULT NULL,
  `GRP_ORDERNO` int(11) DEFAULT NULL,
  `GRP_IS_SYSTEM` varchar(32) DEFAULT NULL,
  `GRP_RES_TYPE_DESC` varchar(32) DEFAULT NULL,
  `GRP_RES_TYPE_EXTS` varchar(128) DEFAULT NULL,
  `GRP_RES_SIZE_LIMIT` varchar(32) DEFAULT NULL,
  `GRP_DESC` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`GRP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wcm_general_group
-- ----------------------------
INSERT INTO `wcm_general_group` VALUES ('77777777-7777-7777-7777-777777777777', '附件目录', '', null, '', '', '', '', '');
INSERT INTO `wcm_general_group` VALUES ('A6018D88-8345-46EE-A452-CE362FAC72E2', '视频文件', '77777777-7777-7777-7777-777777777777', '1', 'Y', '视频', '*.mp4;*.3gp;*.wmv;*.avi;*.rm;*.rmvb;*.flv', '100MB', '');
INSERT INTO `wcm_general_group` VALUES ('CF35D1E6-102E-428A-B39C-0072D491D5B1', '业务附件', '77777777-7777-7777-7777-777777777777', '2', 'Y', '所有资源', '*.*', '2MB', '');

-- ----------------------------
-- Table structure for `wcm_general_resource`
-- ----------------------------
DROP TABLE IF EXISTS `wcm_general_resource`;
CREATE TABLE `wcm_general_resource` (
  `RES_ID` varchar(36) NOT NULL,
  `GRP_ID` varchar(36) DEFAULT NULL,
  `RES_NAME` varchar(64) DEFAULT NULL,
  `RES_SHAREABLE` varchar(32) DEFAULT NULL,
  `RES_LOCATION` varchar(256) DEFAULT NULL,
  `RES_SIZE` varchar(64) DEFAULT NULL,
  `RES_SUFFIX` varchar(32) DEFAULT NULL,
  `RES_DESCRIPTION` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`RES_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wcm_general_resource
-- ----------------------------
