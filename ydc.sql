/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50553
 Source Host           : localhost:3306
 Source Schema         : ydc

 Target Server Type    : MySQL
 Target Server Version : 50553
 File Encoding         : 65001

 Date: 10/10/2019 09:49:21
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for article_table
-- ----------------------------
DROP TABLE IF EXISTS `article_table`;
CREATE TABLE `article_table`  (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `catalogs` varchar(256) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `cover` varchar(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `userID` int(11) NOT NULL,
  `post_time` int(11) NOT NULL,
  `review` tinyint(4) NOT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of article_table
-- ----------------------------
INSERT INTO `article_table` VALUES (1, '\'po\'\'\'\'ikkkkk', '请输入内容jjjjjjjj', '互联网', '[object Object]', 3, 1563416538, 0);
INSERT INTO `article_table` VALUES (2, '', '请输入内容', '1,6,19,34', '[object Object]', 3, 1563438311, 0);
INSERT INTO `article_table` VALUES (3, '测试', '测试测试', '1,5,17,29', '[object Object]', 3, 1566285616, 0);

-- ----------------------------
-- Table structure for catalog_table
-- ----------------------------
DROP TABLE IF EXISTS `catalog_table`;
CREATE TABLE `catalog_table`  (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `parentID` int(11) NOT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 37 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of catalog_table
-- ----------------------------
INSERT INTO `catalog_table` VALUES (1, '互联网', 0);
INSERT INTO `catalog_table` VALUES (2, '教育', 0);
INSERT INTO `catalog_table` VALUES (3, '汽车', 0);
INSERT INTO `catalog_table` VALUES (4, '游戏', 0);
INSERT INTO `catalog_table` VALUES (5, '互联网+', 1);
INSERT INTO `catalog_table` VALUES (6, '物联网', 1);
INSERT INTO `catalog_table` VALUES (7, '电子商务', 1);
INSERT INTO `catalog_table` VALUES (8, '成人高考', 2);
INSERT INTO `catalog_table` VALUES (9, '国开', 2);
INSERT INTO `catalog_table` VALUES (10, '网教', 2);
INSERT INTO `catalog_table` VALUES (11, '自考', 2);
INSERT INTO `catalog_table` VALUES (12, '新车', 3);
INSERT INTO `catalog_table` VALUES (13, '二手车', 3);
INSERT INTO `catalog_table` VALUES (14, '电子竞技', 4);
INSERT INTO `catalog_table` VALUES (15, '手游', 4);
INSERT INTO `catalog_table` VALUES (16, '网游', 4);
INSERT INTO `catalog_table` VALUES (17, '前端', 5);
INSERT INTO `catalog_table` VALUES (18, '后端', 5);
INSERT INTO `catalog_table` VALUES (19, '智能家居', 6);
INSERT INTO `catalog_table` VALUES (20, '电动窗帘', 6);
INSERT INTO `catalog_table` VALUES (21, '淘宝', 7);
INSERT INTO `catalog_table` VALUES (22, '京东', 7);
INSERT INTO `catalog_table` VALUES (23, '苏宁', 7);
INSERT INTO `catalog_table` VALUES (24, '天津大学', 8);
INSERT INTO `catalog_table` VALUES (25, '南开大学', 8);
INSERT INTO `catalog_table` VALUES (26, '天津国开', 9);
INSERT INTO `catalog_table` VALUES (27, '买车', 12);
INSERT INTO `catalog_table` VALUES (28, '卖车', 12);
INSERT INTO `catalog_table` VALUES (29, 'html', 17);
INSERT INTO `catalog_table` VALUES (30, 'css', 17);
INSERT INTO `catalog_table` VALUES (31, 'js', 17);
INSERT INTO `catalog_table` VALUES (32, 'java', 18);
INSERT INTO `catalog_table` VALUES (33, 'php', 18);
INSERT INTO `catalog_table` VALUES (34, '天猫精灵', 19);
INSERT INTO `catalog_table` VALUES (35, '天猫', 21);
INSERT INTO `catalog_table` VALUES (36, '支付宝', 21);

-- ----------------------------
-- Table structure for city
-- ----------------------------
DROP TABLE IF EXISTS `city`;
CREATE TABLE `city`  (
  `ID` int(11) NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `proID` int(11) NOT NULL,
  PRIMARY KEY (`name`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of city
-- ----------------------------
INSERT INTO `city` VALUES (1, '北京市', 1);
INSERT INTO `city` VALUES (1, '天津市', 2);
INSERT INTO `city` VALUES (1, '上海市', 3);
INSERT INTO `city` VALUES (1, '重庆市', 4);
INSERT INTO `city` VALUES (1, '石家庄市', 5);
INSERT INTO `city` VALUES (2, '唐山市', 5);
INSERT INTO `city` VALUES (3, '秦皇岛市', 5);
INSERT INTO `city` VALUES (4, '邯郸市', 5);
INSERT INTO `city` VALUES (5, '邢台市', 5);
INSERT INTO `city` VALUES (6, '保定市', 5);
INSERT INTO `city` VALUES (7, '张家口市', 5);
INSERT INTO `city` VALUES (8, '承德市', 5);
INSERT INTO `city` VALUES (9, '沧州市', 5);
INSERT INTO `city` VALUES (10, '廊坊市', 5);
INSERT INTO `city` VALUES (11, '衡水市', 5);
INSERT INTO `city` VALUES (1, '太原市', 6);
INSERT INTO `city` VALUES (2, '大同市', 6);
INSERT INTO `city` VALUES (3, '阳泉市', 6);
INSERT INTO `city` VALUES (4, '长治市', 6);
INSERT INTO `city` VALUES (5, '晋城市', 6);
INSERT INTO `city` VALUES (6, '朔州市', 6);
INSERT INTO `city` VALUES (7, '晋中市', 6);
INSERT INTO `city` VALUES (8, '运城市', 6);
INSERT INTO `city` VALUES (9, '忻州市', 6);
INSERT INTO `city` VALUES (10, '临汾市', 6);
INSERT INTO `city` VALUES (11, '吕梁市', 6);
INSERT INTO `city` VALUES (1, '台北市', 7);
INSERT INTO `city` VALUES (2, '高雄市', 7);
INSERT INTO `city` VALUES (3, '基隆市', 7);
INSERT INTO `city` VALUES (4, '台中市', 7);
INSERT INTO `city` VALUES (5, '台南市', 7);
INSERT INTO `city` VALUES (6, '新竹市', 7);
INSERT INTO `city` VALUES (7, '嘉义市', 7);
INSERT INTO `city` VALUES (8, '台北县', 7);
INSERT INTO `city` VALUES (9, '宜兰县', 7);
INSERT INTO `city` VALUES (10, '桃园县', 7);
INSERT INTO `city` VALUES (11, '新竹县', 7);
INSERT INTO `city` VALUES (12, '苗栗县', 7);
INSERT INTO `city` VALUES (13, '台中县', 7);
INSERT INTO `city` VALUES (14, '彰化县', 7);
INSERT INTO `city` VALUES (15, '南投县', 7);
INSERT INTO `city` VALUES (16, '云林县', 7);
INSERT INTO `city` VALUES (17, '嘉义县', 7);
INSERT INTO `city` VALUES (18, '台南县', 7);
INSERT INTO `city` VALUES (19, '高雄县', 7);
INSERT INTO `city` VALUES (20, '屏东县', 7);
INSERT INTO `city` VALUES (21, '澎湖县', 7);
INSERT INTO `city` VALUES (22, '台东县', 7);
INSERT INTO `city` VALUES (23, '花莲县', 7);
INSERT INTO `city` VALUES (1, '沈阳市', 8);
INSERT INTO `city` VALUES (2, '大连市', 8);
INSERT INTO `city` VALUES (3, '鞍山市', 8);
INSERT INTO `city` VALUES (4, '抚顺市', 8);
INSERT INTO `city` VALUES (5, '本溪市', 8);
INSERT INTO `city` VALUES (6, '丹东市', 8);
INSERT INTO `city` VALUES (7, '锦州市', 8);
INSERT INTO `city` VALUES (8, '营口市', 8);
INSERT INTO `city` VALUES (9, '阜新市', 8);
INSERT INTO `city` VALUES (10, '辽阳市', 8);
INSERT INTO `city` VALUES (11, '盘锦市', 8);
INSERT INTO `city` VALUES (12, '铁岭市', 8);
INSERT INTO `city` VALUES (13, '朝阳市', 8);
INSERT INTO `city` VALUES (14, '葫芦岛市', 8);
INSERT INTO `city` VALUES (1, '长春市', 9);
INSERT INTO `city` VALUES (2, '吉林市', 9);
INSERT INTO `city` VALUES (3, '四平市', 9);
INSERT INTO `city` VALUES (4, '辽源市', 9);
INSERT INTO `city` VALUES (5, '通化市', 9);
INSERT INTO `city` VALUES (6, '白山市', 9);
INSERT INTO `city` VALUES (7, '松原市', 9);
INSERT INTO `city` VALUES (8, '白城市', 9);
INSERT INTO `city` VALUES (9, '延边朝鲜族自治州', 9);
INSERT INTO `city` VALUES (1, '哈尔滨市', 10);
INSERT INTO `city` VALUES (2, '齐齐哈尔市', 10);
INSERT INTO `city` VALUES (3, '鹤 岗 市', 10);
INSERT INTO `city` VALUES (4, '双鸭山市', 10);
INSERT INTO `city` VALUES (5, '鸡 西 市', 10);
INSERT INTO `city` VALUES (6, '大 庆 市', 10);
INSERT INTO `city` VALUES (7, '伊 春 市', 10);
INSERT INTO `city` VALUES (8, '牡丹江市', 10);
INSERT INTO `city` VALUES (9, '佳木斯市', 10);
INSERT INTO `city` VALUES (10, '七台河市', 10);
INSERT INTO `city` VALUES (11, '黑 河 市', 10);
INSERT INTO `city` VALUES (12, '绥 化 市', 10);
INSERT INTO `city` VALUES (13, '大兴安岭地区', 10);
INSERT INTO `city` VALUES (1, '南京市', 11);
INSERT INTO `city` VALUES (2, '无锡市', 11);
INSERT INTO `city` VALUES (3, '徐州市', 11);
INSERT INTO `city` VALUES (4, '常州市', 11);
INSERT INTO `city` VALUES (5, '苏州市', 11);
INSERT INTO `city` VALUES (6, '南通市', 11);
INSERT INTO `city` VALUES (7, '连云港市', 11);
INSERT INTO `city` VALUES (8, '淮安市', 11);
INSERT INTO `city` VALUES (9, '盐城市', 11);
INSERT INTO `city` VALUES (10, '扬州市', 11);
INSERT INTO `city` VALUES (11, '镇江市', 11);
INSERT INTO `city` VALUES (12, '泰州市', 11);
INSERT INTO `city` VALUES (13, '宿迁市', 11);
INSERT INTO `city` VALUES (1, '杭州市', 12);
INSERT INTO `city` VALUES (2, '宁波市', 12);
INSERT INTO `city` VALUES (3, '温州市', 12);
INSERT INTO `city` VALUES (4, '嘉兴市', 12);
INSERT INTO `city` VALUES (5, '湖州市', 12);
INSERT INTO `city` VALUES (6, '绍兴市', 12);
INSERT INTO `city` VALUES (7, '金华市', 12);
INSERT INTO `city` VALUES (8, '衢州市', 12);
INSERT INTO `city` VALUES (9, '舟山市', 12);
INSERT INTO `city` VALUES (10, '台州市', 12);
INSERT INTO `city` VALUES (11, '丽水市', 12);
INSERT INTO `city` VALUES (1, '合肥市', 13);
INSERT INTO `city` VALUES (2, '芜湖市', 13);
INSERT INTO `city` VALUES (3, '蚌埠市', 13);
INSERT INTO `city` VALUES (4, '淮南市', 13);
INSERT INTO `city` VALUES (5, '马鞍山市', 13);
INSERT INTO `city` VALUES (6, '淮北市', 13);
INSERT INTO `city` VALUES (7, '铜陵市', 13);
INSERT INTO `city` VALUES (8, '安庆市', 13);
INSERT INTO `city` VALUES (9, '黄山市', 13);
INSERT INTO `city` VALUES (10, '滁州市', 13);
INSERT INTO `city` VALUES (11, '阜阳市', 13);
INSERT INTO `city` VALUES (12, '宿州市', 13);
INSERT INTO `city` VALUES (13, '巢湖市', 13);
INSERT INTO `city` VALUES (14, '六安市', 13);
INSERT INTO `city` VALUES (15, '亳州市', 13);
INSERT INTO `city` VALUES (16, '池州市', 13);
INSERT INTO `city` VALUES (17, '宣城市', 13);
INSERT INTO `city` VALUES (1, '福州市', 14);
INSERT INTO `city` VALUES (2, '厦门市', 14);
INSERT INTO `city` VALUES (3, '莆田市', 14);
INSERT INTO `city` VALUES (4, '三明市', 14);
INSERT INTO `city` VALUES (5, '泉州市', 14);
INSERT INTO `city` VALUES (6, '漳州市', 14);
INSERT INTO `city` VALUES (7, '南平市', 14);
INSERT INTO `city` VALUES (8, '龙岩市', 14);
INSERT INTO `city` VALUES (9, '宁德市', 14);
INSERT INTO `city` VALUES (1, '南昌市', 15);
INSERT INTO `city` VALUES (2, '景德镇市', 15);
INSERT INTO `city` VALUES (3, '萍乡市', 15);
INSERT INTO `city` VALUES (4, '九江市', 15);
INSERT INTO `city` VALUES (5, '新余市', 15);
INSERT INTO `city` VALUES (6, '鹰潭市', 15);
INSERT INTO `city` VALUES (7, '赣州市', 15);
INSERT INTO `city` VALUES (8, '吉安市', 15);
INSERT INTO `city` VALUES (9, '宜春市', 15);
INSERT INTO `city` VALUES (10, '抚州市', 15);
INSERT INTO `city` VALUES (11, '上饶市', 15);
INSERT INTO `city` VALUES (1, '济南市', 16);
INSERT INTO `city` VALUES (2, '青岛市', 16);
INSERT INTO `city` VALUES (3, '淄博市', 16);
INSERT INTO `city` VALUES (4, '枣庄市', 16);
INSERT INTO `city` VALUES (5, '东营市', 16);
INSERT INTO `city` VALUES (6, '烟台市', 16);
INSERT INTO `city` VALUES (7, '潍坊市', 16);
INSERT INTO `city` VALUES (8, '济宁市', 16);
INSERT INTO `city` VALUES (9, '泰安市', 16);
INSERT INTO `city` VALUES (10, '威海市', 16);
INSERT INTO `city` VALUES (11, '日照市', 16);
INSERT INTO `city` VALUES (12, '莱芜市', 16);
INSERT INTO `city` VALUES (13, '临沂市', 16);
INSERT INTO `city` VALUES (14, '德州市', 16);
INSERT INTO `city` VALUES (15, '聊城市', 16);
INSERT INTO `city` VALUES (16, '滨州市', 16);
INSERT INTO `city` VALUES (17, '菏泽市', 16);
INSERT INTO `city` VALUES (1, '郑州市', 17);
INSERT INTO `city` VALUES (2, '开封市', 17);
INSERT INTO `city` VALUES (3, '洛阳市', 17);
INSERT INTO `city` VALUES (4, '平顶山市', 17);
INSERT INTO `city` VALUES (5, '安阳市', 17);
INSERT INTO `city` VALUES (6, '鹤壁市', 17);
INSERT INTO `city` VALUES (7, '新乡市', 17);
INSERT INTO `city` VALUES (8, '焦作市', 17);
INSERT INTO `city` VALUES (9, '濮阳市', 17);
INSERT INTO `city` VALUES (10, '许昌市', 17);
INSERT INTO `city` VALUES (11, '漯河市', 17);
INSERT INTO `city` VALUES (12, '三门峡市', 17);
INSERT INTO `city` VALUES (13, '南阳市', 17);
INSERT INTO `city` VALUES (14, '商丘市', 17);
INSERT INTO `city` VALUES (15, '信阳市', 17);
INSERT INTO `city` VALUES (16, '周口市', 17);
INSERT INTO `city` VALUES (17, '驻马店市', 17);
INSERT INTO `city` VALUES (18, '济源市', 17);
INSERT INTO `city` VALUES (1, '武汉市', 18);
INSERT INTO `city` VALUES (2, '黄石市', 18);
INSERT INTO `city` VALUES (3, '十堰市', 18);
INSERT INTO `city` VALUES (4, '荆州市', 18);
INSERT INTO `city` VALUES (5, '宜昌市', 18);
INSERT INTO `city` VALUES (6, '襄樊市', 18);
INSERT INTO `city` VALUES (7, '鄂州市', 18);
INSERT INTO `city` VALUES (8, '荆门市', 18);
INSERT INTO `city` VALUES (9, '孝感市', 18);
INSERT INTO `city` VALUES (10, '黄冈市', 18);
INSERT INTO `city` VALUES (11, '咸宁市', 18);
INSERT INTO `city` VALUES (12, '随州市', 18);
INSERT INTO `city` VALUES (13, '仙桃市', 18);
INSERT INTO `city` VALUES (14, '天门市', 18);
INSERT INTO `city` VALUES (15, '潜江市', 18);
INSERT INTO `city` VALUES (16, '神农架林区', 18);
INSERT INTO `city` VALUES (17, '恩施土家族苗族自治州', 18);
INSERT INTO `city` VALUES (1, '长沙市', 19);
INSERT INTO `city` VALUES (2, '株洲市', 19);
INSERT INTO `city` VALUES (3, '湘潭市', 19);
INSERT INTO `city` VALUES (4, '衡阳市', 19);
INSERT INTO `city` VALUES (5, '邵阳市', 19);
INSERT INTO `city` VALUES (6, '岳阳市', 19);
INSERT INTO `city` VALUES (7, '常德市', 19);
INSERT INTO `city` VALUES (8, '张家界市', 19);
INSERT INTO `city` VALUES (9, '益阳市', 19);
INSERT INTO `city` VALUES (10, '郴州市', 19);
INSERT INTO `city` VALUES (11, '永州市', 19);
INSERT INTO `city` VALUES (12, '怀化市', 19);
INSERT INTO `city` VALUES (13, '娄底市', 19);
INSERT INTO `city` VALUES (14, '湘西土家族苗族自治州', 19);
INSERT INTO `city` VALUES (1, '广州市', 20);
INSERT INTO `city` VALUES (2, '深圳市', 20);
INSERT INTO `city` VALUES (3, '珠海市', 20);
INSERT INTO `city` VALUES (4, '汕头市', 20);
INSERT INTO `city` VALUES (5, '韶关市', 20);
INSERT INTO `city` VALUES (6, '佛山市', 20);
INSERT INTO `city` VALUES (7, '江门市', 20);
INSERT INTO `city` VALUES (8, '湛江市', 20);
INSERT INTO `city` VALUES (9, '茂名市', 20);
INSERT INTO `city` VALUES (10, '肇庆市', 20);
INSERT INTO `city` VALUES (11, '惠州市', 20);
INSERT INTO `city` VALUES (12, '梅州市', 20);
INSERT INTO `city` VALUES (13, '汕尾市', 20);
INSERT INTO `city` VALUES (14, '河源市', 20);
INSERT INTO `city` VALUES (15, '阳江市', 20);
INSERT INTO `city` VALUES (16, '清远市', 20);
INSERT INTO `city` VALUES (17, '东莞市', 20);
INSERT INTO `city` VALUES (18, '中山市', 20);
INSERT INTO `city` VALUES (19, '潮州市', 20);
INSERT INTO `city` VALUES (20, '揭阳市', 20);
INSERT INTO `city` VALUES (21, '云浮市', 20);
INSERT INTO `city` VALUES (1, '兰州市', 21);
INSERT INTO `city` VALUES (2, '金昌市', 21);
INSERT INTO `city` VALUES (3, '白银市', 21);
INSERT INTO `city` VALUES (4, '天水市', 21);
INSERT INTO `city` VALUES (5, '嘉峪关市', 21);
INSERT INTO `city` VALUES (6, '武威市', 21);
INSERT INTO `city` VALUES (7, '张掖市', 21);
INSERT INTO `city` VALUES (8, '平凉市', 21);
INSERT INTO `city` VALUES (9, '酒泉市', 21);
INSERT INTO `city` VALUES (10, '庆阳市', 21);
INSERT INTO `city` VALUES (11, '定西市', 21);
INSERT INTO `city` VALUES (12, '陇南市', 21);
INSERT INTO `city` VALUES (13, '临夏回族自治州', 21);
INSERT INTO `city` VALUES (14, '甘南藏族自治州', 21);
INSERT INTO `city` VALUES (1, '成都市', 22);
INSERT INTO `city` VALUES (2, '自贡市', 22);
INSERT INTO `city` VALUES (3, '攀枝花市', 22);
INSERT INTO `city` VALUES (4, '泸州市', 22);
INSERT INTO `city` VALUES (5, '德阳市', 22);
INSERT INTO `city` VALUES (6, '绵阳市', 22);
INSERT INTO `city` VALUES (7, '广元市', 22);
INSERT INTO `city` VALUES (8, '遂宁市', 22);
INSERT INTO `city` VALUES (9, '内江市', 22);
INSERT INTO `city` VALUES (10, '乐山市', 22);
INSERT INTO `city` VALUES (11, '南充市', 22);
INSERT INTO `city` VALUES (12, '眉山市', 22);
INSERT INTO `city` VALUES (13, '宜宾市', 22);
INSERT INTO `city` VALUES (14, '广安市', 22);
INSERT INTO `city` VALUES (15, '达州市', 22);
INSERT INTO `city` VALUES (16, '雅安市', 22);
INSERT INTO `city` VALUES (17, '巴中市', 22);
INSERT INTO `city` VALUES (18, '资阳市', 22);
INSERT INTO `city` VALUES (19, '阿坝藏族羌族自治州', 22);
INSERT INTO `city` VALUES (20, '甘孜藏族自治州', 22);
INSERT INTO `city` VALUES (21, '凉山彝族自治州', 22);
INSERT INTO `city` VALUES (1, '贵阳市', 24);
INSERT INTO `city` VALUES (2, '六盘水市', 24);
INSERT INTO `city` VALUES (3, '遵义市', 24);
INSERT INTO `city` VALUES (4, '安顺市', 24);
INSERT INTO `city` VALUES (5, '铜仁地区', 24);
INSERT INTO `city` VALUES (6, '毕节地区', 24);
INSERT INTO `city` VALUES (7, '黔西南布依族苗族自治州', 24);
INSERT INTO `city` VALUES (8, '黔东南苗族侗族自治州', 24);
INSERT INTO `city` VALUES (9, '黔南布依族苗族自治州', 24);
INSERT INTO `city` VALUES (1, '海口市', 25);
INSERT INTO `city` VALUES (2, '三亚市', 25);
INSERT INTO `city` VALUES (3, '五指山市', 25);
INSERT INTO `city` VALUES (4, '琼海市', 25);
INSERT INTO `city` VALUES (5, '儋州市', 25);
INSERT INTO `city` VALUES (6, '文昌市', 25);
INSERT INTO `city` VALUES (7, '万宁市', 25);
INSERT INTO `city` VALUES (8, '东方市', 25);
INSERT INTO `city` VALUES (9, '澄迈县', 25);
INSERT INTO `city` VALUES (10, '定安县', 25);
INSERT INTO `city` VALUES (11, '屯昌县', 25);
INSERT INTO `city` VALUES (12, '临高县', 25);
INSERT INTO `city` VALUES (13, '白沙黎族自治县', 25);
INSERT INTO `city` VALUES (14, '昌江黎族自治县', 25);
INSERT INTO `city` VALUES (15, '乐东黎族自治县', 25);
INSERT INTO `city` VALUES (16, '陵水黎族自治县', 25);
INSERT INTO `city` VALUES (17, '保亭黎族苗族自治县', 25);
INSERT INTO `city` VALUES (18, '琼中黎族苗族自治县', 25);
INSERT INTO `city` VALUES (1, '昆明市', 26);
INSERT INTO `city` VALUES (2, '曲靖市', 26);
INSERT INTO `city` VALUES (3, '玉溪市', 26);
INSERT INTO `city` VALUES (4, '保山市', 26);
INSERT INTO `city` VALUES (5, '昭通市', 26);
INSERT INTO `city` VALUES (6, '丽江市', 26);
INSERT INTO `city` VALUES (7, '思茅市', 26);
INSERT INTO `city` VALUES (8, '临沧市', 26);
INSERT INTO `city` VALUES (9, '文山壮族苗族自治州', 26);
INSERT INTO `city` VALUES (10, '红河哈尼族彝族自治州', 26);
INSERT INTO `city` VALUES (11, '西双版纳傣族自治州', 26);
INSERT INTO `city` VALUES (12, '楚雄彝族自治州', 26);
INSERT INTO `city` VALUES (13, '大理白族自治州', 26);
INSERT INTO `city` VALUES (14, '德宏傣族景颇族自治州', 26);
INSERT INTO `city` VALUES (15, '怒江傈傈族自治州', 26);
INSERT INTO `city` VALUES (16, '迪庆藏族自治州', 26);
INSERT INTO `city` VALUES (1, '西宁市', 27);
INSERT INTO `city` VALUES (2, '海东地区', 27);
INSERT INTO `city` VALUES (3, '海北藏族自治州', 27);
INSERT INTO `city` VALUES (4, '黄南藏族自治州', 27);
INSERT INTO `city` VALUES (5, '海南藏族自治州', 27);
INSERT INTO `city` VALUES (6, '果洛藏族自治州', 27);
INSERT INTO `city` VALUES (7, '玉树藏族自治州', 27);
INSERT INTO `city` VALUES (8, '海西蒙古族藏族自治州', 27);
INSERT INTO `city` VALUES (1, '西安市', 28);
INSERT INTO `city` VALUES (2, '铜川市', 28);
INSERT INTO `city` VALUES (3, '宝鸡市', 28);
INSERT INTO `city` VALUES (4, '咸阳市', 28);
INSERT INTO `city` VALUES (5, '渭南市', 28);
INSERT INTO `city` VALUES (6, '延安市', 28);
INSERT INTO `city` VALUES (7, '汉中市', 28);
INSERT INTO `city` VALUES (8, '榆林市', 28);
INSERT INTO `city` VALUES (9, '安康市', 28);
INSERT INTO `city` VALUES (10, '商洛市', 28);
INSERT INTO `city` VALUES (1, '南宁市', 29);
INSERT INTO `city` VALUES (2, '柳州市', 29);
INSERT INTO `city` VALUES (3, '桂林市', 29);
INSERT INTO `city` VALUES (4, '梧州市', 29);
INSERT INTO `city` VALUES (5, '北海市', 29);
INSERT INTO `city` VALUES (6, '防城港市', 29);
INSERT INTO `city` VALUES (7, '钦州市', 29);
INSERT INTO `city` VALUES (8, '贵港市', 29);
INSERT INTO `city` VALUES (9, '玉林市', 29);
INSERT INTO `city` VALUES (10, '百色市', 29);
INSERT INTO `city` VALUES (11, '贺州市', 29);
INSERT INTO `city` VALUES (12, '河池市', 29);
INSERT INTO `city` VALUES (13, '来宾市', 29);
INSERT INTO `city` VALUES (14, '崇左市', 29);
INSERT INTO `city` VALUES (1, '拉萨市', 30);
INSERT INTO `city` VALUES (2, '那曲地区', 30);
INSERT INTO `city` VALUES (3, '昌都地区', 30);
INSERT INTO `city` VALUES (4, '山南地区', 30);
INSERT INTO `city` VALUES (5, '日喀则地区', 30);
INSERT INTO `city` VALUES (6, '阿里地区', 30);
INSERT INTO `city` VALUES (7, '林芝地区', 30);
INSERT INTO `city` VALUES (1, '银川市', 31);
INSERT INTO `city` VALUES (2, '石嘴山市', 31);
INSERT INTO `city` VALUES (3, '吴忠市', 31);
INSERT INTO `city` VALUES (4, '固原市', 31);
INSERT INTO `city` VALUES (5, '中卫市', 31);
INSERT INTO `city` VALUES (1, '乌鲁木齐市', 32);
INSERT INTO `city` VALUES (2, '克拉玛依市', 32);
INSERT INTO `city` VALUES (3, '石河子市　', 32);
INSERT INTO `city` VALUES (4, '阿拉尔市', 32);
INSERT INTO `city` VALUES (5, '图木舒克市', 32);
INSERT INTO `city` VALUES (6, '五家渠市', 32);
INSERT INTO `city` VALUES (7, '吐鲁番市', 32);
INSERT INTO `city` VALUES (8, '阿克苏市', 32);
INSERT INTO `city` VALUES (9, '喀什市', 32);
INSERT INTO `city` VALUES (10, '哈密市', 32);
INSERT INTO `city` VALUES (11, '和田市', 32);
INSERT INTO `city` VALUES (12, '阿图什市', 32);
INSERT INTO `city` VALUES (13, '库尔勒市', 32);
INSERT INTO `city` VALUES (14, '昌吉市　', 32);
INSERT INTO `city` VALUES (15, '阜康市', 32);
INSERT INTO `city` VALUES (16, '米泉市', 32);
INSERT INTO `city` VALUES (17, '博乐市', 32);
INSERT INTO `city` VALUES (18, '伊宁市', 32);
INSERT INTO `city` VALUES (19, '奎屯市', 32);
INSERT INTO `city` VALUES (20, '塔城市', 32);
INSERT INTO `city` VALUES (21, '乌苏市', 32);
INSERT INTO `city` VALUES (22, '阿勒泰市', 32);
INSERT INTO `city` VALUES (1, '呼和浩特市', 33);
INSERT INTO `city` VALUES (2, '包头市', 33);
INSERT INTO `city` VALUES (3, '乌海市', 33);
INSERT INTO `city` VALUES (4, '赤峰市', 33);
INSERT INTO `city` VALUES (5, '通辽市', 33);
INSERT INTO `city` VALUES (6, '鄂尔多斯市', 33);
INSERT INTO `city` VALUES (7, '呼伦贝尔市', 33);
INSERT INTO `city` VALUES (8, '巴彦淖尔市', 33);
INSERT INTO `city` VALUES (9, '乌兰察布市', 33);
INSERT INTO `city` VALUES (10, '锡林郭勒盟', 33);
INSERT INTO `city` VALUES (11, '兴安盟', 33);
INSERT INTO `city` VALUES (12, '阿拉善盟', 33);
INSERT INTO `city` VALUES (1, '澳门特别行政区', 34);
INSERT INTO `city` VALUES (1, '香港特别行政区', 35);

-- ----------------------------
-- Table structure for illegal_table
-- ----------------------------
DROP TABLE IF EXISTS `illegal_table`;
CREATE TABLE `illegal_table`  (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `word` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for notice_table
-- ----------------------------
DROP TABLE IF EXISTS `notice_table`;
CREATE TABLE `notice_table`  (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `type` int(11) NOT NULL,
  `title` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `post_time` int(11) NOT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for province
-- ----------------------------
DROP TABLE IF EXISTS `province`;
CREATE TABLE `province`  (
  `ID` int(11) NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of province
-- ----------------------------
INSERT INTO `province` VALUES (1, '北京市');
INSERT INTO `province` VALUES (2, '天津市');
INSERT INTO `province` VALUES (3, '上海市');
INSERT INTO `province` VALUES (4, '重庆市');
INSERT INTO `province` VALUES (5, '河北省');
INSERT INTO `province` VALUES (6, '山西省');
INSERT INTO `province` VALUES (7, '台湾省');
INSERT INTO `province` VALUES (8, '辽宁省');
INSERT INTO `province` VALUES (9, '吉林省');
INSERT INTO `province` VALUES (10, '黑龙江省');
INSERT INTO `province` VALUES (11, '江苏省');
INSERT INTO `province` VALUES (12, '浙江省');
INSERT INTO `province` VALUES (13, '安徽省');
INSERT INTO `province` VALUES (14, '福建省');
INSERT INTO `province` VALUES (15, '江西省');
INSERT INTO `province` VALUES (16, '山东省');
INSERT INTO `province` VALUES (17, '河南省');
INSERT INTO `province` VALUES (18, '湖北省');
INSERT INTO `province` VALUES (19, '湖南省');
INSERT INTO `province` VALUES (20, '广东省');
INSERT INTO `province` VALUES (21, '甘肃省');
INSERT INTO `province` VALUES (22, '四川省');
INSERT INTO `province` VALUES (23, '山东省');
INSERT INTO `province` VALUES (24, '贵州省');
INSERT INTO `province` VALUES (25, '海南省');
INSERT INTO `province` VALUES (26, '云南省');
INSERT INTO `province` VALUES (27, '青海省');
INSERT INTO `province` VALUES (28, '陕西省');
INSERT INTO `province` VALUES (29, '广西壮族自治区');
INSERT INTO `province` VALUES (30, '西藏自治区');
INSERT INTO `province` VALUES (31, '宁夏回族自治区');
INSERT INTO `province` VALUES (32, '新疆维吾尔自治区');
INSERT INTO `province` VALUES (33, '内蒙古自治区');
INSERT INTO `province` VALUES (34, '澳门特别行政区');
INSERT INTO `province` VALUES (35, '香港特别行政区');

-- ----------------------------
-- Table structure for user_table
-- ----------------------------
DROP TABLE IF EXISTS `user_table`;
CREATE TABLE `user_table`  (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(128) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `type` tinyint(4) NOT NULL,
  `display_name` varchar(16) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `slogan` varchar(16) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `catalog` smallint(6) NOT NULL,
  `icon` varchar(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(128) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `other_channels` varchar(128) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(16) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `identify_number` varchar(18) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `province` int(11) NOT NULL,
  `city` int(11) NOT NULL,
  `qq_wx` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `recommend_code` varchar(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `token_expires` int(11) NOT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_table
-- ----------------------------
INSERT INTO `user_table` VALUES (1, '1456773320@qq.com', '111111', 0, 'qyuanjl@163.com', 'qwerwe', 1, '[object Object]', 'nidhafidhfisfhsklfsdfsdg', 'http://www.baidu.com', 'qq', '13020131456842', 2, 1, 'edwwww', 'dddd', 'f1eb57666ae743d8ada40f9ddbec35ea', 1563536778);
INSERT INTO `user_table` VALUES (2, 'rtytrytfhs@111.com', 'tryttttttttt', 1, 'qyuanjl@163.com', 'qwerwe', 1, '[object Object]', 'nidhafidhfisfhsklfsdfsdg', 'http://www.baidu.com', 'qq', '13020131456842', 2, 1, 'edwwww', 'dddd', 'f1eb57666ae743d8ada40f9ddbec35ea', 1563536778);
INSERT INTO `user_table` VALUES (3, 'qyuanjl@163.com', '123456', 0, 'qyuanjl@163.com', 'qwerwe', 1, '[object Object]', 'nidhafidhfisfhsklfsdfsdg', 'http://www.baidu.com', 'qq', '13020131456842', 5, 9, 'edwwww', 'dddd', 'df267bf213d24949bbd58f10b4852b86', 1570706597);
INSERT INTO `user_table` VALUES (5, 'qyuanjl@outlook.com', 'yuanquan12300', 3, 'qyuanjl@163.com', 'qwerwe', 1, '[object Object]', 'nidhafidhfisfhsklfsdfsdg', 'http://www.baidu.com', 'qq', '13020131456842', 12, 1, 'edwwww', 'dddd', '78ecf6a9657042c8bac39c7003a4daae', 1566493515);
INSERT INTO `user_table` VALUES (8, 'qyuanjl@126.com', 'yuan', 1, 'qyuanjl@163.com', 'qwerwe', 1, '[object Object]', 'nidhafidhfisfhsklfsdfsdg', 'http://www.baidu.com', 'qq', '13020131456842', 2, 1, 'edwwww', 'dddd', '03fb802d04f7437bbd109f7bbeaf7bc1', 1564058373);

SET FOREIGN_KEY_CHECKS = 1;
