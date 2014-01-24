/*
Navicat MySQL Data Transfer

Source Server         : LOCAL
Source Server Version : 50524
Source Host           : 127.0.0.1:3306
Source Database       : longshadow_db

Target Server Type    : MYSQL
Target Server Version : 50524
File Encoding         : 65001

Date: 2014-01-24 15:46:58
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for fieldgroups
-- ----------------------------
DROP TABLE IF EXISTS `fieldgroups`;
CREATE TABLE `fieldgroups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET ascii NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=102 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fieldgroups
-- ----------------------------
INSERT INTO `fieldgroups` VALUES ('2', 'admin');
INSERT INTO `fieldgroups` VALUES ('3', 'user');
INSERT INTO `fieldgroups` VALUES ('4', 'role');
INSERT INTO `fieldgroups` VALUES ('5', 'permission');
INSERT INTO `fieldgroups` VALUES ('1', 'home');
INSERT INTO `fieldgroups` VALUES ('88', 'sitemap');
INSERT INTO `fieldgroups` VALUES ('83', 'basic-page');
INSERT INTO `fieldgroups` VALUES ('80', 'search');
INSERT INTO `fieldgroups` VALUES ('97', 'repeater_Tabbed_text_area');
INSERT INTO `fieldgroups` VALUES ('98', 'daystocome');
INSERT INTO `fieldgroups` VALUES ('99', 'tabbed-page');
INSERT INTO `fieldgroups` VALUES ('100', 'panel-page');
INSERT INTO `fieldgroups` VALUES ('101', 'repeater_panel_content_area');

-- ----------------------------
-- Table structure for fieldgroups_fields
-- ----------------------------
DROP TABLE IF EXISTS `fieldgroups_fields`;
CREATE TABLE `fieldgroups_fields` (
  `fieldgroups_id` int(10) unsigned NOT NULL DEFAULT '0',
  `fields_id` int(10) unsigned NOT NULL DEFAULT '0',
  `sort` int(11) unsigned NOT NULL DEFAULT '0',
  `data` text,
  PRIMARY KEY (`fieldgroups_id`,`fields_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fieldgroups_fields
-- ----------------------------
INSERT INTO `fieldgroups_fields` VALUES ('2', '2', '1', null);
INSERT INTO `fieldgroups_fields` VALUES ('2', '1', '0', null);
INSERT INTO `fieldgroups_fields` VALUES ('3', '3', '0', null);
INSERT INTO `fieldgroups_fields` VALUES ('3', '4', '2', null);
INSERT INTO `fieldgroups_fields` VALUES ('4', '5', '0', null);
INSERT INTO `fieldgroups_fields` VALUES ('5', '1', '0', null);
INSERT INTO `fieldgroups_fields` VALUES ('3', '92', '1', null);
INSERT INTO `fieldgroups_fields` VALUES ('1', '104', '3', null);
INSERT INTO `fieldgroups_fields` VALUES ('1', '103', '2', '');
INSERT INTO `fieldgroups_fields` VALUES ('83', '104', '6', null);
INSERT INTO `fieldgroups_fields` VALUES ('80', '1', '0', null);
INSERT INTO `fieldgroups_fields` VALUES ('83', '44', '5', '');
INSERT INTO `fieldgroups_fields` VALUES ('83', '82', '4', '');
INSERT INTO `fieldgroups_fields` VALUES ('83', '76', '3', '');
INSERT INTO `fieldgroups_fields` VALUES ('83', '1', '0', '');
INSERT INTO `fieldgroups_fields` VALUES ('83', '79', '2', '');
INSERT INTO `fieldgroups_fields` VALUES ('83', '78', '1', '');
INSERT INTO `fieldgroups_fields` VALUES ('88', '79', '1', null);
INSERT INTO `fieldgroups_fields` VALUES ('1', '1', '0', '');
INSERT INTO `fieldgroups_fields` VALUES ('88', '1', '0', null);
INSERT INTO `fieldgroups_fields` VALUES ('97', '100', '0', '');
INSERT INTO `fieldgroups_fields` VALUES ('1', '99', '1', '');
INSERT INTO `fieldgroups_fields` VALUES ('97', '101', '1', '');
INSERT INTO `fieldgroups_fields` VALUES ('98', '1', '0', '');
INSERT INTO `fieldgroups_fields` VALUES ('99', '1', '0', null);
INSERT INTO `fieldgroups_fields` VALUES ('99', '99', '1', null);
INSERT INTO `fieldgroups_fields` VALUES ('99', '103', '2', null);
INSERT INTO `fieldgroups_fields` VALUES ('99', '104', '3', null);
INSERT INTO `fieldgroups_fields` VALUES ('100', '104', '3', '');
INSERT INTO `fieldgroups_fields` VALUES ('98', '103', '1', null);
INSERT INTO `fieldgroups_fields` VALUES ('101', '79', '1', null);
INSERT INTO `fieldgroups_fields` VALUES ('101', '100', '0', '');
INSERT INTO `fieldgroups_fields` VALUES ('100', '1', '0', '');
INSERT INTO `fieldgroups_fields` VALUES ('100', '105', '1', '');
INSERT INTO `fieldgroups_fields` VALUES ('101', '44', '2', '');
INSERT INTO `fieldgroups_fields` VALUES ('101', '101', '3', '');
INSERT INTO `fieldgroups_fields` VALUES ('100', '103', '2', '');

-- ----------------------------
-- Table structure for fields
-- ----------------------------
DROP TABLE IF EXISTS `fields`;
CREATE TABLE `fields` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(128) CHARACTER SET ascii NOT NULL,
  `name` varchar(255) CHARACTER SET ascii NOT NULL,
  `flags` int(11) NOT NULL DEFAULT '0',
  `label` varchar(255) NOT NULL DEFAULT '',
  `data` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `type` (`type`)
) ENGINE=MyISAM AUTO_INCREMENT=106 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fields
-- ----------------------------
INSERT INTO `fields` VALUES ('1', 'FieldtypePageTitle', 'title', '13', 'Title', '{\"required\":1,\"textformatters\":[\"TextformatterEntities\"],\"size\":0,\"maxlength\":255}');
INSERT INTO `fields` VALUES ('2', 'FieldtypeModule', 'process', '25', 'Process', '{\"description\":\"The process that is executed on this page. Since this is mostly used by ProcessWire internally, it is recommended that you don\'t change the value of this unless adding your own pages in the admin.\",\"collapsed\":1,\"required\":1,\"moduleTypes\":[\"Process\"],\"permanent\":1}');
INSERT INTO `fields` VALUES ('3', 'FieldtypePassword', 'pass', '24', 'Set Password', '{\"collapsed\":1,\"size\":50,\"maxlength\":128}');
INSERT INTO `fields` VALUES ('5', 'FieldtypePage', 'permissions', '24', 'Permissions', '{\"derefAsPage\":0,\"parent_id\":31,\"labelFieldName\":\"title\",\"inputfield\":\"InputfieldCheckboxes\"}');
INSERT INTO `fields` VALUES ('4', 'FieldtypePage', 'roles', '24', 'Roles', '{\"derefAsPage\":0,\"parent_id\":30,\"labelFieldName\":\"name\",\"inputfield\":\"InputfieldCheckboxes\",\"description\":\"User will inherit the permissions assigned to each role. You may assign multiple roles to a user. When accessing a page, the user will only inherit permissions from the roles that are also assigned to the page\'s template.\"}');
INSERT INTO `fields` VALUES ('92', 'FieldtypeEmail', 'email', '9', 'E-Mail Address', '{\"size\":70,\"maxlength\":255}');
INSERT INTO `fields` VALUES ('82', 'FieldtypeTextarea', 'sidebar', '0', 'Sidebar', '{\"inputfieldClass\":\"InputfieldTinyMCE\",\"rows\":5,\"theme_advanced_buttons1\":\"formatselect,styleselect|,bold,italic,|,bullist,numlist,|,link,unlink,|,image,|,code,|,fullscreen\",\"theme_advanced_blockformats\":\"p,h2,h3,h4,blockquote,pre,code\",\"plugins\":\"inlinepopups,safari,table,media,paste,fullscreen,preelementfix\",\"valid_elements\":\"@[id|class],a[href|target|name],strong\\/b,em\\/i,br,img[src|id|class|width|height|alt],ul,ol,li,p[class],h2,h3,h4,blockquote,-p,-table[border=0|cellspacing|cellpadding|width|frame|rules|height|align|summary|bgcolor|background|bordercolor],-tr[rowspan|width|height|align|valign|bgcolor|background|bordercolor],tbody,thead,tfoot,#td[colspan|rowspan|width|height|align|valign|bgcolor|background|bordercolor|scope],#th[colspan|rowspan|width|height|align|valign|scope],pre,code\"}');
INSERT INTO `fields` VALUES ('44', 'FieldtypeImage', 'images', '0', 'Images', '{\"extensions\":\"gif jpg jpeg png\",\"entityEncode\":1,\"adminThumbs\":1,\"inputfieldClass\":\"InputfieldImage\",\"maxFiles\":0,\"descriptionRows\":1,\"fileSchema\":2}');
INSERT INTO `fields` VALUES ('79', 'FieldtypeTextarea', 'summary', '1', 'Summary', '{\"textformatters\":[\"TextformatterEntities\"],\"inputfieldClass\":\"InputfieldTextarea\",\"collapsed\":2,\"rows\":3}');
INSERT INTO `fields` VALUES ('76', 'FieldtypeTextarea', 'body', '0', 'Body', '{\"inputfieldClass\":\"InputfieldTinyMCE\",\"collapsed\":0,\"rows\":10,\"theme_advanced_buttons1\":\"formatselect,|,bold,italic,|,bullist,numlist,|,link,unlink,|,image,|,code,|,fullscreen\",\"theme_advanced_blockformats\":\"p,h2,h3,h4,blockquote,pre\",\"plugins\":\"inlinepopups,safari,media,paste,fullscreen\",\"valid_elements\":\"@[id|class],a[href|target|name],strong\\/b,em\\/i,br,img[src|id|class|width|height|alt],ul,ol,li,p[class],h2,h3,h4,blockquote,-p,-table[border=0|cellspacing|cellpadding|width|frame|rules|height|align|summary|bgcolor|background|bordercolor],-tr[rowspan|width|height|align|valign|bgcolor|background|bordercolor],tbody,thead,tfoot,#td[colspan|rowspan|width|height|align|valign|bgcolor|background|bordercolor|scope],#th[colspan|rowspan|width|height|align|valign|scope],code,pre\"}');
INSERT INTO `fields` VALUES ('78', 'FieldtypeText', 'headline', '0', 'Headline', '{\"description\":\"Use this instead of the Title if a longer headline is needed than what you want to appear in navigation.\",\"textformatters\":[\"TextformatterEntities\"],\"collapsed\":2,\"size\":0,\"maxlength\":1024}');
INSERT INTO `fields` VALUES ('99', 'FieldtypeRepeater', 'tabbed_text_area', '0', 'Tabbed Text Area', '{\"template_id\":43,\"parent_id\":1007,\"repeaterReadyItems\":3,\"repeaterFields\":[100,101]}');
INSERT INTO `fields` VALUES ('100', 'FieldtypeText', 'tab_title', '0', 'Tab Title', '{\"size\":0,\"maxlength\":2048}');
INSERT INTO `fields` VALUES ('101', 'FieldtypeTextarea', 'tab_content', '0', 'Tab Content', '{\"inputfieldClass\":\"InputfieldTinyMCE\",\"rows\":5}');
INSERT INTO `fields` VALUES ('103', 'FieldtypeCheckbox', 'class_external', '0', 'Class - external (use to add additional external class to menu)', '{\"description\":\"Use to add additional external class to menu item. This will allow the link to be external rather than as single page navigation, so override to normal type page menu\"}');
INSERT INTO `fields` VALUES ('104', 'FieldtypeText', 'jumpmenu_url', '0', 'This to allow menu item to goto URL', '{\"description\":\"For example, if you specify a jump link #jumphere, this will be used instead of the page destination\",\"size\":0,\"maxlength\":2048}');
INSERT INTO `fields` VALUES ('105', 'FieldtypeRepeater', 'panel_content_area', '0', 'Panel Content Area', '{\"template_id\":47,\"parent_id\":1026,\"repeaterReadyItems\":3,\"repeaterFields\":[100,79,44,101]}');

-- ----------------------------
-- Table structure for field_body
-- ----------------------------
DROP TABLE IF EXISTS `field_body`;
CREATE TABLE `field_body` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` mediumtext NOT NULL,
  PRIMARY KEY (`pages_id`),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of field_body
-- ----------------------------
INSERT INTO `field_body` VALUES ('27', '<h3>The page you were looking for is not found.</h3>\r\n<p>Please use our search engine or navigation above to find the page.</p>');
INSERT INTO `field_body` VALUES ('1002', '<h2>Ut capio feugiat saepius torqueo olim</h2><h3>In utinam facilisi eum vicis feugait nimis</h3><p>Iusto incassum appellatio cui macto genitus vel. Lobortis aliquam luctus, roto enim, imputo wisi tamen. Ratis odio, genitus acsi, neo illum consequat consectetuer ut. </p><p>Wisi fere virtus cogo, ex ut vel nullus similis vel iusto. Tation incassum adsum in, quibus capto premo diam suscipere facilisi. Uxor laoreet mos capio premo feugait ille et. Pecus abigo immitto epulae duis vel. Neque causa, indoles verto, decet ingenium dignissim. </p><p>Patria iriure vel vel autem proprius indoles ille sit. Tation blandit refoveo, accumsan ut ulciscor lucidus inhibeo capto aptent opes, foras. </p><h3>Dolore ea valde refero feugait utinam luctus</h3><p>Usitas, nostrud transverbero, in, amet, nostrud ad. Ex feugiat opto diam os aliquam regula lobortis dolore ut ut quadrum. Esse eu quis nunc jugis iriure volutpat wisi, fere blandit inhibeo melior, hendrerit, saluto velit. Eu bene ideo dignissim delenit accumsan nunc. Usitas ille autem camur consequat typicus feugait elit ex accumsan nutus accumsan nimis pagus, occuro. Immitto populus, qui feugiat opto pneum letalis paratus. Mara conventio torqueo nibh caecus abigo sit eum brevitas. Populus, duis ex quae exerci hendrerit, si antehabeo nobis, consequat ea praemitto zelus. </p><p>Immitto os ratis euismod conventio erat jus caecus sudo. Appellatio consequat, et ibidem ludus nulla dolor augue abdo tego euismod plaga lenis. Sit at nimis venio venio tego os et pecus enim pneum magna nobis ad pneum. Saepius turpis probo refero molior nonummy aliquam neque appellatio jus luctus acsi. Ulciscor refero pagus imputo eu refoveo valetudo duis dolore usitas. Consequat suscipere quod torqueo ratis ullamcorper, dolore lenis, letalis quia quadrum plaga minim. </p>');
INSERT INTO `field_body` VALUES ('1003', '<h2>The site template files are located in /site/templates/</h2><p>Each of the template files in this site profile includes the header template (head.inc), outputs the bodycopy, and then includes the footer template (foot.inc). This is to avoid duplication of the markup that is the same across all pages in the site. This is just one strategy you can use for templates.</p><p>You could of course make each template completely self contained with it\'s own markup, but if you have more than one template with some of the same markup, then it wouldn\'t be very efficient to do that.</p><p>Another strategy would be to use a have a main template that contains all your markup and has placeholder variables for the dynamic parts. Then your other templates would populate the placeholder variables before including the main template. See the <a href=\"http://processwire.com/download/\">skyscrapers</a> site profile for an example of that strategy.</p><p>Regardless of what strategy you use in your own site, I hope that you find ProcessWire easy to develop with. See the <a href=\"http://processwire.com/api/\">Developer API</a>, and the section on <a href=\"http://processwire.com/api/templates/\">Templates</a> to get you started.</p>');
INSERT INTO `field_body` VALUES ('1001', '<h2>Si lobortis singularis genitus ibidem saluto.</h2><p>Dolore ad nunc, mos accumsan paratus duis suscipit luptatum facilisis macto uxor iaceo quadrum. Demoveo, appellatio elit neque ad commodo ea. Wisi, iaceo, tincidunt at commoveo rusticus et, ludus. Feugait at blandit bene blandit suscipere abdo duis ideo bis commoveo pagus ex, velit. Consequat commodo roto accumsan, duis transverbero.</p>');
INSERT INTO `field_body` VALUES ('1004', '<h2>Pertineo vel dignissim, natu letalis fere odio</h2><h3>Si lobortis singularis genitus ibidem saluto</h3><p>Magna in gemino, gilvus iusto capto jugis abdo mos aptent acsi qui. Utrum inhibeo humo humo duis quae. Lucidus paulatim facilisi scisco quibus hendrerit conventio adsum. Feugiat eligo foras ex elit sed indoles hos elit ex antehabeo defui et nostrud. Letatio valetudo multo consequat inhibeo ille dignissim pagus et in quadrum eum eu. Aliquam si consequat, ut nulla amet et turpis exerci, adsum luctus ne decet, delenit. Commoveo nunc diam valetudo cui, aptent commoveo at obruo uxor nulla aliquip augue. </p><p>Iriure, ex velit, praesent vulpes delenit capio vero gilvus inhibeo letatio aliquip metuo qui eros. Transverbero demoveo euismod letatio torqueo melior. Ut odio in suscipit paulatim amet huic letalis suscipere eros causa, letalis magna. </p>');

-- ----------------------------
-- Table structure for field_class_external
-- ----------------------------
DROP TABLE IF EXISTS `field_class_external`;
CREATE TABLE `field_class_external` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` tinyint(4) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of field_class_external
-- ----------------------------
INSERT INTO `field_class_external` VALUES ('1017', '1');
INSERT INTO `field_class_external` VALUES ('1025', '1');
INSERT INTO `field_class_external` VALUES ('1016', '1');

-- ----------------------------
-- Table structure for field_email
-- ----------------------------
DROP TABLE IF EXISTS `field_email`;
CREATE TABLE `field_email` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of field_email
-- ----------------------------
INSERT INTO `field_email` VALUES ('41', 'dan@boulder-design.co.uk');

-- ----------------------------
-- Table structure for field_headline
-- ----------------------------
DROP TABLE IF EXISTS `field_headline`;
CREATE TABLE `field_headline` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of field_headline
-- ----------------------------
INSERT INTO `field_headline` VALUES ('1001', 'About Us');
INSERT INTO `field_headline` VALUES ('1003', 'Developing Site Templates');

-- ----------------------------
-- Table structure for field_images
-- ----------------------------
DROP TABLE IF EXISTS `field_images`;
CREATE TABLE `field_images` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` varchar(255) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  `description` text NOT NULL,
  `modified` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`),
  KEY `modified` (`modified`),
  KEY `created` (`created`),
  FULLTEXT KEY `description` (`description`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of field_images
-- ----------------------------
INSERT INTO `field_images` VALUES ('1029', '2012-02-15_23_31_26.jpg', '0', '', '2014-01-20 07:10:45', '2014-01-20 07:10:45');
INSERT INTO `field_images` VALUES ('1028', 'boot6.jpg', '0', '', '2014-01-18 15:23:54', '2014-01-18 15:23:54');

-- ----------------------------
-- Table structure for field_jumpmenu_url
-- ----------------------------
DROP TABLE IF EXISTS `field_jumpmenu_url`;
CREATE TABLE `field_jumpmenu_url` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(255)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of field_jumpmenu_url
-- ----------------------------
INSERT INTO `field_jumpmenu_url` VALUES ('1015', '/#theseries');
INSERT INTO `field_jumpmenu_url` VALUES ('1', '/#home');

-- ----------------------------
-- Table structure for field_panel_content_area
-- ----------------------------
DROP TABLE IF EXISTS `field_panel_content_area`;
CREATE TABLE `field_panel_content_area` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  `count` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(1)),
  KEY `count` (`count`,`pages_id`),
  KEY `parent_id` (`parent_id`,`pages_id`),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of field_panel_content_area
-- ----------------------------
INSERT INTO `field_panel_content_area` VALUES ('1025', '1028,1029', '2', '1027');

-- ----------------------------
-- Table structure for field_pass
-- ----------------------------
DROP TABLE IF EXISTS `field_pass`;
CREATE TABLE `field_pass` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` char(40) NOT NULL,
  `salt` char(32) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=ascii;

-- ----------------------------
-- Records of field_pass
-- ----------------------------
INSERT INTO `field_pass` VALUES ('41', 'WpwESTmwVtDxRw1TcwCBnSUgyv87i8y', '$2y$11$N30BcEdnN3B.xmERjj4TDO');
INSERT INTO `field_pass` VALUES ('40', '', '');

-- ----------------------------
-- Table structure for field_permissions
-- ----------------------------
DROP TABLE IF EXISTS `field_permissions`;
CREATE TABLE `field_permissions` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`,`pages_id`,`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of field_permissions
-- ----------------------------
INSERT INTO `field_permissions` VALUES ('38', '32', '1');
INSERT INTO `field_permissions` VALUES ('38', '34', '2');
INSERT INTO `field_permissions` VALUES ('38', '35', '3');
INSERT INTO `field_permissions` VALUES ('37', '36', '0');
INSERT INTO `field_permissions` VALUES ('38', '36', '0');
INSERT INTO `field_permissions` VALUES ('38', '50', '4');
INSERT INTO `field_permissions` VALUES ('38', '51', '5');
INSERT INTO `field_permissions` VALUES ('38', '52', '7');
INSERT INTO `field_permissions` VALUES ('38', '53', '8');
INSERT INTO `field_permissions` VALUES ('38', '54', '6');

-- ----------------------------
-- Table structure for field_process
-- ----------------------------
DROP TABLE IF EXISTS `field_process`;
CREATE TABLE `field_process` (
  `pages_id` int(11) NOT NULL DEFAULT '0',
  `data` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of field_process
-- ----------------------------
INSERT INTO `field_process` VALUES ('6', '17');
INSERT INTO `field_process` VALUES ('3', '12');
INSERT INTO `field_process` VALUES ('8', '12');
INSERT INTO `field_process` VALUES ('9', '14');
INSERT INTO `field_process` VALUES ('10', '7');
INSERT INTO `field_process` VALUES ('11', '47');
INSERT INTO `field_process` VALUES ('16', '48');
INSERT INTO `field_process` VALUES ('300', '104');
INSERT INTO `field_process` VALUES ('21', '50');
INSERT INTO `field_process` VALUES ('29', '66');
INSERT INTO `field_process` VALUES ('23', '10');
INSERT INTO `field_process` VALUES ('304', '138');
INSERT INTO `field_process` VALUES ('31', '136');
INSERT INTO `field_process` VALUES ('22', '76');
INSERT INTO `field_process` VALUES ('30', '68');
INSERT INTO `field_process` VALUES ('303', '129');
INSERT INTO `field_process` VALUES ('2', '87');
INSERT INTO `field_process` VALUES ('302', '121');
INSERT INTO `field_process` VALUES ('301', '109');
INSERT INTO `field_process` VALUES ('28', '76');

-- ----------------------------
-- Table structure for field_roles
-- ----------------------------
DROP TABLE IF EXISTS `field_roles`;
CREATE TABLE `field_roles` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`,`pages_id`,`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of field_roles
-- ----------------------------
INSERT INTO `field_roles` VALUES ('40', '37', '0');
INSERT INTO `field_roles` VALUES ('41', '37', '0');
INSERT INTO `field_roles` VALUES ('41', '38', '1');

-- ----------------------------
-- Table structure for field_sidebar
-- ----------------------------
DROP TABLE IF EXISTS `field_sidebar`;
CREATE TABLE `field_sidebar` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` mediumtext NOT NULL,
  PRIMARY KEY (`pages_id`),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of field_sidebar
-- ----------------------------
INSERT INTO `field_sidebar` VALUES ('1002', '<h3>Sudo nullus</h3><p>Et torqueo vulpes vereor luctus augue quod consectetuer antehabeo causa patria tation ex plaga ut. Abluo delenit wisi iriure eros feugiat probo nisl aliquip nisl, patria. Antehabeo esse camur nisl modo utinam. Sudo nullus ventosus ibidem facilisis saepius eum sino pneum, vicis odio voco opto.</p>');

-- ----------------------------
-- Table structure for field_summary
-- ----------------------------
DROP TABLE IF EXISTS `field_summary`;
CREATE TABLE `field_summary` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` mediumtext NOT NULL,
  PRIMARY KEY (`pages_id`),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of field_summary
-- ----------------------------
INSERT INTO `field_summary` VALUES ('1002', 'Dolore ea valde refero feugait utinam luctus. Probo velit commoveo et, delenit praesent, suscipit zelus, hendrerit zelus illum facilisi, regula. ');
INSERT INTO `field_summary` VALUES ('1001', 'This is a placeholder page with two child pages to serve as an example. ');
INSERT INTO `field_summary` VALUES ('1005', 'View this template\'s source for a demonstration of how to create a basic site map. ');
INSERT INTO `field_summary` VALUES ('1003', 'More about the templates included in this basic site profile. ');
INSERT INTO `field_summary` VALUES ('1004', 'Mos erat reprobo in praesent, mara premo, obruo iustum pecus velit lobortis te sagaciter populus.');
INSERT INTO `field_summary` VALUES ('1028', 'This is summary for this recipe 1');
INSERT INTO `field_summary` VALUES ('1029', 'This is summary for this recipe 1');

-- ----------------------------
-- Table structure for field_tabbed_text_area
-- ----------------------------
DROP TABLE IF EXISTS `field_tabbed_text_area`;
CREATE TABLE `field_tabbed_text_area` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  `count` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(1)),
  KEY `count` (`count`,`pages_id`),
  KEY `parent_id` (`parent_id`,`pages_id`),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of field_tabbed_text_area
-- ----------------------------
INSERT INTO `field_tabbed_text_area` VALUES ('1', '1009,1010,1011,1012,1013,1014,1032,1033', '8', '1008');
INSERT INTO `field_tabbed_text_area` VALUES ('1017', '1019,1020,1021', '3', '1018');

-- ----------------------------
-- Table structure for field_tab_content
-- ----------------------------
DROP TABLE IF EXISTS `field_tab_content`;
CREATE TABLE `field_tab_content` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` mediumtext NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(255)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of field_tab_content
-- ----------------------------
INSERT INTO `field_tab_content` VALUES ('1009', '<p class=\"dropCap\">The Burnt Man is on the rise. Without remorse and pity, he\'s got wealth beyond imagination and the power that goes with it. He won\'t stop till he’s got what he wants.</p><p>What he wants is each and every one of us under his control, living by his rules.</p><p>For years he\'s been a wreck of a man, scorched close to death, fluttering on life support. Now he\'s recovering fast, and his plans are back on track. Influential friends, venal, vicious, with political clout, will help him make sure of that.</p><p>Armies of the lost fight and die for him, human trash at his disposal. They\'re sure the future\'s theirs.</p><p>Others have different ideas, and their experience is legendary, their lives played out in the night. They’ve fought his kind for centuries, keeping in the dark, recruiting the like-minded, prepared to risk everything to keep the world safe.</p><p>Their long shadows follow him, steadfast, never stopping.</p><p>But the Burnt Man’s getting stronger and the fight\'s getting harder. Twenty years in the past, his enemies suffered a heartbreaking setback as they tried to end his threat.</p><p>Twenty years later, in our time, someone unexpected arrives, running from the streets where she scrapes a living, desperately looking for a place where she can hide so those she loves will live.</p><p>Hungry, chaotic, undisciplined. Passionate and fierce for those she cares about.</p><p>She\'s sixteen years old, motherless, fatherless, penniless, homeless…</p><p>Amy Davis. Street-child, loner, fighter, thief. Hero.</p>');
INSERT INTO `field_tab_content` VALUES ('1010', '<p class=\"dropCap\">Amy Davis\'s father abandoned her in the bus station when she was three years old. Now she\'s sixteen, lives in Stone City in America, earns cash stealing watches, avoids the cops, and shares a railway arch with Eric, an old tramp.</p><p>It\'s a precarious life, but she loves it. Then, breaking out of jail and needing money to buy food for herself and Eric, she steals Robert Franklin\'s watch.</p><p>Big mistake. Franklin\'s a millionaire. He\'s also a powerful criminal.</p><p>Amy goes on the run. She gets fake papers and hides in Farley Grange, an upmarket school.</p><p>Being Amy, she goes on a night-time mission to help a temperamental student. The mission goes wrong and ends up on the roof. Climbing down, she falls off the drainpipe.</p><p>She\'s caught before she hits the ground by two four-hundred year old people flying about in black long-johns, and realises she’s gone from the frying pan into the fire.</p><p><em>Out now, in independent bookshops and ebooks.</em></p>');
INSERT INTO `field_tab_content` VALUES ('1012', '<p class=\"dropCap\">Andrea Keyserling, Tom Cotton\'s failed assassin, returns, ready to kill for Amy\'s secret.</p><p>Amy realises she’s in a war, and the prize is Amy herself. Her unique talent makes her an asset in the coming battles for humanity’s soul and future. If The Burnt man gets hold of it, victory\'s in his grasp.</p><p>The fight with Andrea and her misshapen army goes critical, and Amy\'s life is on the line. She can\'t stop Andrea getting what she wants. And something else too: Andrea knows her. From way back.</p><p>There’s something in Amy\'s past that Andrea knows and Amy doesn\'t, and Andrea\'s not telling.</p><p>Amy understands something of her own importance to Andrea when she and Nancy do some mind-churning time-travelling on Baldwin\'s sofa: if one person lives, do millions die? In the Chronicles in Farley Grange\'s hidden library, it’s called The Failure, a failure that sets the course of the entire Twentieth Century, in all its bloody wars and carnage.</p><p>But that\'s history for you: everybody in the present has to live with the failures of the past. Amy knows today\'s problems have to be solved now, not yesterday. Which is why she puts her own life at risk to rescue an African statesman, the one they call the new Nelson Mandela, from assassination by Andrea Keyserling, and defies orders to do so.</p><p>If she\'s caught, Farley Grange\'s secrets will be exposed, and someone she trusts has their finger on the trigger, with Amy\'s name on the bullet, and a bullseye on her chest…</p><p>Light relief comes in Farley Grange\'s Polishing Day festivities, after which Amy, despite Lavinia Boston\'s somewhat cruel intentions, goes on a date with Tom Cotton. They find her father’s house, with secrets of its own. It\'s a heart-breaking moment for Amy, but Tom helps her through it. After that, as if it hadn\'t chnaged enough already, Amy\'s life is never quite the same again.</p><p>Shopping for crucial fashion items, which Amy could care less about, a long black coat gives her shivers down her spine, premonitions of death.</p><p>After which nobody bargains for flash floods and mass drownings, and Farley Grange students hurry to the rescue, not knowing Water is the Burnt Man\'s second weapon.</p><p>Lives are saved and lives are changed; the student you thought you knew might have a lot more going for them. In Farley Grange, you just can’t tell.</p><p>Detective Tawney pays an unexpected visit to the archway, and puts two and two together, realising Amy might be more than a small sixteen year old girl…</p><p><em>First draft written. Publishing date to be confirmed.</em></p>');
INSERT INTO `field_tab_content` VALUES ('1011', '<p class=\"dropCap\">Amy\'s in Farley Grange, with everything she ever dreamed of. Books, friends, food, a warm bed, and no-one bossing her about. There\'s even a guy she\'s interested in, one without a single criminal conviction. Tom Cotton, wicket-keeper for Farley Grange.</p><p>Unfortunately for Amy, Tom\'s heart is set on Joanna Glendenning, one of Amy\'s friends forever. Unfortunately for Tom, Joanna\'s heart is set on Francis Kyle, tall and hunky. Amy might be in with a chance, if she only knew what to do. An opportunity to impress Tom comes when half the cricket team go down to a bug, sabotaged by David Boston, Lavinia\'s even nastier brother.</p><p>Amy gets a place on the team, heading for the Championship for The Boot.</p><p>Naturally, things go disastrously wrong almost immediately. As ever, Amy dives straight in, and Nancy insists on diving in with her.</p><p>Searching for Hoover, Amy\'s treacherous old buyer of stolen watches, they head off to a mudbank near Marshall City, where criminals and the homeless eke out an illegal living in old ships. The Wrecking Yard.</p><p>They find more than criminals. They find experiments, and strange creatures of the Frankenstein kind, and barely escape with their lives.</p><p>Amy\'s confidence in herself is weakened. It gets worse after Amy nearly burns down an office block trying to rescue her two companions. She doubts her place in Farley Grange.</p><p>So does Margaret Nye, who wants Amy out. Margaret thinks Amy\'s a danger to everyone.</p><p>Then a message arrives from a dying woman that only Amy understands: The Burnt Man\'s on the move, and his weapons are the Four Elements, Earth, Air, Fire and Water.</p><p>Fire\'s bad enough, but at least Amy can see it; that’s mostly because she’s in the middle of it, and she’s the only one that can put it out.</p><p>How the other three elements will pan out is anybody’s guess.</p><p><em>To be published sometime 2014.</em></p>');
INSERT INTO `field_tab_content` VALUES ('1019', '<h3>Something about Mary</h3><p class=\"dropCap\">Et qui doctus debitis. Qui id placerat evertitur mediocritatem. Vis vide mnesarchum cu, vix maiorum repudiare consetetur at. Ei iudico moderatius pri. An duo facete feugait quaestio, etiam labore no pro, iisque labores ius ad. Partem commune menandri in nec, pri error delicata pericula eu. In ius graece epicurei explicari. Ea dicit adipisci percipitur eam. Appareat liberavisse ex eam, eu unum persequeris qui, prompta ponderum periculis has id. Id sed nobis evertitur. Est id modo iisque comprehensam. Ad sit facilis probatus, posse deterruisset mel eu. Vim ea voluptatum delicatissimi. Admodum patrioque est cu, id reque apeirian electram quo. Quo ea eirmod dissentias, decore eripuit in est. Qui modo quaestio eu, ceteros apeirian explicari in sea. Te dicant tacimates eum. Nec et diam enim consequuntur, vim iisque appetere cu.</p><p>Et vis error nonumes tacimates, laudem abhorreant id eam, et scaevola erroribus sit. Ei justo iudicabit pri, ex ceteros dolores imperdiet eum. Salutatus voluptatum reprimique vel ea. Cu mei meis dicam doctus. Per et errem lobortis explicari. Id pertinax invenire est, appareat liberavisse qui te. Has at natum consequuntur, vel sint saepe eu. In pri mundi mnesarchum, ex sanctus honestatis pri. Falli nostrum facilisis ea usu, nam ei consequat voluptaria, aliquid sadipscing scriptorem ut vim. Suas assueverit vel ne, ius ut latine delenit deleniti. Vix tale aliquid deseruisse ne, erant graeci ponderum et sit. Ad mel fugit salutatus, sed alia admodum in. Nullam nostrud eloquentiam nec an, habeo dicat inciderint in usu. Paulo sanctus efficiantur his eu, altera accusata ei vis. Vix ex prodesset mediocritatem, eu mel agam eleifend torquatos. Pri cu eius indoctum, duo in dolor eripuit euismod, et possim apeirian consulatu quo.</p><p>Est ex primis pertinax, vis dicant delectus sententiae ea. In mucius omittantur vis. Per id liber utroque ponderum. No ius debitis posidonium constituam. Cu vim perfecto evertitur. Suas omnis indoctum te vim. Accumsan detracto sadipscing sea id, te maiestatis voluptatum instructior per. Probo novum periculis no duo. Dicit quodsi bonorum ius in, omittam verterem ne per. Nec eirmod pericula constituam te, an diam quando noluisse duo. Et vel zril verear neglegentur. Eum ad meis partiendo, mutat altera mei et. In quo dicam appetere insolens. Sea nobis nemore oporteat no, te ius vivendo efficiantur. Usu doming interpretaris ne, pro ne accusam invidunt. Cum id ignota voluptatum, qui maiorum principes patrioque ex, iriure intellegam ne mel. Id dico habemus lobortis qui, suscipiantur delicatissimi mea no, ius cu quem magna tation. Mei probo delicata recteque no, ei lorem hendrerit vix, per adhuc illud recusabo an. Modus fabulas mea ea. Erant aperiri an sea. Quaeque vivendum ex duo. Pro id accusam consectetuer. Te diceret tincidunt mei, duo ut elitr legendos.</p>');
INSERT INTO `field_tab_content` VALUES ('1020', '<h3>Something about Jo</h3><p class=\"dropCap\">Vim ea voluptatum delicatissimi. Admodum patrioque est cu, id reque apeirian electram quo. Quo ea eirmod dissentias, decore eripuit in est. Qui modo quaestio eu, ceteros apeirian explicari in sea. Te dicant tacimates eum. Nec et diam enim consequuntur, vim iisque appetere cu. Et vis error nonumes tacimates, laudem abhorreant id eam, et scaevola erroribus sit. Ei justo iudicabit pri, ex ceteros dolores imperdiet eum. Salutatus voluptatum reprimique vel ea. Cu mei meis dicam doctus. Per et errem lobortis explicari. Id pertinax invenire est, appareat liberavisse qui te. Has at natum consequuntur, vel sint saepe eu. In pri mundi mnesarchum, ex sanctus honestatis pri. Falli nostrum facilisis ea usu, nam ei consequat voluptaria, aliquid sadipscing scriptorem ut vim.</p><p>Suas assueverit vel ne, ius ut latine delenit deleniti. Vix tale aliquid deseruisse ne, erant graeci ponderum et sit. Ad mel fugit salutatus, sed alia admodum in. Nullam nostrud eloquentiam nec an, habeo dicat inciderint in usu. Paulo sanctus efficiantur his eu, altera accusata ei vis. Vix ex prodesset mediocritatem, eu mel agam eleifend torquatos. Pri cu eius indoctum, duo in dolor eripuit euismod, et possim apeirian consulatu quo. Est ex primis pertinax, vis dicant delectus sententiae ea. In mucius omittantur vis. Per id liber utroque ponderum. No ius debitis posidonium constituam. Cu vim perfecto evertitur. Suas omnis indoctum te vim. Accumsan detracto sadipscing sea id, te maiestatis voluptatum instructior per. Probo novum periculis no duo. Dicit quodsi bonorum ius in, omittam verterem ne per. Nec eirmod pericula constituam te, an diam quando noluisse duo. Et vel zril verear neglegentur. Eum ad meis partiendo, mutat altera mei et. In quo dicam appetere insolens. Sea nobis nemore oporteat no, te ius vivendo efficiantur. Usu doming interpretaris ne, pro ne accusam invidunt. Cum id ignota voluptatum, qui maiorum principes patrioque ex, iriure intellegam ne mel. Id dico habemus lobortis qui, suscipiantur delicatissimi mea no, ius cu quem magna tation. Mei probo delicata recteque no, ei lorem hendrerit vix, per adhuc illud recusabo an. Modus fabulas mea ea. Erant aperiri an sea. Quaeque vivendum ex duo. Pro id accusam consectetuer. Te diceret tincidunt mei, duo ut elitr legendos.</p>');
INSERT INTO `field_tab_content` VALUES ('1021', '<h3>Something about Phil</h3><p class=\"dropCap\">In ius graece epicurei explicari. Ea dicit adipisci percipitur eam. Appareat liberavisse ex eam, eu unum persequeris qui, prompta ponderum periculis has id. Id sed nobis evertitur. Est id modo iisque comprehensam. Ad sit facilis probatus, posse deterruisset mel eu. Vim ea voluptatum delicatissimi. Admodum patrioque est cu, id reque apeirian electram quo. Quo ea eirmod dissentias, decore eripuit in est. Qui modo quaestio eu, ceteros apeirian explicari in sea. Te dicant tacimates eum. Nec et diam enim consequuntur, vim iisque appetere cu. Et vis error nonumes tacimates, laudem abhorreant id eam, et scaevola erroribus sit. Ei justo iudicabit pri, ex ceteros dolores imperdiet eum. Salutatus voluptatum reprimique vel ea. Cu mei meis dicam doctus. Per et errem lobortis explicari.</p><p>Id pertinax invenire est, appareat liberavisse qui te. Has at natum consequuntur, vel sint saepe eu. In pri mundi mnesarchum, ex sanctus honestatis pri. Falli nostrum facilisis ea usu, nam ei consequat voluptaria, aliquid sadipscing scriptorem ut vim. Suas assueverit vel ne, ius ut latine delenit deleniti. Vix tale aliquid deseruisse ne, erant graeci ponderum et sit. Ad mel fugit salutatus, sed alia admodum in. Nullam nostrud eloquentiam nec an, habeo dicat inciderint in usu. Paulo sanctus efficiantur his eu, altera accusata ei vis. Vix ex prodesset mediocritatem, eu mel agam eleifend torquatos. Pri cu eius indoctum, duo in dolor eripuit euismod, et possim apeirian consulatu quo. Est ex primis pertinax, vis dicant delectus sententiae ea. In mucius omittantur vis. Per id liber utroque ponderum. No ius debitis posidonium constituam. Cu vim perfecto evertitur. Suas omnis indoctum te vim. Erant aperiri an sea. Quaeque vivendum ex duo. Pro id accusam consectetuer. Te diceret tincidunt mei, duo ut elitr legendos.</p>');
INSERT INTO `field_tab_content` VALUES ('1028', '<p><strong>Ingredients:</strong></p><p>Half a dozen shooes</p><p>laces and a mouse</p><p><strong>Method:</strong></p><p>stick \'em on a plate</p>');
INSERT INTO `field_tab_content` VALUES ('1013', '<p class=\"dropCap\">Katharine Boleyn stages a coup for power in Farley Grange, as Amy\'s friends spend the weekend in a hotel. Amy has to study and Nancy’s under doctor’s orders, so neither of them go.</p><p>Unfortunately no-one knows the hotel\'s owned by a Burnt Man Friend, broken out of jail and still peeved over Amy burning down his office block.</p><p>Nancy\'s car crashes, and with Nancy seriously injured, Amy goes to the rescue alone. But the hotel\'s in deep country, it\'s a dead zone, and the phones aren’t working. No-one\'s coming to help, and it\'s a race against time.</p><p>Amy\'s weak, and has to rely on her own skill and street-wise courage, with nothing but her soldier’s training to help her.</p><p>Detective Tawney, on the run from his own police force on a trumped-up corruption charge, has to work fast and brutal to save his own life and Amy\'s.</p><p>By the time he arrives with reinforcements, there\'s bodies all over the floor. Amy\'s smashed her way in, too late to save lives.</p><p>Then someone from Amy\'s past arrives, dredging up memories she\'d rather forget. Her flash-backs are horrendous and shameful, and she has to work hard to recover, until she\'s made to realise she was innocent all along. She thinks she can stand tall again, and faces the world with new resolution.</p><p>Amy stands so tall that once again she disobeys orders, threatening her place in Farley Grange. But some things are more important than procedure, and Amy has no doubt she\'s right. If necessary, she\'ll go on her own, and damn the consequences.</p><p>Things go from bad to worse, and Amy collapses saving Joanna\'s life. She\'s brought back to Farley Grange, but it might be too late. The medics don\'t know how Amy\'s body works, and they can\'t bring her round. Her life hangs by a thread, and Eric\'s brought in to say goodbye.</p><p>Barely recovered, Amy takes on a regiment of Burnt Man Troops. She realises too late she\'s fighting in the Third Element, Air, in a way she never expected.</p><p>The consequences of that are terrible. The injuries she sees are deadly. The death of a beloved friend is inevitable, and Amy sees something she never hoped she\'d see.</p><p><em>First draft written. Publishing date to be confirmed.</em></p>');
INSERT INTO `field_tab_content` VALUES ('1014', '<p class=\"dropCap\">Amy\'s declared a Burnt Man assassin, and has to run for her life. She\'s tried in her absence, and is wanted, dead or alive.</p><p>After rescuing Eric from Robert Franklin, she sets up a new life, determined never to return to Farley Grange.</p><p>Katharine Boleyn is arrested as a Burnt Man agent, and The Burnt Man goes to war, attacking Stone City. But Katharine\'s nothing if not determined, and escapes from Farley Grange, armed to the teeth and extremely dangerous.</p><p>Farley Grange is evacuated under Margaret Nye\'s orders. After four hundred years, it no longer exists.</p><p>Amy has to run from Barbara Tyson. But she has to haul Eric with her, and he\'s scared to death. She\'s shot, and it all looks to be over for the both of them, and Tiger too, Eric\'s beloved dog.</p><p>Help arrives, and Amy and her friends make a last stand, but they\'re vastly outnumbered and finally Amy\'s too weak to fight.</p><p>They prepare to die, the battle ground Earth, the Burnt Man\'s last element.</p><p>Amy beats the first Burnt Man army, only to be weakened, and unable to resist the second.</p><p>And at long last, Amy finds her father.</p><p><em>First draft written. Publishing date to be confirmed.</em></p>');
INSERT INTO `field_tab_content` VALUES ('1032', '<p class=\"dropCap\">This is the Stone City of Days to Come.</p><p>As can be seen in Andy Walsh\'s <a href=\"/days-to-come/\">brilliant illustration</a>, Stone City is once again under attack, and Amy\'s part of a rag-tag army fighting for survival in the streets. Even Tiger\'s playing a part, keeping watch while Amy takes a well-earned nap.</p><p>Stone City has been declared a terrorist no-go zone by the national government, now in The Burnt Man\'s power. It\'s walled off by concrete, tanks, and helicopter gun-ships.</p><p>Street gangs roam free, fighting in the ruins for territory. But in the middle of chaos, Amy finds her own happiness, with someone she never expected, a man of singular courage and purpose.</p><p>The dispossessed, led by Sparks and his wife Polly, emerge from their shelters and stand by her side against government troops, Burnt Man Drones, vicious Burnt Man propaganda, and frenzied street-gangs.</p><p>But Amy knows there\'s only one sure way to destroy The Burnt Man. If she fails now, humanity faces a bleak and terrible future.</p><p>Fighting side by side with her father, will she have the courage to risk everything she\'s gained?</p><p><em>Publishing 2018, perhaps later?</em></p>');
INSERT INTO `field_tab_content` VALUES ('1033', '<p class=\"dropCap\">This book travels backwards and forwards between the English Civil War, telling the adventures of Peter Fairlight and his children and modern times in Stone City.</p><p><em>Publishing 2019, perhaps later?</em></p>');
INSERT INTO `field_tab_content` VALUES ('1029', '<p><strong>Ingredients:</strong><br />Half a dozen shooes<br />laces and a mouse</p><p><strong>Method:</strong><br />stick \'em on a plate</p>');

-- ----------------------------
-- Table structure for field_tab_title
-- ----------------------------
DROP TABLE IF EXISTS `field_tab_title`;
CREATE TABLE `field_tab_title` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(255)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of field_tab_title
-- ----------------------------
INSERT INTO `field_tab_title` VALUES ('1009', 'The world of the series: modern times, here and now');
INSERT INTO `field_tab_title` VALUES ('1010', 'Book One: Farley Grange');
INSERT INTO `field_tab_title` VALUES ('1011', 'Book Two: Her Life So Far');
INSERT INTO `field_tab_title` VALUES ('1019', 'Mary Shelly');
INSERT INTO `field_tab_title` VALUES ('1020', 'Joseph K');
INSERT INTO `field_tab_title` VALUES ('1021', 'Philip Marlowe');
INSERT INTO `field_tab_title` VALUES ('1028', 'Recipe 1');
INSERT INTO `field_tab_title` VALUES ('1012', 'Book Three: A Gun, and Roses');
INSERT INTO `field_tab_title` VALUES ('1013', 'Book Four: The Rocket’s Red Glare');
INSERT INTO `field_tab_title` VALUES ('1014', 'Book Five: The Gathering of the Nine');
INSERT INTO `field_tab_title` VALUES ('1032', 'Book Six: The Fourth Flight');
INSERT INTO `field_tab_title` VALUES ('1033', 'Book Seven: Peter Fairlight');
INSERT INTO `field_tab_title` VALUES ('1029', 'REcipe 2');

-- ----------------------------
-- Table structure for field_title
-- ----------------------------
DROP TABLE IF EXISTS `field_title`;
CREATE TABLE `field_title` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(255)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of field_title
-- ----------------------------
INSERT INTO `field_title` VALUES ('14', 'Edit Template');
INSERT INTO `field_title` VALUES ('15', 'Add Template');
INSERT INTO `field_title` VALUES ('12', 'Templates');
INSERT INTO `field_title` VALUES ('11', 'Templates');
INSERT INTO `field_title` VALUES ('19', 'Field groups');
INSERT INTO `field_title` VALUES ('20', 'Edit Fieldgroup');
INSERT INTO `field_title` VALUES ('16', 'Fields');
INSERT INTO `field_title` VALUES ('17', 'Fields');
INSERT INTO `field_title` VALUES ('18', 'Edit Field');
INSERT INTO `field_title` VALUES ('22', 'Setup');
INSERT INTO `field_title` VALUES ('3', 'Pages');
INSERT INTO `field_title` VALUES ('6', 'Add Page');
INSERT INTO `field_title` VALUES ('8', 'Page List');
INSERT INTO `field_title` VALUES ('9', 'Save Sort');
INSERT INTO `field_title` VALUES ('10', 'Edit Page');
INSERT INTO `field_title` VALUES ('21', 'Modules');
INSERT INTO `field_title` VALUES ('29', 'Users');
INSERT INTO `field_title` VALUES ('30', 'Roles');
INSERT INTO `field_title` VALUES ('2', 'Admin');
INSERT INTO `field_title` VALUES ('7', 'Trash');
INSERT INTO `field_title` VALUES ('27', '404 Page Not Found');
INSERT INTO `field_title` VALUES ('302', 'Insert Link');
INSERT INTO `field_title` VALUES ('23', 'Login');
INSERT INTO `field_title` VALUES ('304', 'Profile');
INSERT INTO `field_title` VALUES ('301', 'Empty Trash');
INSERT INTO `field_title` VALUES ('300', 'Search');
INSERT INTO `field_title` VALUES ('303', 'Insert Image');
INSERT INTO `field_title` VALUES ('28', 'Access');
INSERT INTO `field_title` VALUES ('31', 'Permissions');
INSERT INTO `field_title` VALUES ('32', 'Edit pages');
INSERT INTO `field_title` VALUES ('34', 'Delete pages');
INSERT INTO `field_title` VALUES ('35', 'Move pages (change parent)');
INSERT INTO `field_title` VALUES ('36', 'View pages');
INSERT INTO `field_title` VALUES ('50', 'Sort child pages');
INSERT INTO `field_title` VALUES ('51', 'Change templates on pages');
INSERT INTO `field_title` VALUES ('52', 'Administer users (role must also have template edit access)');
INSERT INTO `field_title` VALUES ('53', 'User can update profile/password');
INSERT INTO `field_title` VALUES ('54', 'Lock or unlock a page');
INSERT INTO `field_title` VALUES ('1', 'Home');
INSERT INTO `field_title` VALUES ('1001', 'About');
INSERT INTO `field_title` VALUES ('1002', 'Child page example 1');
INSERT INTO `field_title` VALUES ('1000', 'Search');
INSERT INTO `field_title` VALUES ('1003', 'Templates');
INSERT INTO `field_title` VALUES ('1004', 'Child page example 2');
INSERT INTO `field_title` VALUES ('1005', 'Site Map');
INSERT INTO `field_title` VALUES ('1006', 'Repeaters');
INSERT INTO `field_title` VALUES ('1007', 'Tabbed_text_area');
INSERT INTO `field_title` VALUES ('1008', 'home');
INSERT INTO `field_title` VALUES ('1015', 'The Series');
INSERT INTO `field_title` VALUES ('1016', 'Days to come');
INSERT INTO `field_title` VALUES ('1017', 'Guests');
INSERT INTO `field_title` VALUES ('1018', 'guests');
INSERT INTO `field_title` VALUES ('1025', 'Recipes');
INSERT INTO `field_title` VALUES ('1026', 'panel_content_area');
INSERT INTO `field_title` VALUES ('1027', 'recipes');

-- ----------------------------
-- Table structure for modules
-- ----------------------------
DROP TABLE IF EXISTS `modules`;
CREATE TABLE `modules` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `class` varchar(128) CHARACTER SET ascii NOT NULL,
  `flags` int(11) NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `class` (`class`)
) ENGINE=MyISAM AUTO_INCREMENT=150 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of modules
-- ----------------------------
INSERT INTO `modules` VALUES ('1', 'FieldtypeTextarea', '0', '');
INSERT INTO `modules` VALUES ('2', 'FieldtypeNumber', '0', '');
INSERT INTO `modules` VALUES ('3', 'FieldtypeText', '0', '');
INSERT INTO `modules` VALUES ('4', 'FieldtypePage', '0', '');
INSERT INTO `modules` VALUES ('30', 'InputfieldForm', '0', '');
INSERT INTO `modules` VALUES ('6', 'FieldtypeFile', '0', '');
INSERT INTO `modules` VALUES ('7', 'ProcessPageEdit', '1', '');
INSERT INTO `modules` VALUES ('10', 'ProcessLogin', '0', '');
INSERT INTO `modules` VALUES ('147', 'TextformatterPstripper', '1', '');
INSERT INTO `modules` VALUES ('12', 'ProcessPageList', '0', '{\"pageLabelField\":\"title\",\"paginationLimit\":25,\"limit\":50}');
INSERT INTO `modules` VALUES ('121', 'ProcessPageEditLink', '1', '');
INSERT INTO `modules` VALUES ('14', 'ProcessPageSort', '0', '');
INSERT INTO `modules` VALUES ('15', 'InputfieldPageListSelect', '0', '');
INSERT INTO `modules` VALUES ('117', 'JqueryUI', '1', '');
INSERT INTO `modules` VALUES ('17', 'ProcessPageAdd', '0', '');
INSERT INTO `modules` VALUES ('125', 'SessionLoginThrottle', '3', '');
INSERT INTO `modules` VALUES ('122', 'InputfieldPassword', '0', '');
INSERT INTO `modules` VALUES ('25', 'InputfieldAsmSelect', '0', '');
INSERT INTO `modules` VALUES ('116', 'JqueryCore', '1', '');
INSERT INTO `modules` VALUES ('27', 'FieldtypeModule', '0', '');
INSERT INTO `modules` VALUES ('28', 'FieldtypeDatetime', '0', '');
INSERT INTO `modules` VALUES ('29', 'FieldtypeEmail', '0', '');
INSERT INTO `modules` VALUES ('108', 'InputfieldURL', '0', '');
INSERT INTO `modules` VALUES ('32', 'InputfieldSubmit', '0', '');
INSERT INTO `modules` VALUES ('33', 'InputfieldWrapper', '0', '');
INSERT INTO `modules` VALUES ('34', 'InputfieldText', '0', '');
INSERT INTO `modules` VALUES ('35', 'InputfieldTextarea', '0', '');
INSERT INTO `modules` VALUES ('36', 'InputfieldSelect', '0', '');
INSERT INTO `modules` VALUES ('37', 'InputfieldCheckbox', '0', '');
INSERT INTO `modules` VALUES ('38', 'InputfieldCheckboxes', '0', '');
INSERT INTO `modules` VALUES ('39', 'InputfieldRadios', '0', '');
INSERT INTO `modules` VALUES ('40', 'InputfieldHidden', '0', '');
INSERT INTO `modules` VALUES ('41', 'InputfieldName', '0', '');
INSERT INTO `modules` VALUES ('43', 'InputfieldSelectMultiple', '0', '');
INSERT INTO `modules` VALUES ('45', 'JqueryWireTabs', '0', '');
INSERT INTO `modules` VALUES ('46', 'ProcessPage', '0', '');
INSERT INTO `modules` VALUES ('47', 'ProcessTemplate', '0', '');
INSERT INTO `modules` VALUES ('48', 'ProcessField', '0', '');
INSERT INTO `modules` VALUES ('50', 'ProcessModule', '0', '');
INSERT INTO `modules` VALUES ('114', 'PagePermissions', '3', '');
INSERT INTO `modules` VALUES ('97', 'FieldtypeCheckbox', '1', '');
INSERT INTO `modules` VALUES ('115', 'PageRender', '3', '{\"clearCache\":1}');
INSERT INTO `modules` VALUES ('55', 'InputfieldFile', '0', '');
INSERT INTO `modules` VALUES ('56', 'InputfieldImage', '0', '');
INSERT INTO `modules` VALUES ('57', 'FieldtypeImage', '0', '');
INSERT INTO `modules` VALUES ('60', 'InputfieldPage', '0', '{\"inputfieldClasses\":[\"InputfieldSelect\",\"InputfieldSelectMultiple\",\"InputfieldCheckboxes\",\"InputfieldRadios\",\"InputfieldAsmSelect\",\"InputfieldPageListSelect\",\"InputfieldPageListSelectMultiple\"]}');
INSERT INTO `modules` VALUES ('61', 'TextformatterEntities', '0', '');
INSERT INTO `modules` VALUES ('145', 'TextformatterMarkdownExtra', '1', '');
INSERT INTO `modules` VALUES ('146', 'TextformatterSmartypants', '1', '');
INSERT INTO `modules` VALUES ('66', 'ProcessUser', '0', '{\"showFields\":[\"name\",\"email\",\"roles\"]}');
INSERT INTO `modules` VALUES ('67', 'MarkupAdminDataTable', '0', '');
INSERT INTO `modules` VALUES ('68', 'ProcessRole', '0', '{\"showFields\":[\"name\"]}');
INSERT INTO `modules` VALUES ('76', 'ProcessList', '0', '');
INSERT INTO `modules` VALUES ('78', 'InputfieldFieldset', '0', '');
INSERT INTO `modules` VALUES ('79', 'InputfieldMarkup', '0', '');
INSERT INTO `modules` VALUES ('80', 'InputfieldEmail', '0', '');
INSERT INTO `modules` VALUES ('89', 'FieldtypeFloat', '1', '');
INSERT INTO `modules` VALUES ('83', 'ProcessPageView', '0', '');
INSERT INTO `modules` VALUES ('84', 'FieldtypeInteger', '0', '');
INSERT INTO `modules` VALUES ('85', 'InputfieldInteger', '0', '');
INSERT INTO `modules` VALUES ('86', 'InputfieldPageName', '0', '');
INSERT INTO `modules` VALUES ('87', 'ProcessHome', '0', '');
INSERT INTO `modules` VALUES ('90', 'InputfieldFloat', '0', '');
INSERT INTO `modules` VALUES ('92', 'InputfieldTinyMCE', '0', '');
INSERT INTO `modules` VALUES ('94', 'InputfieldDatetime', '0', '');
INSERT INTO `modules` VALUES ('98', 'MarkupPagerNav', '0', '');
INSERT INTO `modules` VALUES ('129', 'ProcessPageEditImageSelect', '1', '');
INSERT INTO `modules` VALUES ('102', 'JqueryFancybox', '1', '');
INSERT INTO `modules` VALUES ('103', 'JqueryTableSorter', '1', '');
INSERT INTO `modules` VALUES ('104', 'ProcessPageSearch', '1', '{\"searchFields\":\"title body\",\"displayField\":\"title path\"}');
INSERT INTO `modules` VALUES ('105', 'FieldtypeFieldsetOpen', '1', '');
INSERT INTO `modules` VALUES ('106', 'FieldtypeFieldsetClose', '1', '');
INSERT INTO `modules` VALUES ('107', 'FieldtypeFieldsetTabOpen', '1', '');
INSERT INTO `modules` VALUES ('109', 'ProcessPageTrash', '1', '');
INSERT INTO `modules` VALUES ('111', 'FieldtypePageTitle', '1', '');
INSERT INTO `modules` VALUES ('112', 'InputfieldPageTitle', '0', '');
INSERT INTO `modules` VALUES ('113', 'MarkupPageArray', '3', '');
INSERT INTO `modules` VALUES ('131', 'InputfieldButton', '0', '');
INSERT INTO `modules` VALUES ('133', 'FieldtypePassword', '1', '');
INSERT INTO `modules` VALUES ('134', 'ProcessPageType', '1', '{\"showFields\":[]}');
INSERT INTO `modules` VALUES ('135', 'FieldtypeURL', '1', '');
INSERT INTO `modules` VALUES ('136', 'ProcessPermission', '1', '{\"showFields\":[\"name\",\"title\"]}');
INSERT INTO `modules` VALUES ('137', 'InputfieldPageListSelectMultiple', '0', '');
INSERT INTO `modules` VALUES ('138', 'ProcessProfile', '1', '{\"profileFields\":[\"pass\",\"email\"]}');
INSERT INTO `modules` VALUES ('139', 'SystemUpdater', '1', '{\"systemVersion\":3}');
INSERT INTO `modules` VALUES ('148', 'FieldtypeRepeater', '3', '{\"repeatersRootPageID\":1006}');
INSERT INTO `modules` VALUES ('149', 'InputfieldRepeater', '0', '');

-- ----------------------------
-- Table structure for pages
-- ----------------------------
DROP TABLE IF EXISTS `pages`;
CREATE TABLE `pages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) unsigned NOT NULL DEFAULT '0',
  `templates_id` int(11) unsigned NOT NULL DEFAULT '0',
  `name` varchar(128) CHARACTER SET ascii NOT NULL,
  `status` int(10) unsigned NOT NULL DEFAULT '1',
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_users_id` int(10) unsigned NOT NULL DEFAULT '2',
  `created` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_users_id` int(10) unsigned NOT NULL DEFAULT '2',
  `sort` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name_parent_id` (`name`,`parent_id`),
  KEY `parent_id` (`parent_id`),
  KEY `templates_id` (`templates_id`),
  KEY `modified` (`modified`),
  KEY `created` (`created`),
  KEY `status` (`status`)
) ENGINE=MyISAM AUTO_INCREMENT=1038 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pages
-- ----------------------------
INSERT INTO `pages` VALUES ('1', '0', '1', 'home', '9', '2014-01-20 11:40:19', '41', '0000-00-00 00:00:00', '2', '0');
INSERT INTO `pages` VALUES ('2', '1', '2', 'manager', '1035', '2013-12-20 12:27:52', '40', '0000-00-00 00:00:00', '2', '5');
INSERT INTO `pages` VALUES ('3', '2', '2', 'page', '21', '2011-03-29 21:37:06', '41', '0000-00-00 00:00:00', '2', '0');
INSERT INTO `pages` VALUES ('6', '3', '2', 'add', '21', '2011-03-29 21:37:06', '41', '0000-00-00 00:00:00', '2', '0');
INSERT INTO `pages` VALUES ('7', '1', '2', 'trash', '1039', '2011-08-14 22:04:52', '41', '2010-02-07 05:29:39', '2', '6');
INSERT INTO `pages` VALUES ('8', '3', '2', 'list', '21', '2011-03-29 21:37:06', '41', '0000-00-00 00:00:00', '2', '1');
INSERT INTO `pages` VALUES ('9', '3', '2', 'sort', '23', '2011-03-29 21:37:06', '41', '0000-00-00 00:00:00', '2', '2');
INSERT INTO `pages` VALUES ('10', '3', '2', 'edit', '21', '2011-03-29 21:37:06', '41', '0000-00-00 00:00:00', '2', '3');
INSERT INTO `pages` VALUES ('11', '22', '2', 'template', '21', '2011-03-29 21:37:06', '41', '2010-02-01 11:04:54', '2', '0');
INSERT INTO `pages` VALUES ('16', '22', '2', 'field', '21', '2011-03-29 21:37:06', '41', '2010-02-01 12:44:07', '2', '2');
INSERT INTO `pages` VALUES ('21', '2', '2', 'module', '21', '2011-03-29 21:37:06', '41', '2010-02-02 10:02:24', '2', '2');
INSERT INTO `pages` VALUES ('22', '2', '2', 'setup', '21', '2011-03-29 21:37:06', '41', '2010-02-09 12:16:59', '2', '1');
INSERT INTO `pages` VALUES ('23', '2', '2', 'login', '1035', '2011-05-03 23:38:10', '41', '2010-02-17 09:59:39', '2', '4');
INSERT INTO `pages` VALUES ('27', '1', '29', 'http404', '1035', '2011-08-14 22:04:52', '41', '2010-06-03 06:53:03', '3', '4');
INSERT INTO `pages` VALUES ('28', '2', '2', 'access', '13', '2011-05-03 23:38:10', '41', '2011-03-19 19:14:20', '2', '3');
INSERT INTO `pages` VALUES ('29', '28', '2', 'users', '29', '2011-04-05 00:39:08', '41', '2011-03-19 19:15:29', '2', '0');
INSERT INTO `pages` VALUES ('30', '28', '2', 'roles', '29', '2011-04-05 00:38:39', '41', '2011-03-19 19:15:45', '2', '1');
INSERT INTO `pages` VALUES ('31', '28', '2', 'permissions', '29', '2011-04-05 00:53:52', '41', '2011-03-19 19:16:00', '2', '2');
INSERT INTO `pages` VALUES ('32', '31', '5', 'page-edit', '25', '2011-09-06 15:34:24', '41', '2011-03-19 19:17:03', '2', '2');
INSERT INTO `pages` VALUES ('34', '31', '5', 'page-delete', '25', '2011-09-06 15:34:33', '41', '2011-03-19 19:17:23', '2', '3');
INSERT INTO `pages` VALUES ('35', '31', '5', 'page-move', '25', '2011-09-06 15:34:48', '41', '2011-03-19 19:17:41', '2', '4');
INSERT INTO `pages` VALUES ('36', '31', '5', 'page-view', '25', '2011-09-06 15:34:14', '41', '2011-03-19 19:17:57', '2', '0');
INSERT INTO `pages` VALUES ('37', '30', '4', 'guest', '25', '2011-04-05 01:37:19', '41', '2011-03-19 19:18:41', '2', '0');
INSERT INTO `pages` VALUES ('38', '30', '4', 'superuser', '25', '2011-08-17 14:34:39', '41', '2011-03-19 19:18:55', '2', '1');
INSERT INTO `pages` VALUES ('41', '29', '3', 'boulder', '1', '2013-12-20 12:27:52', '40', '2011-03-19 19:41:26', '2', '0');
INSERT INTO `pages` VALUES ('40', '29', '3', 'guest', '25', '2011-08-17 14:26:09', '41', '2011-03-20 17:31:59', '2', '1');
INSERT INTO `pages` VALUES ('50', '31', '5', 'page-sort', '25', '2011-09-06 15:34:58', '41', '2011-03-26 22:04:50', '41', '5');
INSERT INTO `pages` VALUES ('51', '31', '5', 'page-template', '25', '2011-09-06 15:35:09', '41', '2011-03-26 22:25:31', '41', '6');
INSERT INTO `pages` VALUES ('52', '31', '5', 'user-admin', '25', '2011-09-06 15:35:42', '41', '2011-03-30 00:06:47', '41', '10');
INSERT INTO `pages` VALUES ('53', '31', '5', 'profile-edit', '1', '2011-08-16 22:32:48', '41', '2011-04-26 00:02:22', '41', '13');
INSERT INTO `pages` VALUES ('54', '31', '5', 'page-lock', '1', '2011-08-15 17:48:12', '41', '2011-08-15 17:45:48', '41', '8');
INSERT INTO `pages` VALUES ('300', '3', '2', 'search', '21', '2011-03-29 21:37:06', '41', '2010-08-04 05:23:59', '2', '5');
INSERT INTO `pages` VALUES ('301', '3', '2', 'trash', '23', '2011-03-29 21:37:06', '41', '2010-09-28 05:39:30', '2', '5');
INSERT INTO `pages` VALUES ('302', '3', '2', 'link', '17', '2011-03-29 21:37:06', '41', '2010-10-01 05:03:56', '2', '6');
INSERT INTO `pages` VALUES ('303', '3', '2', 'image', '17', '2011-03-29 21:37:06', '41', '2010-10-13 03:56:48', '2', '7');
INSERT INTO `pages` VALUES ('304', '2', '2', 'profile', '1025', '2011-05-03 23:38:10', '41', '2011-04-25 23:57:18', '41', '5');
INSERT INTO `pages` VALUES ('1000', '1', '26', 'search', '1025', '2011-08-31 19:17:38', '41', '2010-09-06 05:05:28', '2', '3');
INSERT INTO `pages` VALUES ('1001', '1', '29', 'about', '3073', '2014-01-17 12:34:27', '41', '2010-10-25 22:39:33', '2', '0');
INSERT INTO `pages` VALUES ('1002', '1001', '29', 'what', '1', '2011-09-06 14:50:53', '41', '2010-10-25 23:21:34', '2', '0');
INSERT INTO `pages` VALUES ('1003', '1', '29', 'templates', '3073', '2014-01-17 12:33:41', '41', '2010-10-26 01:59:44', '2', '1');
INSERT INTO `pages` VALUES ('1004', '1001', '29', 'background', '1', '2011-08-18 14:47:47', '41', '2010-11-29 22:11:36', '2', '1');
INSERT INTO `pages` VALUES ('1005', '1', '34', 'site-map', '3073', '2014-01-17 12:34:00', '41', '2010-11-30 21:16:49', '2', '2');
INSERT INTO `pages` VALUES ('1006', '2', '2', 'repeaters', '1036', '2013-12-20 14:08:26', '41', '2013-12-20 14:08:26', '41', '6');
INSERT INTO `pages` VALUES ('1007', '1006', '2', 'for-field-99', '17', '2013-12-20 14:09:18', '41', '2013-12-20 14:09:18', '41', '0');
INSERT INTO `pages` VALUES ('1008', '1007', '2', 'for-page-1', '17', '2013-12-20 14:11:51', '41', '2013-12-20 14:11:51', '41', '0');
INSERT INTO `pages` VALUES ('1009', '1008', '43', '1387548744-1907-1', '1', '2014-01-20 09:50:32', '41', '2013-12-20 14:12:24', '41', '0');
INSERT INTO `pages` VALUES ('1010', '1008', '43', '1387549115-2995-1', '1', '2014-01-20 09:58:39', '41', '2013-12-20 14:18:35', '41', '1');
INSERT INTO `pages` VALUES ('1011', '1008', '43', '1387549115-3112-2', '1', '2014-01-20 09:58:39', '41', '2013-12-20 14:18:35', '41', '2');
INSERT INTO `pages` VALUES ('1012', '1008', '43', '1387549274-2607-1', '1', '2014-01-20 10:04:18', '41', '2013-12-20 14:21:14', '41', '3');
INSERT INTO `pages` VALUES ('1013', '1008', '43', '1387549615-9114-1', '1', '2014-01-20 10:07:43', '41', '2013-12-20 14:26:55', '41', '4');
INSERT INTO `pages` VALUES ('1014', '1008', '43', '1387549615-9218-2', '1', '2014-01-20 10:14:40', '41', '2013-12-20 14:26:55', '41', '5');
INSERT INTO `pages` VALUES ('1015', '1', '29', 'the-series', '1', '2014-01-20 11:35:09', '41', '2014-01-17 10:41:36', '41', '7');
INSERT INTO `pages` VALUES ('1016', '1', '44', 'days-to-come', '1', '2014-01-20 11:37:03', '41', '2014-01-17 12:12:12', '41', '8');
INSERT INTO `pages` VALUES ('1017', '1', '45', 'guests', '1', '2014-01-17 14:06:46', '41', '2014-01-17 12:46:26', '41', '9');
INSERT INTO `pages` VALUES ('1018', '1007', '2', 'for-page-1017', '17', '2014-01-17 12:46:26', '41', '2014-01-17 12:46:26', '41', '1');
INSERT INTO `pages` VALUES ('1019', '1018', '43', '1389962787-8729-1', '1', '2014-01-17 12:48:45', '41', '2014-01-17 12:46:27', '41', '0');
INSERT INTO `pages` VALUES ('1020', '1018', '43', '1389962787-9161-2', '1', '2014-01-17 12:48:45', '41', '2014-01-17 12:46:27', '41', '1');
INSERT INTO `pages` VALUES ('1021', '1018', '43', '1389962787-9242-3', '1', '2014-01-17 14:06:46', '41', '2014-01-17 12:46:27', '41', '2');
INSERT INTO `pages` VALUES ('1022', '1018', '43', '1389962926-9458-1', '3073', '2014-01-17 12:48:46', '41', '2014-01-17 12:48:46', '41', '3');
INSERT INTO `pages` VALUES ('1023', '1018', '43', '1389962926-9587-2', '3073', '2014-01-17 12:48:46', '41', '2014-01-17 12:48:46', '41', '4');
INSERT INTO `pages` VALUES ('1024', '1018', '43', '1389962926-9678-3', '3073', '2014-01-17 12:48:46', '41', '2014-01-17 12:48:46', '41', '5');
INSERT INTO `pages` VALUES ('1025', '1', '46', 'recipes', '1', '2014-01-20 12:11:18', '41', '2014-01-17 15:10:41', '41', '10');
INSERT INTO `pages` VALUES ('1026', '1006', '2', 'for-field-105', '17', '2014-01-18 20:20:45', '41', '2014-01-18 20:20:45', '41', '1');
INSERT INTO `pages` VALUES ('1027', '1026', '2', 'for-page-1025', '17', '2014-01-18 20:23:00', '41', '2014-01-18 20:23:00', '41', '0');
INSERT INTO `pages` VALUES ('1028', '1027', '47', '1390076580-829-1', '1', '2014-01-20 12:08:47', '41', '2014-01-18 20:23:00', '41', '0');
INSERT INTO `pages` VALUES ('1029', '1027', '47', '1390076580-866-2', '1', '2014-01-20 12:11:18', '41', '2014-01-18 20:23:00', '41', '1');
INSERT INTO `pages` VALUES ('1030', '1027', '47', '1390076580-892-3', '3073', '2014-01-18 20:23:00', '41', '2014-01-18 20:23:00', '41', '2');
INSERT INTO `pages` VALUES ('1031', '1027', '47', '1390076723-096-1', '3073', '2014-01-18 20:25:23', '41', '2014-01-18 20:25:23', '41', '3');
INSERT INTO `pages` VALUES ('1032', '1008', '43', '1390212258-7606-1', '1', '2014-01-20 10:19:53', '41', '2014-01-20 10:04:18', '41', '6');
INSERT INTO `pages` VALUES ('1033', '1008', '43', '1390212463-7726-1', '1', '2014-01-20 10:18:40', '41', '2014-01-20 10:07:43', '41', '7');
INSERT INTO `pages` VALUES ('1034', '1008', '43', '1390212881-2936-1', '3073', '2014-01-20 10:14:41', '41', '2014-01-20 10:14:41', '41', '8');
INSERT INTO `pages` VALUES ('1035', '1008', '43', '1390213053-1776-1', '3073', '2014-01-20 10:17:33', '41', '2014-01-20 10:17:33', '41', '9');
INSERT INTO `pages` VALUES ('1036', '1008', '43', '1390213121-2856-1', '3073', '2014-01-20 10:18:41', '41', '2014-01-20 10:18:41', '41', '10');
INSERT INTO `pages` VALUES ('1037', '1027', '47', '1390219879-4006-1', '3073', '2014-01-20 12:11:19', '41', '2014-01-20 12:11:19', '41', '4');

-- ----------------------------
-- Table structure for pages_access
-- ----------------------------
DROP TABLE IF EXISTS `pages_access`;
CREATE TABLE `pages_access` (
  `pages_id` int(11) NOT NULL,
  `templates_id` int(11) NOT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`pages_id`),
  KEY `templates_id` (`templates_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pages_access
-- ----------------------------
INSERT INTO `pages_access` VALUES ('37', '2', '2011-09-06 12:10:09');
INSERT INTO `pages_access` VALUES ('38', '2', '2011-09-06 12:10:09');
INSERT INTO `pages_access` VALUES ('32', '2', '2011-09-06 12:10:09');
INSERT INTO `pages_access` VALUES ('34', '2', '2011-09-06 12:10:09');
INSERT INTO `pages_access` VALUES ('35', '2', '2011-09-06 12:10:09');
INSERT INTO `pages_access` VALUES ('36', '2', '2011-09-06 12:10:09');
INSERT INTO `pages_access` VALUES ('50', '2', '2011-09-06 12:10:09');
INSERT INTO `pages_access` VALUES ('51', '2', '2011-09-06 12:10:09');
INSERT INTO `pages_access` VALUES ('52', '2', '2011-09-06 12:10:09');
INSERT INTO `pages_access` VALUES ('53', '2', '2011-09-06 12:10:09');
INSERT INTO `pages_access` VALUES ('54', '2', '2011-09-06 12:10:09');
INSERT INTO `pages_access` VALUES ('1009', '2', '2013-12-20 14:12:24');
INSERT INTO `pages_access` VALUES ('1010', '2', '2013-12-20 14:18:35');
INSERT INTO `pages_access` VALUES ('1011', '2', '2013-12-20 14:18:35');
INSERT INTO `pages_access` VALUES ('1012', '2', '2013-12-20 14:21:14');
INSERT INTO `pages_access` VALUES ('1013', '2', '2013-12-20 14:26:55');
INSERT INTO `pages_access` VALUES ('1014', '2', '2013-12-20 14:26:55');
INSERT INTO `pages_access` VALUES ('1015', '1', '2014-01-17 10:41:36');
INSERT INTO `pages_access` VALUES ('1016', '1', '2014-01-17 12:12:12');
INSERT INTO `pages_access` VALUES ('1017', '1', '2014-01-17 12:46:26');
INSERT INTO `pages_access` VALUES ('1019', '2', '2014-01-17 12:46:27');
INSERT INTO `pages_access` VALUES ('1020', '2', '2014-01-17 12:46:27');
INSERT INTO `pages_access` VALUES ('1021', '2', '2014-01-17 12:46:27');
INSERT INTO `pages_access` VALUES ('1022', '2', '2014-01-17 12:48:46');
INSERT INTO `pages_access` VALUES ('1023', '2', '2014-01-17 12:48:46');
INSERT INTO `pages_access` VALUES ('1024', '2', '2014-01-17 12:48:46');
INSERT INTO `pages_access` VALUES ('1025', '1', '2014-01-17 15:10:41');
INSERT INTO `pages_access` VALUES ('1028', '2', '2014-01-18 20:23:00');
INSERT INTO `pages_access` VALUES ('1029', '2', '2014-01-18 20:23:00');
INSERT INTO `pages_access` VALUES ('1030', '2', '2014-01-18 20:23:00');
INSERT INTO `pages_access` VALUES ('1031', '2', '2014-01-18 20:25:23');
INSERT INTO `pages_access` VALUES ('1032', '2', '2014-01-20 10:04:18');
INSERT INTO `pages_access` VALUES ('1033', '2', '2014-01-20 10:07:43');
INSERT INTO `pages_access` VALUES ('1034', '2', '2014-01-20 10:14:41');
INSERT INTO `pages_access` VALUES ('1035', '2', '2014-01-20 10:17:33');
INSERT INTO `pages_access` VALUES ('1036', '2', '2014-01-20 10:18:41');
INSERT INTO `pages_access` VALUES ('1037', '2', '2014-01-20 12:11:19');

-- ----------------------------
-- Table structure for pages_parents
-- ----------------------------
DROP TABLE IF EXISTS `pages_parents`;
CREATE TABLE `pages_parents` (
  `pages_id` int(10) unsigned NOT NULL,
  `parents_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`parents_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pages_parents
-- ----------------------------
INSERT INTO `pages_parents` VALUES ('2', '1');
INSERT INTO `pages_parents` VALUES ('3', '1');
INSERT INTO `pages_parents` VALUES ('3', '2');
INSERT INTO `pages_parents` VALUES ('7', '1');
INSERT INTO `pages_parents` VALUES ('22', '1');
INSERT INTO `pages_parents` VALUES ('22', '2');
INSERT INTO `pages_parents` VALUES ('28', '1');
INSERT INTO `pages_parents` VALUES ('28', '2');
INSERT INTO `pages_parents` VALUES ('29', '1');
INSERT INTO `pages_parents` VALUES ('29', '2');
INSERT INTO `pages_parents` VALUES ('29', '28');
INSERT INTO `pages_parents` VALUES ('30', '1');
INSERT INTO `pages_parents` VALUES ('30', '2');
INSERT INTO `pages_parents` VALUES ('30', '28');
INSERT INTO `pages_parents` VALUES ('31', '1');
INSERT INTO `pages_parents` VALUES ('31', '2');
INSERT INTO `pages_parents` VALUES ('31', '28');
INSERT INTO `pages_parents` VALUES ('1001', '1');
INSERT INTO `pages_parents` VALUES ('1002', '1');
INSERT INTO `pages_parents` VALUES ('1002', '1001');
INSERT INTO `pages_parents` VALUES ('1003', '1');
INSERT INTO `pages_parents` VALUES ('1004', '1');
INSERT INTO `pages_parents` VALUES ('1004', '1001');
INSERT INTO `pages_parents` VALUES ('1005', '1');
INSERT INTO `pages_parents` VALUES ('1006', '1');
INSERT INTO `pages_parents` VALUES ('1006', '2');
INSERT INTO `pages_parents` VALUES ('1007', '1');
INSERT INTO `pages_parents` VALUES ('1007', '2');
INSERT INTO `pages_parents` VALUES ('1007', '1006');
INSERT INTO `pages_parents` VALUES ('1008', '1');
INSERT INTO `pages_parents` VALUES ('1008', '2');
INSERT INTO `pages_parents` VALUES ('1008', '1006');
INSERT INTO `pages_parents` VALUES ('1008', '1007');
INSERT INTO `pages_parents` VALUES ('1018', '1');
INSERT INTO `pages_parents` VALUES ('1018', '2');
INSERT INTO `pages_parents` VALUES ('1018', '1006');
INSERT INTO `pages_parents` VALUES ('1018', '1007');
INSERT INTO `pages_parents` VALUES ('1026', '1');
INSERT INTO `pages_parents` VALUES ('1026', '2');
INSERT INTO `pages_parents` VALUES ('1026', '1006');
INSERT INTO `pages_parents` VALUES ('1027', '1');
INSERT INTO `pages_parents` VALUES ('1027', '2');
INSERT INTO `pages_parents` VALUES ('1027', '1006');
INSERT INTO `pages_parents` VALUES ('1027', '1026');

-- ----------------------------
-- Table structure for pages_sortfields
-- ----------------------------
DROP TABLE IF EXISTS `pages_sortfields`;
CREATE TABLE `pages_sortfields` (
  `pages_id` int(10) unsigned NOT NULL DEFAULT '0',
  `sortfield` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`pages_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pages_sortfields
-- ----------------------------

-- ----------------------------
-- Table structure for session_login_throttle
-- ----------------------------
DROP TABLE IF EXISTS `session_login_throttle`;
CREATE TABLE `session_login_throttle` (
  `name` varchar(128) NOT NULL,
  `attempts` int(10) unsigned NOT NULL DEFAULT '0',
  `last_attempt` int(10) unsigned NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of session_login_throttle
-- ----------------------------

-- ----------------------------
-- Table structure for templates
-- ----------------------------
DROP TABLE IF EXISTS `templates`;
CREATE TABLE `templates` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET ascii NOT NULL,
  `fieldgroups_id` int(10) unsigned NOT NULL DEFAULT '0',
  `flags` int(11) NOT NULL DEFAULT '0',
  `cache_time` mediumint(9) NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `fieldgroups_id` (`fieldgroups_id`)
) ENGINE=MyISAM AUTO_INCREMENT=48 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of templates
-- ----------------------------
INSERT INTO `templates` VALUES ('2', 'admin', '2', '8', '0', '{\"useRoles\":1,\"parentTemplates\":[2],\"allowPageNum\":1,\"redirectLogin\":23,\"slashUrls\":1,\"noGlobal\":1}');
INSERT INTO `templates` VALUES ('3', 'user', '3', '8', '0', '{\"useRoles\":1,\"noChildren\":1,\"parentTemplates\":[2],\"slashUrls\":1,\"pageClass\":\"User\",\"noGlobal\":1,\"noMove\":1,\"noTrash\":1,\"noSettings\":1,\"noChangeTemplate\":1,\"nameContentTab\":1}');
INSERT INTO `templates` VALUES ('4', 'role', '4', '8', '0', '{\"noChildren\":1,\"parentTemplates\":[2],\"slashUrls\":1,\"pageClass\":\"Role\",\"noGlobal\":1,\"noMove\":1,\"noTrash\":1,\"noSettings\":1,\"noChangeTemplate\":1,\"nameContentTab\":1}');
INSERT INTO `templates` VALUES ('5', 'permission', '5', '8', '0', '{\"noChildren\":1,\"parentTemplates\":[2],\"slashUrls\":1,\"guestSearchable\":1,\"pageClass\":\"Permission\",\"noGlobal\":1,\"noMove\":1,\"noTrash\":1,\"noSettings\":1,\"noChangeTemplate\":1,\"nameContentTab\":1}');
INSERT INTO `templates` VALUES ('1', 'home', '1', '0', '0', '{\"useRoles\":1,\"noParents\":1,\"slashUrls\":1,\"roles\":[37]}');
INSERT INTO `templates` VALUES ('29', 'basic-page', '83', '0', '0', '{\"slashUrls\":1}');
INSERT INTO `templates` VALUES ('26', 'search', '80', '0', '0', '{\"noChildren\":1,\"noParents\":1,\"allowPageNum\":1,\"slashUrls\":1}');
INSERT INTO `templates` VALUES ('34', 'sitemap', '88', '0', '0', '{\"noChildren\":1,\"noParents\":1,\"redirectLogin\":23,\"slashUrls\":1}');
INSERT INTO `templates` VALUES ('43', 'repeater_Tabbed_text_area', '97', '8', '0', '{\"noChildren\":1,\"noParents\":1,\"slashUrls\":1,\"noGlobal\":1}');
INSERT INTO `templates` VALUES ('44', 'daystocome', '98', '0', '0', '{\"slashUrls\":1}');
INSERT INTO `templates` VALUES ('45', 'tabbed-page', '99', '0', '0', '{\"slashUrls\":1}');
INSERT INTO `templates` VALUES ('46', 'panel-page', '100', '0', '0', '{\"slashUrls\":1}');
INSERT INTO `templates` VALUES ('47', 'repeater_panel_content_area', '101', '8', '0', '{\"noChildren\":1,\"noParents\":1,\"slashUrls\":1,\"noGlobal\":1}');
