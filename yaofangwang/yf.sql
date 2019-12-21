-- phpMyAdmin SQL Dump
-- version 3.4.10.1
-- http://www.phpmyadmin.net
--
-- 主机: localhost
-- 生成日期: 2019 年 12 月 21 日 07:25
-- 服务器版本: 5.5.20
-- PHP 版本: 5.3.10

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `yf`
--

-- --------------------------------------------------------

--
-- 表的结构 `account`
--

CREATE TABLE IF NOT EXISTS `account` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `phone` bigint(100) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- 转存表中的数据 `account`
--

INSERT INTO `account` (`id`, `name`, `password`, `phone`, `email`) VALUES
(1, 'button1', '123456789', 15878874464, 'yaofang@163.com'),
(2, 'button2', '987654321', 15878871234, 'laobing@163.com'),
(3, 'button3', '123456w', 12345678909, NULL),
(5, 'button4', '12345w', 15878874463, NULL),
(6, 'button5', '12345w', 15878874466, NULL),
(8, 'wanl', '5201314w', 15878874461, NULL),
(9, 'ewfawe', '12345w', 15878874469, NULL),
(10, '42eaw', '12345w', 13456467656, NULL),
(11, 'ewewefs', '12345w', 13678556747, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `carts`
--

CREATE TABLE IF NOT EXISTS `carts` (
  `cart_id` int(50) NOT NULL AUTO_INCREMENT,
  `good_id` int(50) NOT NULL,
  `num` int(50) NOT NULL,
  PRIMARY KEY (`cart_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- 转存表中的数据 `carts`
--

INSERT INTO `carts` (`cart_id`, `good_id`, `num`) VALUES
(3, 7, 7),
(5, 4, 2),
(7, 6, 2),
(12, 8, 1);

-- --------------------------------------------------------

--
-- 表的结构 `goodslists`
--

CREATE TABLE IF NOT EXISTS `goodslists` (
  `src` varchar(255) DEFAULT NULL,
  `price` float(255,0) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `specification` varchar(255) DEFAULT NULL,
  `dosageForm` varchar(255) DEFAULT NULL,
  `approvalNumbers` varchar(255) DEFAULT NULL,
  `shops` int(255) DEFAULT NULL,
  `manufacturers` varchar(255) DEFAULT NULL,
  `id` int(255) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `goodslists`
--

INSERT INTO `goodslists` (`src`, `price`, `name`, `specification`, `dosageForm`, `approvalNumbers`, `shops`, `manufacturers`, `id`) VALUES
('//c1.yaofangwang.net/common/upload/medicine/261/261440/d0fb5793-6745-497d-ac1b-b9321bdeaedc1543.jpg_300x300.jpg', 3, '999 感冒灵颗粒', '10gx9袋/盒', '颗粒剂', '//c1.yaofangwang.net/common/code/aac27ccb16cdd17be055ff1b3b7b55d3a56e26c7bbe288b05d7f823bbddb78f4_au2.jpg', 778, '华润三九医药股份有限公司', 1),
('//c1.yaofangwang.net/18/1041/b6b2cc41d68eb0ade75010c9831d175e.jpg_300x300.jpg', 1, '都乐 金嗓子喉片', '2gx6片x2板/盒', '片剂', '//c1.yaofangwang.net/common/code/e147f74720c2deb77da72cacc4a765c28ae63ef007fee9e2a5b00c3c5a7d1306_au2.jpg', 767, '广西金嗓子有限责任公司', 2),
('//c1.yaofangwang.net/common/upload/medicine/222/222881/77eb8a31-42c5-4496-8e43-c1bb654f71235500.jpg_300x300.jpg', 20, '三金 三金片', '0.29gx18片x3板/盒', '薄膜衣片剂', '//c1.yaofangwang.net/common/code/cf9d52cf6de66c3c1f102afb42ea1d61abc56db3fbd18a366f64993a00d8032c_au2.jpg', 721, '桂林三金药业股份有限公司', 3),
('//c1.yaofangwang.net/19/3583/b76f0880bf6658a0873f00e309939708.jpg_300x300.jpg', 13, '吗丁啉 多潘立酮片', '10mgx30片/盒', '片剂', '//c1.yaofangwang.net/common/code/c618817a56a786a445488c4d5aff382c15522d9c37b1688b79e2b74b83160756_au2.jpg', 717, '西安杨森制药有限公司', 4),
('//c1.yaofangwang.net/common/upload/medicine/303/303985/a130a474-393e-456d-9f1a-c8513dc4999f6832.jpg_300x300.jpg', 7, '马应龙 马应龙麝香痔疮膏', '10g/支', '软膏剂', '//c1.yaofangwang.net/common/code/c003a7a6316938f0cd4f49efe022f7d784984f8c593d8b9a5feaf9bb2eb67193_au2.jpg', 715, '马应龙药业集团股份有限公司', 5),
('//c1.yaofangwang.net/19/2722/e0504e57b6246408624b673bb2094baa.jpg_300x300.jpg', 7, '999皮炎平 复方醋酸地塞米松乳膏', '20g:15mg/支', '乳膏剂', '//c1.yaofangwang.net/common/code/06ea9ddd41a6d2873bef515b7de4f4c335536daf86e42d86b38c0e2ee7bd5be7_au2.jpg', 709, '华润三九医药股份有限公司', 6),
('//c1.yaofangwang.net/common/upload/medicine/597/597578/9b9edb8c-4dca-4fdd-bdfe-55c23e622c533901.jpg_300x300.jpg', 10, '三金 桂林西瓜霜', '3.5g/瓶', '散剂', '//c1.yaofangwang.net/common/code/cf9d52cf6de66c3c1f102afb42ea1d6130acdf790a036373baa3a52bae9ca586_au2.jpg', 708, '桂林三金药业股份有限公司', 7),
('//c1.yaofangwang.net/common/upload/medicine/198/198171/79c624e6-de15-4c80-bbe0-f4f20a47951d2971.jpg_300x300.jpg', 11, '达克宁 硝酸咪康唑乳膏', '20g/支', '乳膏剂', '//c1.yaofangwang.net/common/code/67d2ae7c44cc86fea6a52ab5fe372d8f931479030f2df9432d2313056b7868b9_au2.jpg', 691, '西安杨森制药有限公司', 8),
('//c1.yaofangwang.net/19/1243/9b3fbf17c7d12f052d9c26c16f5ddcc5.jpg_300x300.jpg', 30, '莎普爱思 苄达赖氨酸滴眼液', '5ml:25mg/瓶', '滴眼剂', '//c1.yaofangwang.net/common/code/ca79fdfaf3a6d1306bd044f33ad83c39ca901685edfa10c51c92ce707b18bf4f_au2.jpg', 700, '浙江莎普爱思药业股份有限公司', 9),
('//c1.yaofangwang.net/common/upload/medicine/533/533805/0fa714dc-74eb-4ba3-a18f-ab86f735d3f26870.jpg_300x300.jpg', 14, '芬必得 布洛芬缓释胶囊', '0.3gx10粒x2板/盒', '胶囊剂', '//c1.yaofangwang.net/common/code/c618817a56a786a445488c4d5aff382c8fa9897eef6509ee1d45b6892776d71b_au2.jpg', 684, '中美天津史克制药有限公司', 10),
('//c1.yaofangwang.net/common/upload/medicine/198/198195/e474c84d-0429-49cf-9950-67ac987f56f83037.jpg_300x300.jpg', 20, '西比灵 盐酸氟桂利嗪胶囊', '5mgx20粒/盒', '胶囊剂', '//c1.yaofangwang.net/common/code/c618817a56a786a445488c4d5aff382cc995584ee0422d8afbf5ce9fc402cbd0_au2.jpg', 682, '西安杨森制药有限公司', 11),
('//c1.yaofangwang.net/common/upload/medicine/292/292025/3ddd6bea-5bcf-4659-b64f-3d89a035a0bd7611.jpg_300x300.jpg', 5, '倍他乐克 酒石酸美托洛尔片', '25mgx20片/盒', '片剂', '//c1.yaofangwang.net/common/code/553000e116e1450e5e036244720fbfcd3e3e0f871157e0a78a3be448605efa18_au2.jpg', 671, '阿斯利康制药有限公司', 12),
('//c1.yaofangwang.net/common/upload/medicine/565/565111/3aad3b46-ffa0-498c-85d4-a8e983f7e2b69521.jpg_300x300.jpg', 15, '天士力 复方丹参滴丸', '27mgx180丸/瓶', '薄膜衣滴丸剂', '//c1.yaofangwang.net/common/code/d69ed6849c173b08e4dea0610a02ff563155c1eae3dd77608a4ff45481bedc92_au2.jpg', 665, '天士力医药集团股份有限公司', 13),
('//c1.yaofangwang.net/19/2055/0e4d027e8dcdcd4ba887ca45872e2238.jpg_300x300.jpg', 6, '江中 健胃消食片', '0.8gx8片x4板/盒', '薄膜衣片剂', '//c1.yaofangwang.net/common/code/5fd899976e2d22bf5f0d40831933e6202dc49a1ad02b032619498c9d85e522f4_au2.jpg', 645, '江中药业股份有限公司', 14),
('//c1.yaofangwang.net/19/2525/bdc4fb0aabb638adb975cb3b83752248.jpg_300x300.jpg', 20, '络活喜 苯磺酸氨氯地平片', '5mgx7片/盒', '片剂', '//c1.yaofangwang.net/common/code/c618817a56a786a445488c4d5aff382cba3b9a78ae34d00da33fb4d683f369f8_au2.jpg', 640, '辉瑞制药有限公司', 15),
('//c1.yaofangwang.net/19/3517/bdd7ee98cadc946e02498e1592f2c002.jpg_300x300.jpg', 14, '云南白药 云南白药胶囊', '0.25gx16粒/盒', '硬胶囊剂(保险子1粒)', '//c1.yaofangwang.net/common/code/53e3a21fa3e9315e2cbea62916579b482bd3540e198167bce18e1864758f9ba6_au2.jpg', 642, '云南白药集团股份有限公司', 16),
('//c1.yaofangwang.net/19/2308/0dcdf2890b2c920ec20dca92b27193fa.jpg_300x300.jpg', 10, '金毓婷 左炔诺孕酮片', '1.5mgx1片/盒', '片剂', '//c1.yaofangwang.net/common/code/2a880e42d7276fa20d7c94bb3def4f79bf94a2b250d4c7cd6ce121de1448c604_au2.jpg', 641, '华润紫竹药业有限公司', 17),
('//c1.yaofangwang.net/19/3009/7176656e334fdab362629eea40d5f1fc.jpg_300x300.jpg', 5, '江中 复方草珊瑚含片', '0.44gx12片x4板/盒', '薄膜衣片剂(无糖型)', '//c1.yaofangwang.net/common/code/ed34c1dbb0c3c25e17eb3570f28f4809188601d454fb12bd945c12f0e5ea2300_au2.jpg', 641, '江中药业股份有限公司', 18),
('//c1.yaofangwang.net/common/upload/medicine/650/650021/1d75bd84-f69a-49d5-a24b-037d2f46874b8390.jpg_300x300.jpg', 11, '同仁堂 金匮肾气丸', '360粒/瓶', '水蜜丸剂', '//c1.yaofangwang.net/common/code/99ed1d6d39f3f27d5e7a6a74e3419e0275896d2ff2c5830f6b792ec74f9c1970_au2.jpg', 634, '北京同仁堂科技发展股份有限公司制药厂', 19),
('//c1.yaofangwang.net/19/1020/e951fbecc0ec98d1f931d1bbb5ef3c9e.jpg_300x300.jpg', 16, '敖东 安神补脑液', '10mlx10支/盒', '合剂', '//c1.yaofangwang.net/common/code/af0c58ed901458a1310dbd57546f821b6f79da401285289286d711d2ed7bdca5_au2.jpg', 635, '吉林敖东延边药业股份有限公司', 20),
('//c1.yaofangwang.net/18/2421/0487632e51baf1a4f43c9ad8ca69dea5.jpg_300x300.jpg', 8, '以岭 连花清瘟胶囊', '0.35gx12粒x2板/盒', '硬胶囊剂', '//c1.yaofangwang.net/common/code/5fd899976e2d22bf5f0d40831933e6203300abaf3b3008b744b966a5a26c5887_au2.jpg', 632, '石家庄以岭药业股份有限公司', 21),
('//c1.yaofangwang.net/common/upload/medicine/522/522342/c05caf91-9afa-4267-abc2-e1ca8264566f3903.jpg_300x300.jpg', 11, '百多邦 莫匹罗星软膏', '5g:0.1g/支', '软膏剂', '//c1.yaofangwang.net/common/code/c618817a56a786a445488c4d5aff382cdd247e2883af13c5fff6beba85047acf_au2.jpg', 623, '中美天津史克制药有限公司', 22),
('//c1.yaofangwang.net/19/2649/c200751539095c0c871a6f46ce2884c5.jpg_300x300.jpg', 1, '立卫克 奥美拉唑肠溶胶囊', '20mgx14粒/瓶', '胶囊剂', '//c1.yaofangwang.net/common/code/bc77ea168ad14cd01a1400bf7da9f2001a595bd9a211c2f0cbff6bcff4049944_au2.jpg', 623, '悦康药业集团股份有限公司', 23),
('//c1.yaofangwang.net/18/3977/a9b0f3e199158263724f256d9399a444.jpg_300x300.jpg', 11, '地奥 地奥心血康胶囊', '0.1gx10粒x2板/盒', '硬胶囊剂', '//c1.yaofangwang.net/common/code/d69ed6849c173b08e4dea0610a02ff56cd8d5fadd188fe184a78ad2ae8722b3b_au2.jpg', 620, '成都地奥制药集团有限公司', 24),
('//c1.yaofangwang.net/18/2683/c28797bc837950c4d7a07086faf0454f.jpg_300x300.jpg', 10, '史克肠虫清 阿苯达唑片', '0.2gx10片/盒', '薄膜衣片剂', '//c1.yaofangwang.net/common/code/2145357565bd7c0ea16ca26b1bd29871c2d1a420998b88a13ed724ff0b003988_au2.jpg', 615, '中美天津史克制药有限公司', 25),
('//c1.yaofangwang.net/18/1958/393930a90619547c1f96dcd38252b84a.jpg_300x300.jpg', 6, '江中 健胃消食片', '0.5gx12片x3板/盒', '薄膜衣片剂', '//c1.yaofangwang.net/common/code/ed34c1dbb0c3c25e17eb3570f28f48097c0c5553847490b245975cf7dcce06cf_au2.jpg', 618, '江中药业股份有限公司', 26),
('//c1.yaofangwang.net/common/upload/medicine/476/476729/30b60974-02cd-45dd-919c-b009f643d7321679.jpg_300x300.jpg', 10, '感康 复方氨酚烷胺片', '12片/盒', '片剂', '//c1.yaofangwang.net/common/code/d93ee53391d8a378d45c774294ba6387baa22404b7f74b42f09de05cba8f2ebe_au2.jpg', 604, '吉林省吴太感康药业有限公司', 27),
('//c1.yaofangwang.net/common/upload/medicine/387/387229/c1764b06-b0cc-4703-b42d-a793c802dc862862.jpg_300x300.jpg', 15, '息斯敏 氯雷他定片', '10mgx6片/盒', '片剂', '//c1.yaofangwang.net/common/code/bc77ea168ad14cd01a1400bf7da9f200948f0800486dea0bd2839a89084fbb39_au2.jpg', 599, '西安杨森制药有限公司', 28),
('//c1.yaofangwang.net/common/upload/medicine/569/569776/bb78a8ee-9bf3-40cd-b445-60d391eb555b4386.jpg_300x300.jpg', 15, '德众 鼻炎康片', '0.37gx72片/瓶', '薄膜衣片剂', '//c1.yaofangwang.net/common/code/5fd899976e2d22bf5f0d40831933e6206a551a575f7aa99a34d4f0a73ce9fa3d_au2.jpg', 592, '国药集团德众(佛山)药业有限公司', 29),
('//c1.yaofangwang.net/common/upload/medicine/188/188747/3fd180b5-bfda-4c98-b0d7-d092ba2d55009223.jpg_300x300.jpg', 11, '同仁堂 六味地黄丸', '360粒/瓶', '水蜜丸剂', '//c1.yaofangwang.net/common/code/99ed1d6d39f3f27d5e7a6a74e3419e024e83c4bd200404baec12454a4fd60ce5_au2.jpg', 592, '北京同仁堂科技发展股份有限公司制药厂', 30),
('//c1.yaofangwang.net/18/2864/b4a519dd34e1d99102e7495da7eaeef8.jpg_300x300.jpg', 19, '波依定 非洛地平缓释片', '5mgx10片/盒', '薄膜衣片剂', '//c1.yaofangwang.net/common/code/bc77ea168ad14cd01a1400bf7da9f2001952dd367195d0113859471adddcdcb4_au2.jpg', 595, '阿斯利康制药有限公司', 31),
('//c1.yaofangwang.net/common/upload/medicine/189/189843/66e81866-d8d2-4b39-9873-1889847ffebf1075.jpg_300x300.jpg', 38, '立普妥 阿托伐他汀钙片', '20mgx7片/盒', '薄膜衣片剂', '//c1.yaofangwang.net/common/code/bc77ea168ad14cd01a1400bf7da9f2004b11728d2763969a8b3be9e235a065e9_au2.jpg', 594, '辉瑞制药有限公司', 32),
('//c1.yaofangwang.net/common/upload/medicine/303/303955/78a8abb9-410f-43a4-ba99-cb91527f527e4003.jpg_300x300.jpg', 11, '济民可信 黄氏响声丸', '0.133gx36丸x2板/盒', '炭衣丸剂', '//c1.yaofangwang.net/common/code/5cdd9f4fd2e948af6cb08b5acfdd0b9d771e5d6e0646c4940d2b605f4cfa9418_au2.jpg', 594, '无锡济民可信山禾药业股份有限公司', 33),
('//c1.yaofangwang.net/common/upload/medicine/312/312742/fb8761ef-a86c-4020-bb6d-2ec2999fade61539.jpg_300x300.jpg', 20, '代文 缬沙坦胶囊', '80mgx7粒/盒', '胶囊剂', '//c1.yaofangwang.net/common/code/bc77ea168ad14cd01a1400bf7da9f200caca8506b2cd8b7573116d40d0dffbad_au2.jpg', 580, '北京诺华制药有限公司', 34),
('//c1.yaofangwang.net/common/upload/medicine/521/521443/764183bc-4554-4e53-bd01-07c632cd37e67249.jpg_300x300.jpg', 10, '999 三九胃泰颗粒', '20gx6袋/盒', '颗粒剂', '//c1.yaofangwang.net/common/code/aac27ccb16cdd17be055ff1b3b7b55d3dd45ae7eeff87b09b005b40c6f399ff3_au2.jpg', 584, '华润三九医药股份有限公司', 35),
('//c1.yaofangwang.net/19/1601/b5b32b2e3b3b5b9d2bcd30d7ac249a0c.jpg_300x300.jpg', 9, '倍他乐克 酒石酸美托洛尔片', '50mgx20片/盒', '片剂', '//c1.yaofangwang.net/common/code/553000e116e1450e5e036244720fbfcd89829c6ebaa7027ae002f48c945842c9_au2.jpg', 583, '阿斯利康制药有限公司', 36),
('//c1.yaofangwang.net/18/3892/cae979c2a62d2f2989b516d33681e1a7.jpg_300x300.jpg', 16, '同仁堂 五子衍宗丸', '60g/瓶', '水蜜丸剂', '//c1.yaofangwang.net/common/code/99ed1d6d39f3f27d5e7a6a74e3419e02847ebb36da87ae4475fb62f82e5e5643_au2.jpg', 580, '北京同仁堂股份有限公司同仁堂制药厂', 37),
('//c1.yaofangwang.net/common/upload/medicine/279/279646/7fa4d7f9-4119-452f-8bbc-498d1ae71de18424.jpg_300x300.jpg', 9, '0号 复方利血平氨苯蝶啶片', '10片/盒', '薄膜衣片剂', '//c1.yaofangwang.net/common/code/2a880e42d7276fa20d7c94bb3def4f791bf4f93eada99221ffcb98e3f5c8856c_au2.jpg', 577, '华润双鹤药业股份有限公司', 38),
('//c1.yaofangwang.net/19/3339/d14e75322a1f1797a7eeb1604a2cb0d2.jpg_300x300.jpg', 12, '好护士 乳癖消片', '0.32gx100片/瓶', '糖衣片剂', '//c1.yaofangwang.net/common/code/1e01334fe276bb54def4ecd56929fae27ab386d9f5bf66818389faac3e3104ca_au2.jpg', 577, '辽宁上药好护士药业(集团)有限公司', 39),
('//c1.yaofangwang.net/common/upload/medicine/281/281724/1b100d2b-5062-441e-8ed7-aa39f506cf306926.jpg_300x300.jpg', 12, '同仁堂 同仁乌鸡白凤丸', '9gx10丸/盒', '大蜜丸剂', '//c1.yaofangwang.net/common/code/99ed1d6d39f3f27d5e7a6a74e3419e02e62cec4ced5a331f0321da2f51c107b2_au2.jpg', 578, '北京同仁堂股份有限公司同仁堂制药厂', 40),
('//c1.yaofangwang.net/common/upload/medicine/188/188766/1ad5a3fa-3b7c-40d2-a20b-d814c784d6c61974.jpg_300x300.jpg', 9, '同仁堂 加味逍遥丸', '6gx10袋/盒', '水丸剂', '//c1.yaofangwang.net/common/code/99ed1d6d39f3f27d5e7a6a74e3419e027a5cd5c038f7262ef83072d70bf53086_au2.jpg', 570, '北京同仁堂科技发展股份有限公司制药厂', 41),
('//c1.yaofangwang.net/common/upload/medicine/312/312735/3ed390b6-7157-462f-9011-d0d8b8b31d553405.jpg_300x300.jpg', 12, '扶他林 双氯芬酸二乙胺乳胶剂', '20g:0.2g/支', '乳胶剂', '//c1.yaofangwang.net/common/code/ca79fdfaf3a6d1306bd044f33ad83c397cb243bca576a281e044e2a43b2b196c_au2.jpg', 567, '北京诺华制药有限公司', 42),
('//c1.yaofangwang.net/common/upload/medicine/213/213062/2f343c9b-4a2f-4ce0-8400-2ff5f01d86194747.jpg_300x300.jpg', 13, '白云山 消渴丸', '30g/瓶', '浓缩水丸剂(120丸)', '//c1.yaofangwang.net/common/code/aac27ccb16cdd17be055ff1b3b7b55d3d0a2f3e43a2d0101e07d8c3492237b45_au2.jpg', 568, '广州白云山中一药业有限公司', 43),
('//c1.yaofangwang.net/18/2140/6f99a2e3c58a9df3361357c2c0e5e62e.jpg_300x300.jpg', 4, '迪根 双氯芬酸钠缓释片', '0.1gx12片/盒', '片剂', '//c1.yaofangwang.net/common/code/c618817a56a786a445488c4d5aff382c7ca5dcd12e5c842094908b885ced2a11_au2.jpg', 570, '国药集团致君(深圳)坪山制药有限公司', 44),
('//c1.yaofangwang.net/19/1352/27f2b771a01395623007e5df444001b2.jpg_300x300.jpg', 17, '达克宁 硝酸咪康唑栓', '0.2gx7枚/盒', '栓剂', '//c1.yaofangwang.net/common/code/c618817a56a786a445488c4d5aff382c19b6c2e24be491f619d82596d8b8d080_au2.jpg', 560, '西安杨森制药有限公司', 45),
('//c1.yaofangwang.net/common/upload/medicine/304/304015/42585eb6-2bd9-4f0b-b999-f221cd2894528540.jpg_300x300.jpg', 9, '马应龙 麝香痔疮栓', '1.5gx6枚/盒', '栓剂', '//c1.yaofangwang.net/common/code/c003a7a6316938f0cd4f49efe022f7d7494ed78e5e398fd4623d661d877984a1_au2.jpg', 550, '马应龙药业集团股份有限公司', 46),
('//c1.yaofangwang.net/18/2077/ac7ea013cfa646f623f5d9c5febf15be.jpg_300x300.jpg', 13, '拜阿司匹灵 阿司匹林肠溶片', '0.1gx15片x2板/盒', '片剂', '//c1.yaofangwang.net/common/code/9c4962d605bc913745d152eb7dd5f3842daf90cb4dfd03e08dc750191cc7dcee_au2.jpg', 563, '拜耳医药保健有限公司', 47),
('//c1.yaofangwang.net/common/upload/medicine/228/228074/3c1dc996-5fb6-47cc-8af9-ece5bd9d94f37109.jpg_300x300.jpg', 15, '美林 布洛芬混悬液', '100ml:2g/瓶', '混悬剂', '//c1.yaofangwang.net/common/code/ca79fdfaf3a6d1306bd044f33ad83c393aec48795fec0238726cd30d13aebc28_au2.jpg', 559, '上海强生制药有限公司', 48),
('//c1.yaofangwang.net/19/3945/084c11810c3de3bf3ddd9fa66a994b64.jpg_300x300.jpg', 17, '以岭 参松养心胶囊', '0.4gx12粒x3板/盒', '硬胶囊剂', '//c1.yaofangwang.net/common/code/45a8b10e61e02bd61cda3fed0914aa22127c0077d3e70cbfe573657644d09504_au2.jpg', 550, '北京以岭药业有限公司', 49),
('//c1.yaofangwang.net/common/upload/medicine/569/569736/539dd18a-b93a-4ba7-baf4-4c19a9a817882540.jpg_300x300.jpg', 10, '丁桂 丁桂儿脐贴', '1.6gx2贴/盒', '贴剂', '//c1.yaofangwang.net/common/code/e147f74720c2deb77da72cacc4a765c2d58a67e859a8c93832f012241f1d2545_au2.jpg', 551, '亚宝药业集团股份有限公司', 50),
('//c1.yaofangwang.net/common/upload/medicine/236/236210/75ec98d1-8b6d-4947-8074-7131994703114687.jpg_300x300.jpg', 13, '以岭 通心络胶囊', '0.26gx10粒x3板/盒', '硬胶囊剂', '//c1.yaofangwang.net/common/code/8a9896ff71d1f703acd1a9affe02d2217409f4b0c2ef9b548281ac012b324dfe_au2.jpg', 540, '石家庄以岭药业股份有限公司', 51),
('//c1.yaofangwang.net/common/upload/medicine/533/533713/2d2005c7-c05d-4d91-9c07-3d16bf64c1879019.jpg_300x300.jpg', 46, '钙尔奇 碳酸钙D3片', '0.6gx60片/瓶', '薄膜衣片剂', '//c1.yaofangwang.net/common/code/c618817a56a786a445488c4d5aff382cd245770425a756a1c56b8aab1240e8fe_au2.jpg', 543, '惠氏制药有限公司', 52),
('//c1.yaofangwang.net/common/upload/medicine/523/523272/22914e83-2a81-46a0-ba54-8f02342919fc6839.jpg_300x300.jpg', 28, '百令 百令胶囊', '0.5gx14粒x3板/盒', '硬胶囊剂', '//c1.yaofangwang.net/common/code/d69ed6849c173b08e4dea0610a02ff56949803b669fc981630c9ef11c5ef8baf_au2.jpg', 534, '杭州中美华东制药有限公司', 53),
('//c1.yaofangwang.net/common/upload/medicine/533/533782/f7e050dd-a44c-452f-827f-63e83d6be96a2328.jpg_300x300.jpg', 21, '千金 妇科千金片', '18片x6板/盒', '薄膜衣片剂', '//c1.yaofangwang.net/common/code/13147439e45a48961a4d997b8881454365a7e2de8e90a8b100006cea5df2170e_au2.jpg', 543, '株洲千金药业股份有限公司', 54),
('//c1.yaofangwang.net/common/upload/medicine/188/188799/6ee70b9b-a275-4328-9b57-415ec44523039105.jpg_300x300.jpg', 11, '同仁堂 六味地黄丸', '120丸/瓶', '浓缩丸剂', '//c1.yaofangwang.net/common/code/8a9896ff71d1f703acd1a9affe02d221da923d5eae1c1e1993ee44b2e32b6ca7_au2.jpg', 539, '北京同仁堂科技发展股份有限公司制药厂', 55),
('//c1.yaofangwang.net/common/upload/medicine/584/584281/c491177f-8658-49f1-a30d-36b975df60553289.jpg_300x300.jpg', 30, '顺尔宁 孟鲁司特钠片', '10mgx5片/盒', '薄膜衣片剂', '//c1.yaofangwang.net/common/code/9c4962d605bc913745d152eb7dd5f384ebeba1c476030a3de08b7a1592320529_au2.jpg', 531, '杭州默沙东制药有限公司', 56),
('//c1.yaofangwang.net/common/upload/medicine/614/614028/32239a0b-c2d1-4f91-a2d7-4d6601ccbecc9268.jpg_300x300.jpg', 10, '倍他乐克 琥珀酸美托洛尔缓释片', '47.5mgx7片/盒', '片剂', '//c1.yaofangwang.net/common/code/9c4962d605bc913745d152eb7dd5f38417a96241d1677f417429a596b233d1f8_au2.jpg', 534, '阿斯利康制药有限公司', 57),
('//c1.yaofangwang.net/common/upload/medicine/215/215079/7ab48e5c-bc13-45b3-9f42-34e3df0f56277033.jpg_300x300.jpg', 7, '维尔固 盐酸氨基葡萄糖胶囊', '0.24gx10粒x2板/盒', '胶囊剂', '//c1.yaofangwang.net/common/code/bc77ea168ad14cd01a1400bf7da9f20021ef79fbc0e2b6de3c4877a76c45da17_au2.jpg', 532, '浙江诚意药业股份有限公司', 58),
('//c1.yaofangwang.net/18/2413/a1dda88bcf24fcf98c234b7c2e6a9690.jpg_300x300.jpg', 17, '格华止 盐酸二甲双胍片', '0.5gx10片x2板/盒', '薄膜衣片剂', '//c1.yaofangwang.net/common/code/bc77ea168ad14cd01a1400bf7da9f200443231df86966cc7e5ac67898e83c1d3_au2.jpg', 540, '中美上海施贵宝制药有限公司', 59),
('//c1.yaofangwang.net/19/2108/ecdffaca8bdb8deba8cd178059707653.jpg_300x300.jpg', 15, '阿乐 阿托伐他汀钙片', '10mgx7片/盒', '薄膜衣片剂', '//c1.yaofangwang.net/common/code/ca79fdfaf3a6d1306bd044f33ad83c3954bda7dd4f4259db2ea480d0f4b3fb25_au2.jpg', 522, '北京嘉林药业股份有限公司', 60),
('//c1.yaofangwang.net/common/images/loadingimg.gif', 34, '龙牡 龙牡壮骨颗粒', '5gx40袋/盒', '颗粒剂', '//c1.yaofangwang.net/common/code/c003a7a6316938f0cd4f49efe022f7d7231f8de800511a2617987b5ebd233dc3_au2.jpg', 525, '健民药业集团股份有限公司', 61),
('//c1.yaofangwang.net/common/images/loadingimg.gif', 11, '前列康 普乐安片', '0.57gx60片/瓶', '薄膜衣片剂', '//c1.yaofangwang.net/common/code/45bc654dbf226f47964c1b4ddc6b2b15f67f076ef745c49dd5b7f4676bc3dd49_au2.jpg', 516, '浙江康恩贝制药股份有限公司', 62),
('//c1.yaofangwang.net/common/images/loadingimg.gif', 27, '伊可新 维生素AD滴剂', '10粒x3板/盒', '滴剂', '//c1.yaofangwang.net/common/code/80ef3be519737fc81cb9a7dc3f98412744fd31e41a8bf0b1f542827770af8148_au2.jpg', 511, '山东达因海洋生物制药股份有限公司', 63),
('//c1.yaofangwang.net/common/images/loadingimg.gif', 25, '卡博平 阿卡波糖片', '50mgx15片x2板/盒', '片剂', '//c1.yaofangwang.net/common/code/bc77ea168ad14cd01a1400bf7da9f2003bd9e2e887b7035a9c4b768db2102aba_au2.jpg', 511, '杭州中美华东制药有限公司', 64),
('//c1.yaofangwang.net/common/images/loadingimg.gif', 17, '颈复康颗粒', '5gx10袋/盒', '颗粒剂', '//c1.yaofangwang.net/common/code/9b0a2a17004698515205a8476e74b30a1537e91749b394ca4f1d4396f91076c4_au2.jpg', 523, '颈复康药业集团有限公司', 65),
('//c1.yaofangwang.net/common/images/loadingimg.gif', 15, '开瑞坦 氯雷他定片', '10mgx6片/盒', '片剂', '//c1.yaofangwang.net/common/code/c618817a56a786a445488c4d5aff382c3016e27d18965c9463fec20f1fabbc7d_au2.jpg', 509, '拜耳医药(上海)有限公司', 66),
('//c1.yaofangwang.net/common/images/loadingimg.gif', 16, '伲福达 硝苯地平缓释片(Ⅱ)', '20mgx30片/瓶', '片剂', '//c1.yaofangwang.net/common/code/c618817a56a786a445488c4d5aff382c6b33793c7f2d3c57c51767433a16af76_au2.jpg', 519, '青岛黄海制药有限责任公司', 67),
('//c1.yaofangwang.net/common/images/loadingimg.gif', 15, '漢森 四磨汤口服液', '10mlx8支/盒', '合剂', '//c1.yaofangwang.net/common/code/5fd899976e2d22bf5f0d40831933e620090607578662a341a79b8c06dbbc19e1_au2.jpg', 517, '湖南汉森制药股份有限公司', 68),
('//c1.yaofangwang.net/common/images/loadingimg.gif', 8, '亚宝 珍菊降压片', '60片/瓶', '薄膜衣片剂', '//c1.yaofangwang.net/common/code/01b8bd079d9f6ae43368d09833763861549ed2b53189f00967d5886277012df0_au2.jpg', 516, '亚宝药业集团股份有限公司', 69),
('//c1.yaofangwang.net/common/images/loadingimg.gif', 10, '同仁堂 六味地黄丸', '9gx10丸/盒', '大蜜丸剂', '//c1.yaofangwang.net/common/code/99ed1d6d39f3f27d5e7a6a74e3419e029778eeb7307bbdeb3f99d3903f8c0c1c_au2.jpg', 512, '北京同仁堂科技发展股份有限公司制药厂', 70),
('//c1.yaofangwang.net/common/images/loadingimg.gif', 6, '江中 乳酸菌素片', '0.4gx8片x4板/盒', '片剂', '//c1.yaofangwang.net/common/code/bc77ea168ad14cd01a1400bf7da9f200f6500187c3b56cd2cc1dc4ace657cf2e_au2.jpg', 507, '江中药业股份有限公司', 71),
('//c1.yaofangwang.net/common/images/loadingimg.gif', 13, '云南白药 云南白药', '4g/瓶', '散剂', '//c1.yaofangwang.net/common/code/53e3a21fa3e9315e2cbea62916579b48b5169a6d463eae60129ede5c5032d435_au2.jpg', 509, '云南白药集团股份有限公司', 72),
('//c1.yaofangwang.net/common/images/loadingimg.gif', 9, '毓婷 左炔诺孕酮片', '0.75mgx2片/盒', '片剂', '//c1.yaofangwang.net/common/code/c618817a56a786a445488c4d5aff382c51f44d2a7390dccee256ec4d94cc0580_au2.jpg', 514, '华润紫竹药业有限公司', 73),
('//c1.yaofangwang.net/common/images/loadingimg.gif', 16, '达喜 铝碳酸镁咀嚼片', '0.5gx10片x2板/盒', '片剂', '//c1.yaofangwang.net/common/code/bc77ea168ad14cd01a1400bf7da9f200f8649968654f5d4142dd7a6d048382b0_au2.jpg', 498, '拜耳医药保健有限公司', 74),
('//c1.yaofangwang.net/common/images/loadingimg.gif', 50, '泰嘉 硫酸氢氯吡格雷片', '25mgx20片/瓶', '薄膜衣片剂', '//c1.yaofangwang.net/common/code/bc77ea168ad14cd01a1400bf7da9f2005570227d2f37922df274f4f1df0d9a5c_au2.jpg', 487, '深圳信立泰药业股份有限公司', 75),
('//c1.yaofangwang.net/common/images/loadingimg.gif', 24, '西乐葆 塞来昔布胶囊', '0.2gx6粒/盒', '胶囊剂', '//c1.yaofangwang.net/common/code/9c4962d605bc913745d152eb7dd5f3843130f14b1682203d99de47e2df4d7392_au2.jpg', 493, '辉瑞制药有限公司', 76),
('//c1.yaofangwang.net/common/images/loadingimg.gif', 22, '洛汀新 盐酸贝那普利片', '10mgx7片x2板/盒', '薄膜衣片剂', '//c1.yaofangwang.net/common/code/bc77ea168ad14cd01a1400bf7da9f2009ef9490f766fd6519080bcdf42919fde_au2.jpg', 501, '北京诺华制药有限公司', 77),
('//c1.yaofangwang.net/common/images/loadingimg.gif', 21, '金戈 枸橼酸西地那非片', '50mgx1片/盒', '薄膜衣片剂', '//c1.yaofangwang.net/common/code/3fb35d236457b29e97b0a724ec7580782b7b17f5ecb90dfced034036d5335539_au2.jpg', 487, '广州白云山医药集团股份有限公司白云山制药总厂', 78),
('//c1.yaofangwang.net/common/images/loadingimg.gif', 21, '云南白药 云南白药气雾剂', '50g+60g/盒', '气雾剂', '//c1.yaofangwang.net/common/code/53e3a21fa3e9315e2cbea62916579b485b1f81ee7f60e4eb7fdeeef12aba8930_au2.jpg', 502, '云南白药集团股份有限公司', 79),
('//c1.yaofangwang.net/common/images/loadingimg.gif', 10, '三九胃泰 温胃舒颗粒', '10gx6袋/盒', '颗粒剂', '//c1.yaofangwang.net/common/code/7a4b4a9a386decc76c460c61ee88d95476611c4ad49b750a35bd8fa9d42283f8_au2.jpg', 501, '合肥华润神鹿药业有限公司', 80),
('//c1.yaofangwang.net/19/1164/ea09438ea18e2ef605c0765259743740.jpg_300x300.jpg', 22, '易坦静 氨溴特罗口服溶液', '60ml/瓶', '口服溶液剂', '//c1.yaofangwang.net/common/code/bc77ea168ad14cd01a1400bf7da9f200d86c69f839923780fde81f36c721c103_au2.jpg', 502, '北京韩美药品有限公司', 81),
('//c1.yaofangwang.net/18/2838/d5ecc867982d215eb3815d95eeebc7a4.jpg_300x300.jpg', 11, '敏使朗 甲磺酸倍他司汀片', '6mgx10片x3板/盒', '片剂', '//c1.yaofangwang.net/common/code/bc77ea168ad14cd01a1400bf7da9f20067cedc2fc8f88541f1637820e573db28_au2.jpg', 497, '卫材(中国)药业有限公司', 82),
('//c1.yaofangwang.net/19/1218/3af5696999a8452bb87bc9255e36ae23.jpg_300x300.jpg', 23, '纷乐 硫酸羟氯喹片', '0.1gx14片/盒', '薄膜衣片剂', '//c1.yaofangwang.net/common/code/ca79fdfaf3a6d1306bd044f33ad83c390957b1f7a567354ca6c5e1e058926ccd_au2.jpg', 489, '上海上药中西制药有限公司', 83),
('//c1.yaofangwang.net/common/upload/medicine/195/195827/28391902-2836-48c0-ae59-275ef41caa255485.jpg_300x300.jpg', 10, '神奇 珊瑚癣净', '250ml/瓶', '酊剂', '//c1.yaofangwang.net/common/code/438d0007678086dc91fe23c76cac56b2aa00045517ecf2f82d132036ddd8cd84_au2.jpg', 495, '贵州金桥药业有限公司', 84),
('//c1.yaofangwang.net/18/1476/bc341bd4be3287bbd5e19a87e9170c1d.jpg_300x300.jpg', 38, '哈乐 盐酸坦索罗辛缓释胶囊', '0.2mgx10粒/盒', '胶囊剂', '//c1.yaofangwang.net/common/code/bc77ea168ad14cd01a1400bf7da9f2009364d7d021ecc85e13e2f03ce6379d50_au2.jpg', 488, '安斯泰来制药(中国)有限公司', 85),
('//c1.yaofangwang.net/18/1743/912af858cdf08fe2999518518ed81d76.jpg_300x300.jpg', 22, '康王 复方酮康唑发用洗剂', '50ml/管', '洗剂', '//c1.yaofangwang.net/common/code/ee01f2dee07c36b949406e374f8fa1d4f4a49db2913b1bec1ff8b62728ea1428_au2.jpg', 487, '滇虹药业集团股份有限公司', 86),
('//c1.yaofangwang.net/common/upload/medicine/224/224687/daabe714-4960-4f93-b059-2c983e6f7dbd9041.jpg_300x300.jpg', 7, '护彤 小儿氨酚黄那敏颗粒', '2gx12袋/盒', '颗粒剂', '//c1.yaofangwang.net/common/code/5e5158439789f59421cf1626aed0f312aa2e7c44856cfb5f39ff42d7d4a86144_au2.jpg', 480, '哈药集团制药六厂', 87),
('//c1.yaofangwang.net/common/upload/medicine/222/222797/fac12c85-e420-4991-a5d0-fc4e9329795a6650.jpg_300x300.jpg', 14, '玉林 湿毒清胶囊', '0.5gx30粒/瓶', '硬胶囊剂', '//c1.yaofangwang.net/common/code/cf9d52cf6de66c3c1f102afb42ea1d61ca35565d52b510f8733511181b842d3c_au2.jpg', 491, '广西玉林制药集团有限责任公司', 88),
('//c1.yaofangwang.net/19/2631/56c3c35fff29e1da31767627a1ea7946.jpg_300x300.jpg', 15, '步長 脑心通胶囊', '0.4gx18粒x2板/盒', '硬胶囊剂', '//c1.yaofangwang.net/common/code/5fd899976e2d22bf5f0d40831933e6202e333ba3232cbb8cce2bf525793a9a95_au2.jpg', 474, '陕西步长制药有限公司', 89),
('//c1.yaofangwang.net/common/upload/medicine/261/261437/1bec7e00-f0bb-4c4a-a220-a11f52313ac77959.jpg_300x300.jpg', 10, '999 正天丸', '6gx10袋/盒', '水丸剂', '//c1.yaofangwang.net/common/code/aac27ccb16cdd17be055ff1b3b7b55d32dd5e096c6895cc19fb3a0339494cbb4_au2.jpg', 475, '华润三九医药股份有限公司', 90),
('//c1.yaofangwang.net/19/1602/06ac448dd1c9dd1af8b3a2e867a57d14.jpg_300x300.jpg', 14, '扶他林 双氯芬酸钠肠溶片', '25mgx10片x3板/盒', '片剂', '//c1.yaofangwang.net/common/code/2a880e42d7276fa20d7c94bb3def4f795d661640a60633d79324f89733d0cace_au2.jpg', 471, '北京诺华制药有限公司', 91),
('//c1.yaofangwang.net/19/1452/69fbc84dee369b745c8cc6e567de0aa8.jpg_300x300.jpg', 12, '白云山陳李済 补脾益肠丸', '72g/瓶', '水蜜丸剂', '//c1.yaofangwang.net/common/code/aac27ccb16cdd17be055ff1b3b7b55d30f403855cc25e618d37a98503a45f1ad_au2.jpg', 472, '广州白云山陈李济药厂有限公司', 92),
('//c1.yaofangwang.net/19/3342/009981db75abb65932173f750d3994bc.jpg_300x300.jpg', 9, '同仁堂 人参健脾丸', '6gx10丸/盒', '大蜜丸剂', '//c1.yaofangwang.net/common/code/99ed1d6d39f3f27d5e7a6a74e3419e0270ea5e9463e6cac733ec6e1ffe1dc11b_au2.jpg', 475, '北京同仁堂股份有限公司同仁堂制药厂', 93),
('//c1.yaofangwang.net/common/upload/medicine/533/533788/ee7901a8-a79e-43e7-bf5f-6b5c1112afcb1244.jpg_300x300.jpg', 14, '葵花 胃康灵胶囊', '0.4gx12粒x2板/盒', '硬胶囊剂', '//c1.yaofangwang.net/common/code/48aa33583018cb0728e62e74556ce630ec0df86d10074086a3758dcf78290591_au2.jpg', 467, '黑龙江葵花药业股份有限公司', 94),
('//c1.yaofangwang.net/19/2327/f6c7a1ddec035daf1a221d68a67931d9.jpg_300x300.jpg', 12, '派瑞松 曲安奈德益康唑乳膏', '15g/支', '乳膏剂', '//c1.yaofangwang.net/common/code/bc77ea168ad14cd01a1400bf7da9f200f7760d7abc211d17c5ab6adfbdc553a0_au2.jpg', 468, '西安杨森制药有限公司', 95),
('//c1.yaofangwang.net/18/2872/f3379a8b4fb2f77dfe9524554cc5ebae.jpg_300x300.jpg', 44, '耐信 艾司奥美拉唑镁肠溶片', '20mgx7片/盒', '薄膜衣片剂', '//c1.yaofangwang.net/common/code/bc77ea168ad14cd01a1400bf7da9f200d116b03e90e2db7d05dae8751c44ba46_au2.jpg', 468, '阿斯利康制药有限公司', 96),
('//c1.yaofangwang.net/common/images/loadingimg.gif', 12, '意可贴 醋酸地塞米松口腔贴片', '0.3mgx5片/盒', '片剂', '//c1.yaofangwang.net/common/code/ca79fdfaf3a6d1306bd044f33ad83c390345b9f973f934f0923250171b89d19e_au2.jpg', 460, '深圳太太药业有限公司', 97),
('//c1.yaofangwang.net/common/images/loadingimg.gif', 16, '腰痛宁胶囊', '0.3gx10粒x2板+10mlx5支/盒', '胶囊剂', '//c1.yaofangwang.net/common/code/9b0a2a17004698515205a8476e74b30ab4c0472e47002852b33f82289789a0ac_au2.jpg', 472, '颈复康药业集团有限公司', 98),
('//c1.yaofangwang.net/common/images/loadingimg.gif', 14, '碑林 金嗓散结丸', '360丸/瓶', '水蜜丸剂', '//c1.yaofangwang.net/common/code/dc47d43d8d7273355b7474a36018f19cd29ff81a8b5601dffd64e8183d8de5eb_au2.jpg', 465, '西安碑林药业股份有限公司', 99),
('//c1.yaofangwang.net/common/images/loadingimg.gif', 8, '同仁堂 同仁乌鸡白凤丸', '36g/瓶', '水蜜丸剂', '//c1.yaofangwang.net/common/code/99ed1d6d39f3f27d5e7a6a74e3419e025bb8782119a831c3bab6a8e857a5503d_au2.jpg', 469, '北京同仁堂股份有限公司同仁堂制药厂', 100),
('//c1.yaofangwang.net/common/images/loadingimg.gif', 15, '999 气滞胃痛颗粒', '5gx9袋/盒', '颗粒剂', '//c1.yaofangwang.net/common/code/1e01334fe276bb54def4ecd56929fae26fa2551fcd1ac64d9223d350e332170e_au2.jpg', 457, '辽宁华润本溪三药有限公司', 101),
('//c1.yaofangwang.net/common/images/loadingimg.gif', 14, '阿乐 阿托伐他汀钙片', '20mgx7片/盒', '薄膜衣片剂', '//c1.yaofangwang.net/common/code/bc77ea168ad14cd01a1400bf7da9f20071e2f7184204442fac75a01ef6811e74_au2.jpg', 456, '北京嘉林药业股份有限公司', 102),
('//c1.yaofangwang.net/common/images/loadingimg.gif', 22, '云南白药 云南白药气雾剂', '85g+30g/盒', '气雾剂', '//c1.yaofangwang.net/common/code/53e3a21fa3e9315e2cbea62916579b48646898e1bc66efa0aeb4db5abc817185_au2.jpg', 463, '云南白药集团股份有限公司', 103),
('//c1.yaofangwang.net/common/images/loadingimg.gif', 13, '金达克宁 酮康唑乳膏', '15g:0.3g/支', '乳膏剂', '//c1.yaofangwang.net/common/code/bc77ea168ad14cd01a1400bf7da9f200b26efdf709896d0c01cdaea9ef647d4e_au2.jpg', 452, '西安杨森制药有限公司', 104),
('//c1.yaofangwang.net/common/images/loadingimg.gif', 19, '天士力 养血清脑颗粒', '4gx15袋/盒', '颗粒剂', '//c1.yaofangwang.net/common/code/d69ed6849c173b08e4dea0610a02ff56958116cc199741e11b1b1e2bae7eb6e7_au2.jpg', 463, '天士力医药集团股份有限公司', 105),
('//c1.yaofangwang.net/common/images/loadingimg.gif', 15, '众生 复方血栓通胶囊', '0.5gx10粒x3板/盒', '硬胶囊剂', '//c1.yaofangwang.net/common/code/5fd899976e2d22bf5f0d40831933e62000b28abd2d8fb03bff211f647cfec8c4_au2.jpg', 461, '广东众生药业股份有限公司', 106),
('//c1.yaofangwang.net/common/images/loadingimg.gif', 13, '同仁堂 皮肤病血毒丸', '0.15gx200粒/瓶', '水丸剂', '//c1.yaofangwang.net/common/code/99ed1d6d39f3f27d5e7a6a74e3419e02618268a04249b61563018e4082fe7bb4_au2.jpg', 456, '北京同仁堂制药有限公司', 107),
('//c1.yaofangwang.net/common/images/loadingimg.gif', 7, '花红 消肿止痛酊', '33ml/瓶', '酊剂', '//c1.yaofangwang.net/common/code/cf9d52cf6de66c3c1f102afb42ea1d616370734c298b141fafb4e0beac382a2d_au2.jpg', 454, '广西壮族自治区花红药业股份有限公司', 108),
('//c1.yaofangwang.net/common/images/loadingimg.gif', 30, '万爽力 盐酸曲美他嗪片', '20mgx30片/盒', '薄膜衣片剂', '//c1.yaofangwang.net/common/code/bc77ea168ad14cd01a1400bf7da9f2007fd03d7fda94a644b395c0a587e89495_au2.jpg', 455, '施维雅(天津)制药有限公司', 109),
('//c1.yaofangwang.net/common/images/loadingimg.gif', 23, '葵花 护肝片', '0.35gx100片/瓶', '糖衣片剂', '//c1.yaofangwang.net/common/code/5fd899976e2d22bf5f0d40831933e620173e0cbcf204bc367621f94c8ff64713_au2.jpg', 450, '黑龙江葵花药业股份有限公司', 110),
('//c1.yaofangwang.net/common/images/loadingimg.gif', 10, '九芝堂 六味地黄丸', '200丸/瓶', '浓缩丸剂', '//c1.yaofangwang.net/common/code/13147439e45a48961a4d997b88814543b7074e2763b4b87dd3d6301b09676784_au2.jpg', 443, '九芝堂股份有限公司', 111),
('//c1.yaofangwang.net/common/images/loadingimg.gif', 31, '蒲地蓝消炎口服液', '10mlx10支/盒', '合剂', '//c1.yaofangwang.net/common/code/5fd899976e2d22bf5f0d40831933e620d3c7be7d18a7233f9b2e7b0c5d40c896_au2.jpg', 446, '济川药业集团有限公司', 112),
('//c1.yaofangwang.net/common/images/loadingimg.gif', 38, '拜唐苹 阿卡波糖片', '50mgx15片x2板/盒', '片剂', '//c1.yaofangwang.net/common/code/ca79fdfaf3a6d1306bd044f33ad83c39c85024a1c86ecdfa63c6f0a3d1dfd67a_au2.jpg', 448, '拜耳医药保健有限公司', 113),
('//c1.yaofangwang.net/common/images/loadingimg.gif', 28, '伊可新 维生素AD滴剂', '10粒x3板/盒', '滴剂', '//c1.yaofangwang.net/common/code/80ef3be519737fc81cb9a7dc3f9841277a43c6ecc4df1e02194cd595593a1f99_au2.jpg', 451, '山东达因海洋生物制药股份有限公司', 114),
('//c1.yaofangwang.net/common/images/loadingimg.gif', 11, '润洁 萘敏维滴眼液', '10ml/瓶', '滴眼剂', '//c1.yaofangwang.net/common/code/bc77ea168ad14cd01a1400bf7da9f20004f29b801659c77b671c7773563a7ca0_au2.jpg', 450, '山东博士伦福瑞达制药有限公司', 115),
('//c1.yaofangwang.net/common/images/loadingimg.gif', 24, '欣康 单硝酸异山梨酯片', '20mgx12片x4板/盒', '片剂', '//c1.yaofangwang.net/common/code/c618817a56a786a445488c4d5aff382c34c2dd9d35bc74267752dd6fdf407313_au2.jpg', 442, '鲁南贝特制药有限公司', 116),
('//c1.yaofangwang.net/common/images/loadingimg.gif', 19, '崋山 摩罗丹', '9gx9丸/盒', '大蜜丸剂', '//c1.yaofangwang.net/common/code/9b0a2a17004698515205a8476e74b30ad5285b7a3e02a290ba641da9ac57391f_au2.jpg', 437, '邯郸制药股份有限公司', 117),
('//c1.yaofangwang.net/common/images/loadingimg.gif', 30, '可定 瑞舒伐他汀钙片', '10mgx7片/盒', '薄膜衣片剂', '//c1.yaofangwang.net/common/code/9c4962d605bc913745d152eb7dd5f3845ba1577b8598449bb4484503f55120dc_au2.jpg', 450, '阿斯利康药业(中国)有限公司', 118),
('//c1.yaofangwang.net/common/images/loadingimg.gif', 9, '蜂胶口腔膜', '1cmx1.3cmx5片x4袋/盒', '膜剂', '//c1.yaofangwang.net/common/code/5fd899976e2d22bf5f0d40831933e620215f2f2d09761a63677cbefacd3eee06_au2.jpg', 442, '华润紫竹药业有限公司', 119),
('//c1.yaofangwang.net/common/images/loadingimg.gif', 15, '京万红 京万红软膏', '20g/支', '软膏剂', '//c1.yaofangwang.net/common/code/33162b3fc40122a5bae66e4a13965aa18a5ff8d0f40f1d6343ab9a6790df8deb_au2.jpg', 437, '天津达仁堂京万红药业有限公司', 120);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
