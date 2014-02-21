/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50703
Source Host           : localhost:3306
Source Database       : justplay

Target Server Type    : MYSQL
Target Server Version : 50703
File Encoding         : 65001

Date: 2014-02-19 21:24:00
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for jp_city
-- ----------------------------
DROP TABLE IF EXISTS `jp_city`;
CREATE TABLE `jp_city` (
  `city_id` int(11) NOT NULL COMMENT '城市编号',
  `city_name` varchar(50) CHARACTER SET gbk NOT NULL COMMENT '城市名',
  `province_id` int(11) NOT NULL COMMENT '省份编号',
  PRIMARY KEY (`city_name`),
  KEY `province_id` (`province_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='城市表';

-- ----------------------------
-- Records of jp_city
-- ----------------------------
INSERT INTO `jp_city` VALUES ('1', '北京', '1');
INSERT INTO `jp_city` VALUES ('1', '天津', '2');
INSERT INTO `jp_city` VALUES ('1', '上海', '3');
INSERT INTO `jp_city` VALUES ('1', '重庆', '4');
INSERT INTO `jp_city` VALUES ('1', '石家庄', '5');
INSERT INTO `jp_city` VALUES ('2', '唐山', '5');
INSERT INTO `jp_city` VALUES ('3', '秦皇岛', '5');
INSERT INTO `jp_city` VALUES ('4', '邯郸', '5');
INSERT INTO `jp_city` VALUES ('5', '邢台', '5');
INSERT INTO `jp_city` VALUES ('6', '保定', '5');
INSERT INTO `jp_city` VALUES ('7', '张家口', '5');
INSERT INTO `jp_city` VALUES ('8', '承德', '5');
INSERT INTO `jp_city` VALUES ('9', '沧州', '5');
INSERT INTO `jp_city` VALUES ('10', '廊坊', '5');
INSERT INTO `jp_city` VALUES ('11', '衡水', '5');
INSERT INTO `jp_city` VALUES ('1', '太原', '6');
INSERT INTO `jp_city` VALUES ('2', '大同', '6');
INSERT INTO `jp_city` VALUES ('3', '阳泉', '6');
INSERT INTO `jp_city` VALUES ('4', '长治', '6');
INSERT INTO `jp_city` VALUES ('5', '晋城', '6');
INSERT INTO `jp_city` VALUES ('6', '朔州', '6');
INSERT INTO `jp_city` VALUES ('7', '晋中', '6');
INSERT INTO `jp_city` VALUES ('8', '运城', '6');
INSERT INTO `jp_city` VALUES ('9', '忻州', '6');
INSERT INTO `jp_city` VALUES ('10', '临汾', '6');
INSERT INTO `jp_city` VALUES ('11', '吕梁', '6');
INSERT INTO `jp_city` VALUES ('1', '台北市', '7');
INSERT INTO `jp_city` VALUES ('2', '高雄市', '7');
INSERT INTO `jp_city` VALUES ('3', '基隆', '7');
INSERT INTO `jp_city` VALUES ('4', '台中市', '7');
INSERT INTO `jp_city` VALUES ('5', '台南市', '7');
INSERT INTO `jp_city` VALUES ('6', '新竹市', '7');
INSERT INTO `jp_city` VALUES ('7', '嘉义市', '7');
INSERT INTO `jp_city` VALUES ('8', '台北县', '7');
INSERT INTO `jp_city` VALUES ('9', '宜兰', '7');
INSERT INTO `jp_city` VALUES ('10', '桃园', '7');
INSERT INTO `jp_city` VALUES ('11', '新竹县', '7');
INSERT INTO `jp_city` VALUES ('12', '苗栗', '7');
INSERT INTO `jp_city` VALUES ('13', '台中县', '7');
INSERT INTO `jp_city` VALUES ('14', '彰化', '7');
INSERT INTO `jp_city` VALUES ('15', '南投', '7');
INSERT INTO `jp_city` VALUES ('16', '云林', '7');
INSERT INTO `jp_city` VALUES ('17', '嘉义县', '7');
INSERT INTO `jp_city` VALUES ('18', '台南县', '7');
INSERT INTO `jp_city` VALUES ('19', '高雄', '7');
INSERT INTO `jp_city` VALUES ('20', '屏东', '7');
INSERT INTO `jp_city` VALUES ('21', '澎湖', '7');
INSERT INTO `jp_city` VALUES ('22', '台东', '7');
INSERT INTO `jp_city` VALUES ('23', '花莲', '7');
INSERT INTO `jp_city` VALUES ('1', '沈阳', '8');
INSERT INTO `jp_city` VALUES ('2', '大连', '8');
INSERT INTO `jp_city` VALUES ('3', '鞍山', '8');
INSERT INTO `jp_city` VALUES ('4', '抚顺', '8');
INSERT INTO `jp_city` VALUES ('5', '本溪', '8');
INSERT INTO `jp_city` VALUES ('6', '丹东', '8');
INSERT INTO `jp_city` VALUES ('7', '锦州', '8');
INSERT INTO `jp_city` VALUES ('8', '营口', '8');
INSERT INTO `jp_city` VALUES ('9', '阜新', '8');
INSERT INTO `jp_city` VALUES ('10', '辽阳', '8');
INSERT INTO `jp_city` VALUES ('11', '盘锦', '8');
INSERT INTO `jp_city` VALUES ('12', '铁岭', '8');
INSERT INTO `jp_city` VALUES ('13', '朝阳', '8');
INSERT INTO `jp_city` VALUES ('14', '葫芦岛', '8');
INSERT INTO `jp_city` VALUES ('1', '长春', '9');
INSERT INTO `jp_city` VALUES ('2', '吉林', '9');
INSERT INTO `jp_city` VALUES ('3', '四平', '9');
INSERT INTO `jp_city` VALUES ('4', '辽源', '9');
INSERT INTO `jp_city` VALUES ('5', '通化', '9');
INSERT INTO `jp_city` VALUES ('6', '白山', '9');
INSERT INTO `jp_city` VALUES ('7', '松原', '9');
INSERT INTO `jp_city` VALUES ('8', '白城', '9');
INSERT INTO `jp_city` VALUES ('9', '延边', '9');
INSERT INTO `jp_city` VALUES ('1', '哈尔滨', '10');
INSERT INTO `jp_city` VALUES ('2', '齐齐哈尔', '10');
INSERT INTO `jp_city` VALUES ('3', '鹤岗', '10');
INSERT INTO `jp_city` VALUES ('4', '双鸭山', '10');
INSERT INTO `jp_city` VALUES ('5', '鸡西', '10');
INSERT INTO `jp_city` VALUES ('6', '大庆', '10');
INSERT INTO `jp_city` VALUES ('7', '伊春', '10');
INSERT INTO `jp_city` VALUES ('8', '牡丹江', '10');
INSERT INTO `jp_city` VALUES ('9', '佳木斯', '10');
INSERT INTO `jp_city` VALUES ('10', '七台河', '10');
INSERT INTO `jp_city` VALUES ('11', '黑河', '10');
INSERT INTO `jp_city` VALUES ('12', '绥化', '10');
INSERT INTO `jp_city` VALUES ('13', '大兴安岭', '10');
INSERT INTO `jp_city` VALUES ('1', '南京', '11');
INSERT INTO `jp_city` VALUES ('2', '无锡', '11');
INSERT INTO `jp_city` VALUES ('3', '徐州', '11');
INSERT INTO `jp_city` VALUES ('4', '常州', '11');
INSERT INTO `jp_city` VALUES ('5', '苏州', '11');
INSERT INTO `jp_city` VALUES ('6', '南通', '11');
INSERT INTO `jp_city` VALUES ('7', '连云港', '11');
INSERT INTO `jp_city` VALUES ('8', '淮安', '11');
INSERT INTO `jp_city` VALUES ('9', '盐城', '11');
INSERT INTO `jp_city` VALUES ('10', '扬州', '11');
INSERT INTO `jp_city` VALUES ('11', '镇江', '11');
INSERT INTO `jp_city` VALUES ('12', '泰州', '11');
INSERT INTO `jp_city` VALUES ('13', '宿迁', '11');
INSERT INTO `jp_city` VALUES ('1', '杭州', '12');
INSERT INTO `jp_city` VALUES ('2', '宁波', '12');
INSERT INTO `jp_city` VALUES ('3', '温州', '12');
INSERT INTO `jp_city` VALUES ('4', '嘉兴', '12');
INSERT INTO `jp_city` VALUES ('5', '湖州', '12');
INSERT INTO `jp_city` VALUES ('6', '绍兴', '12');
INSERT INTO `jp_city` VALUES ('7', '金华', '12');
INSERT INTO `jp_city` VALUES ('8', '衢州', '12');
INSERT INTO `jp_city` VALUES ('9', '舟山', '12');
INSERT INTO `jp_city` VALUES ('10', '台州', '12');
INSERT INTO `jp_city` VALUES ('11', '丽水', '12');
INSERT INTO `jp_city` VALUES ('1', '合肥', '13');
INSERT INTO `jp_city` VALUES ('2', '芜湖', '13');
INSERT INTO `jp_city` VALUES ('3', '蚌埠', '13');
INSERT INTO `jp_city` VALUES ('4', '淮南', '13');
INSERT INTO `jp_city` VALUES ('5', '马鞍山', '13');
INSERT INTO `jp_city` VALUES ('6', '淮北', '13');
INSERT INTO `jp_city` VALUES ('7', '铜陵', '13');
INSERT INTO `jp_city` VALUES ('8', '安庆', '13');
INSERT INTO `jp_city` VALUES ('9', '黄山', '13');
INSERT INTO `jp_city` VALUES ('10', '滁州', '13');
INSERT INTO `jp_city` VALUES ('11', '阜阳', '13');
INSERT INTO `jp_city` VALUES ('12', '宿州', '13');
INSERT INTO `jp_city` VALUES ('13', '巢湖', '13');
INSERT INTO `jp_city` VALUES ('14', '六安', '13');
INSERT INTO `jp_city` VALUES ('15', '亳州', '13');
INSERT INTO `jp_city` VALUES ('16', '池州', '13');
INSERT INTO `jp_city` VALUES ('17', '宣城', '13');
INSERT INTO `jp_city` VALUES ('1', '福州', '14');
INSERT INTO `jp_city` VALUES ('2', '厦门', '14');
INSERT INTO `jp_city` VALUES ('3', '莆田', '14');
INSERT INTO `jp_city` VALUES ('4', '三明', '14');
INSERT INTO `jp_city` VALUES ('5', '泉州', '14');
INSERT INTO `jp_city` VALUES ('6', '漳州', '14');
INSERT INTO `jp_city` VALUES ('7', '南平', '14');
INSERT INTO `jp_city` VALUES ('8', '龙岩', '14');
INSERT INTO `jp_city` VALUES ('9', '宁德', '14');
INSERT INTO `jp_city` VALUES ('1', '南昌', '15');
INSERT INTO `jp_city` VALUES ('2', '景德镇', '15');
INSERT INTO `jp_city` VALUES ('3', '萍乡', '15');
INSERT INTO `jp_city` VALUES ('4', '九江', '15');
INSERT INTO `jp_city` VALUES ('5', '新余', '15');
INSERT INTO `jp_city` VALUES ('6', '鹰潭', '15');
INSERT INTO `jp_city` VALUES ('7', '赣州', '15');
INSERT INTO `jp_city` VALUES ('8', '吉安', '15');
INSERT INTO `jp_city` VALUES ('9', '宜春', '15');
INSERT INTO `jp_city` VALUES ('10', '抚州', '15');
INSERT INTO `jp_city` VALUES ('11', '上饶', '15');
INSERT INTO `jp_city` VALUES ('1', '济南', '16');
INSERT INTO `jp_city` VALUES ('2', '青岛', '16');
INSERT INTO `jp_city` VALUES ('3', '淄博', '16');
INSERT INTO `jp_city` VALUES ('4', '枣庄', '16');
INSERT INTO `jp_city` VALUES ('5', '东营', '16');
INSERT INTO `jp_city` VALUES ('6', '烟台', '16');
INSERT INTO `jp_city` VALUES ('7', '潍坊', '16');
INSERT INTO `jp_city` VALUES ('8', '济宁', '16');
INSERT INTO `jp_city` VALUES ('9', '泰安', '16');
INSERT INTO `jp_city` VALUES ('10', '威海', '16');
INSERT INTO `jp_city` VALUES ('11', '日照', '16');
INSERT INTO `jp_city` VALUES ('12', '莱芜', '16');
INSERT INTO `jp_city` VALUES ('13', '临沂', '16');
INSERT INTO `jp_city` VALUES ('14', '德州', '16');
INSERT INTO `jp_city` VALUES ('15', '聊城', '16');
INSERT INTO `jp_city` VALUES ('16', '滨州', '16');
INSERT INTO `jp_city` VALUES ('17', '菏泽', '16');
INSERT INTO `jp_city` VALUES ('1', '郑州', '17');
INSERT INTO `jp_city` VALUES ('2', '开封', '17');
INSERT INTO `jp_city` VALUES ('3', '洛阳', '17');
INSERT INTO `jp_city` VALUES ('4', '平顶山', '17');
INSERT INTO `jp_city` VALUES ('5', '安阳', '17');
INSERT INTO `jp_city` VALUES ('6', '鹤壁', '17');
INSERT INTO `jp_city` VALUES ('7', '新乡', '17');
INSERT INTO `jp_city` VALUES ('8', '焦作', '17');
INSERT INTO `jp_city` VALUES ('9', '濮阳', '17');
INSERT INTO `jp_city` VALUES ('10', '许昌', '17');
INSERT INTO `jp_city` VALUES ('11', '漯河', '17');
INSERT INTO `jp_city` VALUES ('12', '三门峡', '17');
INSERT INTO `jp_city` VALUES ('13', '南阳', '17');
INSERT INTO `jp_city` VALUES ('14', '商丘', '17');
INSERT INTO `jp_city` VALUES ('15', '信阳', '17');
INSERT INTO `jp_city` VALUES ('16', '周口', '17');
INSERT INTO `jp_city` VALUES ('17', '驻马店', '17');
INSERT INTO `jp_city` VALUES ('18', '济源', '17');
INSERT INTO `jp_city` VALUES ('1', '武汉', '18');
INSERT INTO `jp_city` VALUES ('2', '黄石', '18');
INSERT INTO `jp_city` VALUES ('3', '十堰', '18');
INSERT INTO `jp_city` VALUES ('4', '荆州', '18');
INSERT INTO `jp_city` VALUES ('5', '宜昌', '18');
INSERT INTO `jp_city` VALUES ('6', '襄樊', '18');
INSERT INTO `jp_city` VALUES ('7', '鄂州', '18');
INSERT INTO `jp_city` VALUES ('8', '荆门', '18');
INSERT INTO `jp_city` VALUES ('9', '孝感', '18');
INSERT INTO `jp_city` VALUES ('10', '黄冈', '18');
INSERT INTO `jp_city` VALUES ('11', '咸宁', '18');
INSERT INTO `jp_city` VALUES ('12', '随州', '18');
INSERT INTO `jp_city` VALUES ('13', '仙桃', '18');
INSERT INTO `jp_city` VALUES ('14', '天门', '18');
INSERT INTO `jp_city` VALUES ('15', '潜江', '18');
INSERT INTO `jp_city` VALUES ('16', '神农架', '18');
INSERT INTO `jp_city` VALUES ('17', '恩施', '18');
INSERT INTO `jp_city` VALUES ('1', '长沙', '19');
INSERT INTO `jp_city` VALUES ('2', '株洲', '19');
INSERT INTO `jp_city` VALUES ('3', '湘潭', '19');
INSERT INTO `jp_city` VALUES ('4', '衡阳', '19');
INSERT INTO `jp_city` VALUES ('5', '邵阳', '19');
INSERT INTO `jp_city` VALUES ('6', '岳阳', '19');
INSERT INTO `jp_city` VALUES ('7', '常德', '19');
INSERT INTO `jp_city` VALUES ('8', '张家界', '19');
INSERT INTO `jp_city` VALUES ('9', '益阳', '19');
INSERT INTO `jp_city` VALUES ('10', '郴州', '19');
INSERT INTO `jp_city` VALUES ('11', '永州', '19');
INSERT INTO `jp_city` VALUES ('12', '怀化', '19');
INSERT INTO `jp_city` VALUES ('13', '娄底', '19');
INSERT INTO `jp_city` VALUES ('14', '湘西', '19');
INSERT INTO `jp_city` VALUES ('1', '广州', '20');
INSERT INTO `jp_city` VALUES ('2', '深圳', '20');
INSERT INTO `jp_city` VALUES ('3', '珠海', '20');
INSERT INTO `jp_city` VALUES ('4', '汕头', '20');
INSERT INTO `jp_city` VALUES ('5', '韶关', '20');
INSERT INTO `jp_city` VALUES ('6', '佛山', '20');
INSERT INTO `jp_city` VALUES ('7', '江门', '20');
INSERT INTO `jp_city` VALUES ('8', '湛江', '20');
INSERT INTO `jp_city` VALUES ('9', '茂名', '20');
INSERT INTO `jp_city` VALUES ('10', '肇庆', '20');
INSERT INTO `jp_city` VALUES ('11', '惠州', '20');
INSERT INTO `jp_city` VALUES ('12', '梅州', '20');
INSERT INTO `jp_city` VALUES ('13', '汕尾', '20');
INSERT INTO `jp_city` VALUES ('14', '河源', '20');
INSERT INTO `jp_city` VALUES ('15', '阳江', '20');
INSERT INTO `jp_city` VALUES ('16', '清远', '20');
INSERT INTO `jp_city` VALUES ('17', '东莞', '20');
INSERT INTO `jp_city` VALUES ('18', '中山', '20');
INSERT INTO `jp_city` VALUES ('19', '潮州', '20');
INSERT INTO `jp_city` VALUES ('20', '揭阳', '20');
INSERT INTO `jp_city` VALUES ('21', '云浮', '20');
INSERT INTO `jp_city` VALUES ('1', '兰州', '21');
INSERT INTO `jp_city` VALUES ('2', '金昌', '21');
INSERT INTO `jp_city` VALUES ('3', '白银', '21');
INSERT INTO `jp_city` VALUES ('4', '天水', '21');
INSERT INTO `jp_city` VALUES ('5', '嘉峪关', '21');
INSERT INTO `jp_city` VALUES ('6', '武威', '21');
INSERT INTO `jp_city` VALUES ('7', '张掖', '21');
INSERT INTO `jp_city` VALUES ('8', '平凉', '21');
INSERT INTO `jp_city` VALUES ('9', '酒泉', '21');
INSERT INTO `jp_city` VALUES ('10', '庆阳', '21');
INSERT INTO `jp_city` VALUES ('11', '定西', '21');
INSERT INTO `jp_city` VALUES ('12', '陇南', '21');
INSERT INTO `jp_city` VALUES ('13', '临夏', '21');
INSERT INTO `jp_city` VALUES ('14', '甘南', '21');
INSERT INTO `jp_city` VALUES ('1', '成都', '22');
INSERT INTO `jp_city` VALUES ('2', '自贡', '22');
INSERT INTO `jp_city` VALUES ('3', '攀枝花', '22');
INSERT INTO `jp_city` VALUES ('4', '泸州', '22');
INSERT INTO `jp_city` VALUES ('5', '德阳', '22');
INSERT INTO `jp_city` VALUES ('6', '绵阳', '22');
INSERT INTO `jp_city` VALUES ('7', '广元', '22');
INSERT INTO `jp_city` VALUES ('8', '遂宁', '22');
INSERT INTO `jp_city` VALUES ('9', '内江', '22');
INSERT INTO `jp_city` VALUES ('10', '乐山', '22');
INSERT INTO `jp_city` VALUES ('11', '南充', '22');
INSERT INTO `jp_city` VALUES ('12', '眉山', '22');
INSERT INTO `jp_city` VALUES ('13', '宜宾', '22');
INSERT INTO `jp_city` VALUES ('14', '广安', '22');
INSERT INTO `jp_city` VALUES ('15', '达州', '22');
INSERT INTO `jp_city` VALUES ('16', '雅安', '22');
INSERT INTO `jp_city` VALUES ('17', '巴中', '22');
INSERT INTO `jp_city` VALUES ('18', '资阳', '22');
INSERT INTO `jp_city` VALUES ('19', '阿坝', '22');
INSERT INTO `jp_city` VALUES ('20', '甘孜', '22');
INSERT INTO `jp_city` VALUES ('21', '凉山', '22');
INSERT INTO `jp_city` VALUES ('1', '贵阳', '24');
INSERT INTO `jp_city` VALUES ('2', '六盘水', '24');
INSERT INTO `jp_city` VALUES ('3', '遵义', '24');
INSERT INTO `jp_city` VALUES ('4', '安顺', '24');
INSERT INTO `jp_city` VALUES ('5', '铜仁', '24');
INSERT INTO `jp_city` VALUES ('6', '毕节', '24');
INSERT INTO `jp_city` VALUES ('7', '黔西南', '24');
INSERT INTO `jp_city` VALUES ('8', '黔东南', '24');
INSERT INTO `jp_city` VALUES ('9', '黔南', '24');
INSERT INTO `jp_city` VALUES ('1', '海口', '25');
INSERT INTO `jp_city` VALUES ('2', '三亚', '25');
INSERT INTO `jp_city` VALUES ('3', '五指山', '25');
INSERT INTO `jp_city` VALUES ('4', '琼海', '25');
INSERT INTO `jp_city` VALUES ('5', '儋州', '25');
INSERT INTO `jp_city` VALUES ('6', '文昌', '25');
INSERT INTO `jp_city` VALUES ('7', '万宁', '25');
INSERT INTO `jp_city` VALUES ('8', '东方', '25');
INSERT INTO `jp_city` VALUES ('9', '澄迈', '25');
INSERT INTO `jp_city` VALUES ('10', '定安', '25');
INSERT INTO `jp_city` VALUES ('11', '屯昌', '25');
INSERT INTO `jp_city` VALUES ('12', '临高', '25');
INSERT INTO `jp_city` VALUES ('13', '白沙', '25');
INSERT INTO `jp_city` VALUES ('14', '昌江', '25');
INSERT INTO `jp_city` VALUES ('15', '乐东', '25');
INSERT INTO `jp_city` VALUES ('16', '陵水', '25');
INSERT INTO `jp_city` VALUES ('17', '保亭', '25');
INSERT INTO `jp_city` VALUES ('18', '琼中', '25');
INSERT INTO `jp_city` VALUES ('1', '昆明', '26');
INSERT INTO `jp_city` VALUES ('2', '曲靖', '26');
INSERT INTO `jp_city` VALUES ('3', '玉溪', '26');
INSERT INTO `jp_city` VALUES ('4', '保山', '26');
INSERT INTO `jp_city` VALUES ('5', '昭通', '26');
INSERT INTO `jp_city` VALUES ('6', '丽江', '26');
INSERT INTO `jp_city` VALUES ('7', '思茅', '26');
INSERT INTO `jp_city` VALUES ('8', '临沧', '26');
INSERT INTO `jp_city` VALUES ('9', '文山', '26');
INSERT INTO `jp_city` VALUES ('10', '红河', '26');
INSERT INTO `jp_city` VALUES ('11', '西双版纳', '26');
INSERT INTO `jp_city` VALUES ('12', '楚雄', '26');
INSERT INTO `jp_city` VALUES ('13', '大理', '26');
INSERT INTO `jp_city` VALUES ('14', '德宏', '26');
INSERT INTO `jp_city` VALUES ('15', '怒江', '26');
INSERT INTO `jp_city` VALUES ('16', '迪庆', '26');
INSERT INTO `jp_city` VALUES ('1', '西宁', '27');
INSERT INTO `jp_city` VALUES ('2', '海东', '27');
INSERT INTO `jp_city` VALUES ('3', '海北', '27');
INSERT INTO `jp_city` VALUES ('4', '黄南', '27');
INSERT INTO `jp_city` VALUES ('5', '海南', '27');
INSERT INTO `jp_city` VALUES ('6', '果洛', '27');
INSERT INTO `jp_city` VALUES ('7', '玉树', '27');
INSERT INTO `jp_city` VALUES ('8', '海西', '27');
INSERT INTO `jp_city` VALUES ('1', '西安', '28');
INSERT INTO `jp_city` VALUES ('2', '铜川', '28');
INSERT INTO `jp_city` VALUES ('3', '宝鸡', '28');
INSERT INTO `jp_city` VALUES ('4', '咸阳', '28');
INSERT INTO `jp_city` VALUES ('5', '渭南', '28');
INSERT INTO `jp_city` VALUES ('6', '延安', '28');
INSERT INTO `jp_city` VALUES ('7', '汉中', '28');
INSERT INTO `jp_city` VALUES ('8', '榆林', '28');
INSERT INTO `jp_city` VALUES ('9', '安康', '28');
INSERT INTO `jp_city` VALUES ('10', '商洛', '28');
INSERT INTO `jp_city` VALUES ('1', '南宁', '29');
INSERT INTO `jp_city` VALUES ('2', '柳州', '29');
INSERT INTO `jp_city` VALUES ('3', '桂林', '29');
INSERT INTO `jp_city` VALUES ('5', '北海', '29');
INSERT INTO `jp_city` VALUES ('6', '防城港', '29');
INSERT INTO `jp_city` VALUES ('7', '钦州', '29');
INSERT INTO `jp_city` VALUES ('8', '贵港', '29');
INSERT INTO `jp_city` VALUES ('9', '玉林', '29');
INSERT INTO `jp_city` VALUES ('10', '百色', '29');
INSERT INTO `jp_city` VALUES ('11', '贺州', '29');
INSERT INTO `jp_city` VALUES ('12', '河池', '29');
INSERT INTO `jp_city` VALUES ('13', '来宾', '29');
INSERT INTO `jp_city` VALUES ('14', '崇左', '29');
INSERT INTO `jp_city` VALUES ('1', '拉萨', '30');
INSERT INTO `jp_city` VALUES ('2', '那曲', '30');
INSERT INTO `jp_city` VALUES ('3', '昌都', '30');
INSERT INTO `jp_city` VALUES ('4', '山南', '30');
INSERT INTO `jp_city` VALUES ('5', '日喀则', '30');
INSERT INTO `jp_city` VALUES ('6', '阿里', '30');
INSERT INTO `jp_city` VALUES ('7', '林芝', '30');
INSERT INTO `jp_city` VALUES ('1', '银川', '31');
INSERT INTO `jp_city` VALUES ('2', '石嘴山', '31');
INSERT INTO `jp_city` VALUES ('3', '吴忠', '31');
INSERT INTO `jp_city` VALUES ('4', '固原', '31');
INSERT INTO `jp_city` VALUES ('5', '中卫', '31');
INSERT INTO `jp_city` VALUES ('1', '乌鲁木齐', '32');
INSERT INTO `jp_city` VALUES ('2', '克拉玛依', '32');
INSERT INTO `jp_city` VALUES ('3', '石河子　', '32');
INSERT INTO `jp_city` VALUES ('4', '阿拉尔', '32');
INSERT INTO `jp_city` VALUES ('5', '图木舒克', '32');
INSERT INTO `jp_city` VALUES ('6', '五家渠', '32');
INSERT INTO `jp_city` VALUES ('7', '吐鲁番', '32');
INSERT INTO `jp_city` VALUES ('8', '阿克苏', '32');
INSERT INTO `jp_city` VALUES ('9', '喀什', '32');
INSERT INTO `jp_city` VALUES ('10', '哈密', '32');
INSERT INTO `jp_city` VALUES ('11', '和田', '32');
INSERT INTO `jp_city` VALUES ('12', '阿图什', '32');
INSERT INTO `jp_city` VALUES ('13', '库尔勒', '32');
INSERT INTO `jp_city` VALUES ('14', '昌吉　', '32');
INSERT INTO `jp_city` VALUES ('15', '阜康', '32');
INSERT INTO `jp_city` VALUES ('16', '米泉', '32');
INSERT INTO `jp_city` VALUES ('17', '博乐', '32');
INSERT INTO `jp_city` VALUES ('18', '伊宁', '32');
INSERT INTO `jp_city` VALUES ('19', '奎屯', '32');
INSERT INTO `jp_city` VALUES ('20', '塔城', '32');
INSERT INTO `jp_city` VALUES ('21', '乌苏', '32');
INSERT INTO `jp_city` VALUES ('22', '阿勒泰', '32');
INSERT INTO `jp_city` VALUES ('1', '呼和浩特', '33');
INSERT INTO `jp_city` VALUES ('2', '包头', '33');
INSERT INTO `jp_city` VALUES ('3', '乌海', '33');
INSERT INTO `jp_city` VALUES ('4', '赤峰', '33');
INSERT INTO `jp_city` VALUES ('5', '通辽', '33');
INSERT INTO `jp_city` VALUES ('6', '鄂尔多斯', '33');
INSERT INTO `jp_city` VALUES ('7', '呼伦贝尔', '33');
INSERT INTO `jp_city` VALUES ('8', '巴彦淖尔', '33');
INSERT INTO `jp_city` VALUES ('9', '乌兰察布', '33');
INSERT INTO `jp_city` VALUES ('10', '锡林郭勒盟', '33');
INSERT INTO `jp_city` VALUES ('11', '兴安盟', '33');
INSERT INTO `jp_city` VALUES ('12', '阿拉善盟', '33');
INSERT INTO `jp_city` VALUES ('1', '澳门', '34');
INSERT INTO `jp_city` VALUES ('1', '香港', '35');

-- ----------------------------
-- Table structure for jp_module
-- ----------------------------
DROP TABLE IF EXISTS `jp_module`;
CREATE TABLE `jp_module` (
  `moid` int(11) NOT NULL COMMENT '模块编号',
  `module_code` varchar(255) CHARACTER SET gbk DEFAULT NULL COMMENT '模块编代码',
  `module_name` varchar(255) CHARACTER SET gbk DEFAULT NULL COMMENT '模块名称',
  `parent_code` varchar(255) CHARACTER SET gbk DEFAULT NULL COMMENT '父模块代码',
  `module_uri` varchar(255) CHARACTER SET gbk DEFAULT NULL COMMENT '模块URI',
  PRIMARY KEY (`moid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='模块表';

-- ----------------------------
-- Records of jp_module
-- ----------------------------

-- ----------------------------
-- Table structure for jp_module_privilege
-- ----------------------------
DROP TABLE IF EXISTS `jp_module_privilege`;
CREATE TABLE `jp_module_privilege` (
  `mpid` int(11) NOT NULL COMMENT '模块权限编号',
  `module_code` varchar(255) CHARACTER SET gbk DEFAULT NULL COMMENT '模块代码',
  `pri_code` varchar(255) CHARACTER SET gbk DEFAULT NULL COMMENT '权限代码',
  PRIMARY KEY (`mpid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='模块权限表';

-- ----------------------------
-- Records of jp_module_privilege
-- ----------------------------

-- ----------------------------
-- Table structure for jp_privilege
-- ----------------------------
DROP TABLE IF EXISTS `jp_privilege`;
CREATE TABLE `jp_privilege` (
  `priid` int(11) NOT NULL COMMENT '权限编号',
  `pri_code` varchar(255) CHARACTER SET gbk DEFAULT NULL COMMENT '权限代码',
  `pri_name` varchar(255) CHARACTER SET gbk DEFAULT NULL COMMENT '权限名称',
  PRIMARY KEY (`priid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='权限表';

-- ----------------------------
-- Records of jp_privilege
-- ----------------------------

-- ----------------------------
-- Table structure for jp_provice
-- ----------------------------
DROP TABLE IF EXISTS `jp_provice`;
CREATE TABLE `jp_provice` (
  `province_id` int(11) NOT NULL COMMENT '省份编号',
  `province_name` varchar(50) CHARACTER SET gbk NOT NULL COMMENT '省份名称',
  PRIMARY KEY (`province_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='省份表';

-- ----------------------------
-- Records of jp_provice
-- ----------------------------
INSERT INTO `jp_provice` VALUES ('1', '北京');
INSERT INTO `jp_provice` VALUES ('2', '天津');
INSERT INTO `jp_provice` VALUES ('3', '上海');
INSERT INTO `jp_provice` VALUES ('4', '重庆');
INSERT INTO `jp_provice` VALUES ('5', '河北');
INSERT INTO `jp_provice` VALUES ('6', '山西');
INSERT INTO `jp_provice` VALUES ('7', '台湾');
INSERT INTO `jp_provice` VALUES ('8', '辽宁');
INSERT INTO `jp_provice` VALUES ('9', '吉林');
INSERT INTO `jp_provice` VALUES ('10', '黑龙江');
INSERT INTO `jp_provice` VALUES ('11', '江苏');
INSERT INTO `jp_provice` VALUES ('12', '浙江');
INSERT INTO `jp_provice` VALUES ('13', '安徽');
INSERT INTO `jp_provice` VALUES ('14', '福建');
INSERT INTO `jp_provice` VALUES ('15', '江西');
INSERT INTO `jp_provice` VALUES ('16', '山东');
INSERT INTO `jp_provice` VALUES ('17', '河南');
INSERT INTO `jp_provice` VALUES ('18', '湖北');
INSERT INTO `jp_provice` VALUES ('19', '湖南');
INSERT INTO `jp_provice` VALUES ('20', '广东');
INSERT INTO `jp_provice` VALUES ('21', '甘肃');
INSERT INTO `jp_provice` VALUES ('22', '四川');
INSERT INTO `jp_provice` VALUES ('24', '贵州');
INSERT INTO `jp_provice` VALUES ('25', '海南');
INSERT INTO `jp_provice` VALUES ('26', '云南');
INSERT INTO `jp_provice` VALUES ('27', '青海');
INSERT INTO `jp_provice` VALUES ('28', '陕西');
INSERT INTO `jp_provice` VALUES ('29', '广西');
INSERT INTO `jp_provice` VALUES ('30', '西藏');
INSERT INTO `jp_provice` VALUES ('31', '宁夏');
INSERT INTO `jp_provice` VALUES ('32', '新疆');
INSERT INTO `jp_provice` VALUES ('33', '内蒙古');
INSERT INTO `jp_provice` VALUES ('34', '澳门');
INSERT INTO `jp_provice` VALUES ('35', '香港');

-- ----------------------------
-- Table structure for jp_role
-- ----------------------------
DROP TABLE IF EXISTS `jp_role`;
CREATE TABLE `jp_role` (
  `roleid` int(11) NOT NULL COMMENT '角色编号',
  `role_code` varchar(255) CHARACTER SET gbk DEFAULT NULL COMMENT '角色代码',
  `role_name` varchar(255) CHARACTER SET gbk DEFAULT NULL COMMENT '角色名称',
  PRIMARY KEY (`roleid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='角色表';

-- ----------------------------
-- Records of jp_role
-- ----------------------------

-- ----------------------------
-- Table structure for jp_role_privilege
-- ----------------------------
DROP TABLE IF EXISTS `jp_role_privilege`;
CREATE TABLE `jp_role_privilege` (
  `rpid` int(11) NOT NULL COMMENT '角色权限编号',
  `role_code` varchar(255) CHARACTER SET gbk DEFAULT NULL COMMENT '角色代码',
  `mpid` int(11) DEFAULT NULL COMMENT '模块权限编号',
  PRIMARY KEY (`rpid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='角色权限表';

-- ----------------------------
-- Records of jp_role_privilege
-- ----------------------------

-- ----------------------------
-- Table structure for jp_user
-- ----------------------------
DROP TABLE IF EXISTS `jp_user`;
CREATE TABLE `jp_user` (
  `uid` bigint(20) NOT NULL COMMENT '用户编号',
  `nickname` varchar(50) CHARACTER SET gbk NOT NULL COMMENT '昵称',
  `username` varchar(50) CHARACTER SET gbk DEFAULT NULL COMMENT '用户名',
  `sex` tinyint(1) NOT NULL COMMENT '1：男，0：女',
  `pwd` varchar(50) CHARACTER SET gbk NOT NULL COMMENT 'MD5加密密码',
  `email` varchar(50) CHARACTER SET gbk NOT NULL COMMENT '邮箱',
  `phone` varchar(25) CHARACTER SET gbk DEFAULT NULL COMMENT '手机号码',
  `qq` varchar(25) CHARACTER SET gbk DEFAULT NULL COMMENT 'QQ号码',
  `description` varchar(255) CHARACTER SET gbk DEFAULT NULL COMMENT '自我描述',
  `is_active` tinyint(1) DEFAULT '0' COMMENT '0：未激活，1：激活',
  `active_code` varchar(50) CHARACTER SET gbk NOT NULL COMMENT '注册发送的激活码',
  `status` tinyint(1) DEFAULT '0' COMMENT '1：表示封号期间，2表示永久销号，0表示正常',
  `province_id` int(11) DEFAULT NULL COMMENT '省份编号',
  `city_id` int(11) DEFAULT NULL COMMENT '城市编号',
  `create_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '账户创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '账户上次更新时间',
  PRIMARY KEY (`uid`),
  KEY `create_time` (`create_time`),
  KEY `update_time` (`update_time`),
  KEY `email` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='用户表';

-- ----------------------------
-- Records of jp_user
-- ----------------------------

-- ----------------------------
-- Table structure for jp_user_role
-- ----------------------------
DROP TABLE IF EXISTS `jp_user_role`;
CREATE TABLE `jp_user_role` (
  `urid` int(11) NOT NULL COMMENT '用户角色编号',
  `user_code` varchar(255) CHARACTER SET gbk DEFAULT NULL COMMENT '用户代码',
  `role_code` varchar(255) CHARACTER SET gbk DEFAULT NULL COMMENT '角色代码',
  PRIMARY KEY (`urid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='用户角色表';

-- ----------------------------
-- Records of jp_user_role
-- ----------------------------
