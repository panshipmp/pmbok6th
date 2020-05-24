/*
Navicat MySQL Data Transfer

Github URL            : https://github.com/panshipmp/pmbok6th

Target Server Type    : MYSQL
Target Server Version : 50616
File Encoding         : 65001

Date: 2020-05-20  05:17:25
*/

CREATE DATABASE PMBOK_6th;

USE PMBOK_6th;

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `t_10_areas`
-- ----------------------------
DROP TABLE IF EXISTS `t_10_areas`;
CREATE TABLE `t_10_areas` (
  `areas_id` int(11) NOT NULL AUTO_INCREMENT,
  `areas_name` varchar(64) NOT NULL,
  `areas_info` varchar(1024) NOT NULL,
  `areas_extra_info` varchar(256) NOT NULL,
  `update_timstamp` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`areas_id`),
  UNIQUE KEY `key` (`areas_name`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_10_areas
-- ----------------------------
INSERT INTO `t_10_areas` VALUES ('1', '整合管理', '两个字概括“协调”，协调人脉、协调关系、协调资源、协调工作、协调一切保证项目按需按时按预算保质保量完成。', '', '0000-00-00 00:00:00');
INSERT INTO `t_10_areas` VALUES ('2', '范围管理', '两个字概括“取舍”，取：做需要做的，舍：放弃不该做的。', '', '0000-00-00 00:00:00');
INSERT INTO `t_10_areas` VALUES ('3', '进度管理', '两个字概括“快慢”，保持节奏是进度管理的关键。\r\n两个字概括“快慢”，保持节奏是进度管理的关键。\r\n', '', '0000-00-00 00:00:00');
INSERT INTO `t_10_areas` VALUES ('4', '成本管理', '两个字概括“俭奢”，平衡成本和预算，不节约不浪费最好。', '', '0000-00-00 00:00:00');
INSERT INTO `t_10_areas` VALUES ('5', '质量管理', '两个字概括“好坏”，范围解决了有无，质量解决了有之后的好坏。', '', '0000-00-00 00:00:00');
INSERT INTO `t_10_areas` VALUES ('6', '资源管理', '两个字概括“仁责”，团队搞好关系和气氛是仁，强调角色、分工是责。', '', '0000-00-00 00:00:00');
INSERT INTO `t_10_areas` VALUES ('7', '沟通管理', '两个字概括“听说”，沟通的关键是倾听，然后才是说教。', '', '0000-00-00 00:00:00');
INSERT INTO `t_10_areas` VALUES ('8', '风险管理', '两个字概括“利弊”，整个项目过程要权衡利弊，管控风险。', '', '0000-00-00 00:00:00');
INSERT INTO `t_10_areas` VALUES ('9', '采购管理	', '两个字概括“买卖”，项目经理要有生意头脑，做好采购这笔买卖。', '', '0000-00-00 00:00:00');
INSERT INTO `t_10_areas` VALUES ('10', '相关方管理	', '两个字概括“神佛”，求神拜佛，不要脸的本事叫“软技能”。', '', '0000-00-00 00:00:00');

-- ----------------------------
-- Table structure for `t_49_proceeses`
-- ----------------------------
DROP TABLE IF EXISTS `t_49_proceeses`;
CREATE TABLE `t_49_proceeses` (
  `process_id` int(11) NOT NULL AUTO_INCREMENT,
  `big_process_id` int(11) NOT NULL,
  `areas_id` int(11) NOT NULL,
  `process_name` varchar(32) NOT NULL,
  `process_info` varchar(128) NOT NULL,
  `pmbok_define` varchar(128) NOT NULL,
  PRIMARY KEY (`process_id`),
  UNIQUE KEY `key` (`process_name`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_49_proceeses
-- ----------------------------
INSERT INTO `t_49_proceeses` VALUES ('1', '1', '1', '制定项目章程', '批准项目、授权项目经理资源。', '编写一份正式批准项目并授权项目经理在项目活动中使用组织资源的文件的过程。');
INSERT INTO `t_49_proceeses` VALUES ('2', '1', '10', '识别相关方', '识别相关方/记录权力利益及影响。', '定期识别项目相关方，分析和记录他们的利益、参与度、相互依赖性、影响力和对项目成功的潜在影响的过程。');
INSERT INTO `t_49_proceeses` VALUES ('3', '2', '1', '制定项目管理计划', '将所有子计划整合为综合的计划。', '定义、准备和协调项目计划的所有组成部分，并把它们整合为一份综合项目管理计划的过程。');
INSERT INTO `t_49_proceeses` VALUES ('4', '2', '2', '规划范围管理', '指导如何管理项目/产品范围。', '为记录如何定义、确认和控制项目范围及产品范围，而创建范围管理计划的过程。');
INSERT INTO `t_49_proceeses` VALUES ('5', '2', '2', '收集需求', '记录并管理相关方的需要和需求。', '为收集需求是为实现目标而确定、记录并管理相关方的需要和需求的过程。');
INSERT INTO `t_49_proceeses` VALUES ('6', '2', '2', '定义范围', '制定详细描述及验收标准。', '定义范围是制定项目和产品详细描述的过程。');
INSERT INTO `t_49_proceeses` VALUES ('7', '2', '2', '创建WBS', '将可交付成果分解为较小的组件。', '把项目可交付成果和项目工作分解成较小、更易于管理的组件的过程。');
INSERT INTO `t_49_proceeses` VALUES ('8', '2', '3', '规划进度管理', '为管理和控制进度而制定的方法。', '为规划、编制、管理、执行和控制项目进度而制定政策、程序和文档的过程。');
INSERT INTO `t_49_proceeses` VALUES ('9', '2', '3', '定义活动', '把项目成果分解为具体行动。', '识别和记录为完成项目可交付成果而须采取的具体行动的过程。');
INSERT INTO `t_49_proceeses` VALUES ('10', '2', '3', '排列活动顺序', '记录项目活动之间顺序关系。', '识别和记录项目活动之间的关系的过程。');
INSERT INTO `t_49_proceeses` VALUES ('11', '2', '3', '估算活动持续时间', '估算完成单项活动所需工时。', '根据资源估算的结果，估算完成单项活动所需工作时段数的过程。');
INSERT INTO `t_49_proceeses` VALUES ('12', '2', '3', '制定进度计划', '分析活动的关系，创建进度模型。', '分析活动顺序、持续时间、资源需求和进度制约因素，创建进度模型，从而落实项目执行和监控的过程。');
INSERT INTO `t_49_proceeses` VALUES ('13', '2', '4', '规划成本管理', '确定估算/管理/控制成本的方法。', '确定如何估算、预算、管理、监督和控制项目成本的过程。');
INSERT INTO `t_49_proceeses` VALUES ('14', '2', '4', '估算成本', '估算每一项工作所需要的成本。', '对完成项目工作所需资源成本进行近似估算的过程。');
INSERT INTO `t_49_proceeses` VALUES ('15', '2', '4', '制定预算', '汇总所有项目活动成本形成的预算。', '汇总所有单个活动或工作包的估算成本，建立一个经批准的成本基准的过程。');
INSERT INTO `t_49_proceeses` VALUES ('16', '2', '5', '规划质量管理', '识别可交付成果质量要求和标准。', '识别项目及其可交付成果的质量要求和（或）标准，并书面描述项目将如何证明符合质量要求和（或）标准的过程。');
INSERT INTO `t_49_proceeses` VALUES ('17', '2', '6', '规划资源管理', '定义如何估算/获取及管理资源。', '定义如何估算、获取、管理和利用团队以及实物资源的过程。');
INSERT INTO `t_49_proceeses` VALUES ('18', '2', '6', '估算活动资源', '估算执行项目的资源需求。', '估算执行项目所需的团队资源，以及材料、设备和用品的类型和数量的过程。');
INSERT INTO `t_49_proceeses` VALUES ('19', '2', '7', '规划沟通管理', '制定与相关方之间沟通的方法。', '基于每个相关方或相关方群体的信息需求、可用的组织资产，以及具体项目的需求，为项目沟通活动制定恰当的方法和计划的过程。');
INSERT INTO `t_49_proceeses` VALUES ('20', '2', '8', '规划风险管理', '定义如何实施风险管理活动。', '定义如何实施项目风险管理活动的过程。');
INSERT INTO `t_49_proceeses` VALUES ('21', '2', '8', '识别风险', '识别并记录项目风险及来源。', '识别单个项目风险以及整体项目风险的来源，并记录风险特征的过程。');
INSERT INTO `t_49_proceeses` VALUES ('22', '2', '8', '实施定性风险分析', '分析风险概率和影响，并排序。', '通过评估单个项目风险发生的概率和影响以及其他特征，对风险进行优先级排序，从而为后续分析或行动提供基础的过程。');
INSERT INTO `t_49_proceeses` VALUES ('23', '2', '8', '实施定量风险分析', '分析风险对项目整体目标的影响。', '已识别的单个项目风险和不确定性的其他来源对整体项目目标的影响进行定量分析的过程。');
INSERT INTO `t_49_proceeses` VALUES ('24', '2', '8', '规划风险应对', '制定风险应对策略及应对行动。', '为处理整体项目风险敞口，以及应对单个项目风险，而制定可选方案、选择应对策略并商定应对行动的过程。');
INSERT INTO `t_49_proceeses` VALUES ('25', '2', '9', '规划采购管理', '记录采购决策/方法并识别卖方。', '记录项目采购决策、明确采购方法，及识别潜在卖方的过程');
INSERT INTO `t_49_proceeses` VALUES ('26', '2', '10', '规划相关方参与', '制定相关方参与项目的方法。', '根据相关方的需求、期望、利益和对项目的潜在影响，制定项目相关方参与项目的方法的过程。');
INSERT INTO `t_49_proceeses` VALUES ('27', '3', '1', '指导与管理项目工作', '为实现目标而开展的工作。', '为实现项目目标而领导和执行项目管理计划中所确定的工作，并实施已批准变更的过程。');
INSERT INTO `t_49_proceeses` VALUES ('28', '3', '1', '管理项目知识', '利用项目知识实现目标，积累知识。', '使用现有知识并生成新知识，以实现项目目标，并且帮助组织学习的过程。');
INSERT INTO `t_49_proceeses` VALUES ('29', '3', '5', '管理质量', '改进过程并开展质量管理活动。', '把组织的质量政策用于项目，并将质量管理计划转化为可执行的质量活动的过程。');
INSERT INTO `t_49_proceeses` VALUES ('30', '3', '6', '获取资源', '组建团队并获取实物资源。', '获取项目所需的团队成员、设施、设备、材料、用品和其他资源的过程。');
INSERT INTO `t_49_proceeses` VALUES ('31', '3', '6', '建设团队', '改善团队氛围，提高绩效。', '提高工作能力，促进团队成员互动，改善团队整体氛围，以提高项目绩效的过程。');
INSERT INTO `t_49_proceeses` VALUES ('32', '3', '6', '管理团队', '跟踪成员表现，解决冲突，优化绩效。', '跟踪团队成员工作表现，提供反馈，解决问题并管理团队变更，以优化项目绩效的过程。');
INSERT INTO `t_49_proceeses` VALUES ('33', '3', '7', '管理沟通', '正确及时传递/管理项目信息。', '确保项目信息及时且恰当地收集、生成、发布、存储、检索、管理、监督和最终处置的过程。');
INSERT INTO `t_49_proceeses` VALUES ('34', '3', '8', '实施风险应对', '执行商定的风险应对计划。', '执行商定的风险应对计划的过程。');
INSERT INTO `t_49_proceeses` VALUES ('35', '3', '9', '实施采购', '获取卖方应答/选择并授予合同。', '获取卖方应答、选择卖方并授予合同的过程。');
INSERT INTO `t_49_proceeses` VALUES ('36', '3', '10', '管理相关方参与', '与相关方沟通协作，满足其需求与期望。', '根据相关方的需求、期望、利益和对项目的潜在影响，制定项目相关方参与项目的方法的过程。');
INSERT INTO `t_49_proceeses` VALUES ('37', '4', '1', '监控项目工作', '跟踪、审查和报告项目进展。', '跟踪、审查和报告整体项目进展，以实现项目管理计划中确定的绩效目标的过程。');
INSERT INTO `t_49_proceeses` VALUES ('38', '4', '1', '实施整体变更控制', '审查变更请求/分析并处理变更。', '审查所有变更请求，批准变更，管理对可交付成果、组织过程资产、项目文件和项目管理计划的变更，并对变更处理结果进行沟通的过程。');
INSERT INTO `t_49_proceeses` VALUES ('39', '4', '2', '确认范围', '正式验收已完成的可交付成果。', '正式验收已完成的项目可交付成果的过程。');
INSERT INTO `t_49_proceeses` VALUES ('40', '4', '2', '控制范围', '监督范围状态，不能多不能少。', '控制范围是监督项目和产品的范围状态，管理范围基准变更的过程。');
INSERT INTO `t_49_proceeses` VALUES ('41', '4', '3', '控制进度', '监督进度状态，维护基准变更。', '监督项目状态，以更新项目进度和管理进度基准变更的过程');
INSERT INTO `t_49_proceeses` VALUES ('42', '4', '4', '控制成本', '监督成本使用情况，维护成本基准。', '监督项目状态，以更新项目成本和管理成本基准变更的过程。');
INSERT INTO `t_49_proceeses` VALUES ('43', '4', '5', '控制质量', '监控质量好坏，确保按要求完成。', '为了评估绩效，确保项目输出完整、正确且满足客户期望，而监督和记录质量管理活动执行结果的过程。');
INSERT INTO `t_49_proceeses` VALUES ('44', '4', '6', '控制资源', '监督资源使用情况，确保资源合理分配。', '确保按计划为项目分配实物资源，以及根据资源使用计划监督资源实际使用情况，并采取必要纠正措施的过程。');
INSERT INTO `t_49_proceeses` VALUES ('45', '4', '7', '监督沟通', '监督沟通效果，确保满足相关方要求。', '确保满足项目及其相关方的信息需求的过程。');
INSERT INTO `t_49_proceeses` VALUES ('46', '4', '8', '监督风险', '监督风险，识别新风险，评估风险管理及风险应对效果。', '在整个项目期间，监督商定的风险应对计划的实施、跟踪已识别风险、识别和分析新风险，以及评估风险管理有效性的过程。');
INSERT INTO `t_49_proceeses` VALUES ('47', '4', '9', '控制采购', '管理采购关系/监督合同绩效/关闭合同。', '管理采购关系，监督合同绩效，实施必要的变更和纠偏，以及关闭合同的过程。');
INSERT INTO `t_49_proceeses` VALUES ('48', '4', '10', '监督相关方参与', '监督相关方关系，调整计划确保相关方合理参与项目。', '监督项目相关方关系，并通过修订参与策略和计划来引导相关方合理参与项目的过程。');
INSERT INTO `t_49_proceeses` VALUES ('49', '5', '1', '结束项目或阶段', '移交成果/总结经验/释放团队。', '终结项目、阶段或合同的所有活动的过程。');

-- ----------------------------
-- Table structure for `t_5_big_processes`
-- ----------------------------
DROP TABLE IF EXISTS `t_5_big_processes`;
CREATE TABLE `t_5_big_processes` (
  `big_process_id` int(11) NOT NULL AUTO_INCREMENT,
  `big_process_name` varchar(64) NOT NULL,
  `process_info` varchar(1024) NOT NULL,
  PRIMARY KEY (`big_process_id`),
  UNIQUE KEY `key` (`big_process_name`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_5_big_processes
-- ----------------------------
INSERT INTO `t_5_big_processes` VALUES ('1', '启动过程组', '定义一个新项目或现有项目的一个新阶段，授权开始该项目或阶段的过程。');
INSERT INTO `t_5_big_processes` VALUES ('2', '规划过程组', '明确项目范围，优化目标，为实现目标制定行动方案的过程。');
INSERT INTO `t_5_big_processes` VALUES ('3', '执行过程组', '完成项目管理计划中确定的工作，以满足项目要求的过程。');
INSERT INTO `t_5_big_processes` VALUES ('4', '监控过程组', '跟踪、审查和调整项目进展与绩效，识别必要计划变更并启动相应变更的过程。');
INSERT INTO `t_5_big_processes` VALUES ('5', '收尾过程组', '正式完成或结束项目、阶段或合同所执行的过程。');

-- ----------------------------
-- Table structure for `t_abbreviation`
-- ----------------------------
DROP TABLE IF EXISTS `t_abbreviation`;
CREATE TABLE `t_abbreviation` (
  `abbreviation_id` int(11) NOT NULL AUTO_INCREMENT,
  `abbreviation_name` varchar(16) NOT NULL,
  `abbreviation_info` varchar(64) NOT NULL,
  `abbreviation_extra_info` varchar(256) NOT NULL,
  PRIMARY KEY (`abbreviation_id`),
  UNIQUE KEY `key` (`abbreviation_name`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_abbreviation
-- ----------------------------
INSERT INTO `t_abbreviation` VALUES ('1', 'AC', '实际成本', '');
INSERT INTO `t_abbreviation` VALUES ('2', 'BAC', '完工预算', '');
INSERT INTO `t_abbreviation` VALUES ('3', 'CCB', '变更控制委员会', '');
INSERT INTO `t_abbreviation` VALUES ('4', 'COQ', '质量成本', '');
INSERT INTO `t_abbreviation` VALUES ('5', 'CPAF', '成本加奖励费用', '');
INSERT INTO `t_abbreviation` VALUES ('6', 'CPFF', '成本加固定费用', '');
INSERT INTO `t_abbreviation` VALUES ('7', 'CPI', '成本绩效指数', '');
INSERT INTO `t_abbreviation` VALUES ('8', 'CPIF', '成本加激励费用', '');
INSERT INTO `t_abbreviation` VALUES ('9', 'CPM', '关键路径法', '');
INSERT INTO `t_abbreviation` VALUES ('10', 'CV', '成本偏差', '');
INSERT INTO `t_abbreviation` VALUES ('11', 'EAC', '完工估算', '');
INSERT INTO `t_abbreviation` VALUES ('12', 'EF', '最早完成日期', '');
INSERT INTO `t_abbreviation` VALUES ('13', 'ES', '最早开始日期', '');
INSERT INTO `t_abbreviation` VALUES ('14', 'ETC', '完工尚需估算', '');
INSERT INTO `t_abbreviation` VALUES ('15', 'EV', '挣值', '');
INSERT INTO `t_abbreviation` VALUES ('16', 'EVM', '挣值管理', '');
INSERT INTO `t_abbreviation` VALUES ('17', 'FF', '完成到完成', '');
INSERT INTO `t_abbreviation` VALUES ('18', 'FFP', '固定总价', '');
INSERT INTO `t_abbreviation` VALUES ('19', 'FPEPA', '总价加经济价格调整', '');
INSERT INTO `t_abbreviation` VALUES ('20', 'FPIF', '总价加激励费用', '');
INSERT INTO `t_abbreviation` VALUES ('21', 'FS', '完成到开始', '');
INSERT INTO `t_abbreviation` VALUES ('22', 'IFB', '投标邀请书', '');
INSERT INTO `t_abbreviation` VALUES ('23', 'LF', '最晚完成日期', '');
INSERT INTO `t_abbreviation` VALUES ('24', 'LOE', '支持型活动', '');
INSERT INTO `t_abbreviation` VALUES ('25', 'LS', '最晚开始日期', '');
INSERT INTO `t_abbreviation` VALUES ('26', 'OBS', '组织分解结构', '');
INSERT INTO `t_abbreviation` VALUES ('27', 'PDM', '紧前关系绘图法', '');
INSERT INTO `t_abbreviation` VALUES ('28', 'PMBOK', '项目管理知识体系', '');
INSERT INTO `t_abbreviation` VALUES ('29', 'PV', '计划价值', '');
INSERT INTO `t_abbreviation` VALUES ('30', 'QFD', '质量功能展开', '');
INSERT INTO `t_abbreviation` VALUES ('31', 'RACI', '执行、负责、咨询和知情', '');
INSERT INTO `t_abbreviation` VALUES ('32', 'RAM', '责任分配矩阵', '');
INSERT INTO `t_abbreviation` VALUES ('33', 'RBS', '风险分解结构', '');
INSERT INTO `t_abbreviation` VALUES ('34', 'RFI', '信息邀请书', '');
INSERT INTO `t_abbreviation` VALUES ('35', 'RFP', '建议邀请书', '');
INSERT INTO `t_abbreviation` VALUES ('36', 'RFQ', '报价邀请书', '');
INSERT INTO `t_abbreviation` VALUES ('37', 'SF', '开始到完成', '');
INSERT INTO `t_abbreviation` VALUES ('38', 'SOW', '工作说明书', '');
INSERT INTO `t_abbreviation` VALUES ('39', 'SPI', '进度绩效指数', '');
INSERT INTO `t_abbreviation` VALUES ('40', 'SS', '开始到开始', '');
INSERT INTO `t_abbreviation` VALUES ('41', 'SV', '进度偏差', '');
INSERT INTO `t_abbreviation` VALUES ('42', 'SWOT', '优势、劣势、机会与威胁', '');
INSERT INTO `t_abbreviation` VALUES ('43', 'T&M', '工料合同', '');
INSERT INTO `t_abbreviation` VALUES ('44', 'WBS', '工作分解结构', '');
INSERT INTO `t_abbreviation` VALUES ('45', 'VAC', '完工偏差', '');

-- ----------------------------
-- Table structure for `t_chapter_notes`
-- ----------------------------
DROP TABLE IF EXISTS `t_chapter_notes`;
CREATE TABLE `t_chapter_notes` (
  `note_id` int(11) NOT NULL AUTO_INCREMENT,
  `part_id` varchar(3) NOT NULL,
  `chapter_id` varchar(8) NOT NULL,
  `chapter_name` varchar(64) NOT NULL,
  `cur_chapter_id` varchar(16) NOT NULL,
  `cur_chapter_name` varchar(64) NOT NULL,
  `pmbok_page_num` int(11) NOT NULL,
  `info_title` varchar(32) NOT NULL,
  `info_content` varchar(256) NOT NULL,
  `info_extra_content` varchar(256) NOT NULL,
  `update_timstamp` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`note_id`),
  UNIQUE KEY `key1` (`info_title`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_chapter_notes
-- ----------------------------
INSERT INTO `t_chapter_notes` VALUES ('1', '1', '1', '引论', '1.1', '指南概述和目的', '1', '项目管理知识体系 (PMBOK)', '1. 项目管理协会 (PMI)将项目管理知识体系 (PMBOK) 定义为描述项目管理专业范围内知识的术语。2. 项目管理知识体系包括已被验证并广泛应用的传统做法，以及本专业新近涌现的创新做法。', 'PMBOK 其实是项目管理体中那部分包含两点的部分：1. 普遍认可 2. 良好实践。', '2018-09-24 22:30:18');
INSERT INTO `t_chapter_notes` VALUES ('2', '1', '1', '引论', '1.1', '指南概述和目的', '2', 'PMBOK不是方法论', 'PMBOK是组织制定实践项目管理所需方法论、政策、程序、规则、工具、技术和生命周期阶段的基础。', '方法论只是术而已，PMBOK不仅有术，还有道的。', '2018-09-24 22:39:34');
INSERT INTO `t_chapter_notes` VALUES ('3', '1', '1', '引论', '1.1.1', '项目管理标准', '3', '项目管理四大价值观', '项目管理业界定义的最重要的价值观是：责任、尊重、公正和诚实', '《道德与专业行为规范》包括期望标准和强制标准。', '2018-09-24 22:32:50');
INSERT INTO `t_chapter_notes` VALUES ('4', '1', '1', '引论', '1.2.1', '项目', '4', '项目', '项目是为创造独特的产品、服务或成果而进行的临时性工作。', '项目的 5 大特点：1.为创造独特的产品、服务或成果；2. 临时性；3. 项目会驱动组织进行变更；4. 项目会创造商业价值；5. 项目是为了应对影响该组织的所有因素。', '2018-09-24 22:38:46');
INSERT INTO `t_chapter_notes` VALUES ('5', '1', '1', '引论', '1.2.3', '项目、项目集、项目组合以及运营管理之间的关系', '11', '项目集', '项目集是一组相互关联且被协调管理的项目、子项目集和项目集活动，以便获得分别管理所无法获得的利益。', '项目集不包含运营活动。', '2018-09-24 22:44:16');
INSERT INTO `t_chapter_notes` VALUES ('6', '1', '1', '引论', '1.2.3', '项目、项目集、项目组合以及运营管理之间的关系', '11', '项目组合', '项目组合是指为实现战略目标而组合在一起管理的项目、项目集、子项目组合和运营工作。', '', '2018-09-24 22:44:02');
INSERT INTO `t_chapter_notes` VALUES ('7', '1', '1', '引论', '1.2.3', '项目、项目集、项目组合以及运营管理之间的关系', '13', '项目、项目集、项目组合的区别', '从组织的角度来看项目、项目集和项目组合管理：1. 项目集和项目管理的重点在于以“正确”的方式开展项目集和项目；2. 项目组合管理则注重于开展“正确”的项目集和项目。', '1. 项目、项目集侧重于正确的做事情（把事情做好，有了既定战略后，如何实现战略目标。“成果交付”）；2. 项目组合侧重于做正确的事情（做对的事情，注重方向性和战略性问题。“价值决策”）。', '2018-09-24 22:48:49');
INSERT INTO `t_chapter_notes` VALUES ('8', '1', '1', '引论', '1.2.3.4', '项目集管理', '16', '运营管理', '运营管理关注产品的持续生产和（或）服务的持续运作。', '', '2018-09-24 22:53:44');
INSERT INTO `t_chapter_notes` VALUES ('9', '1', '1', '引论', '1.2.3.6', '组织级项目管理 (OPM) 和战略', '17', '组织级项目管理 (OPM)', 'OPM 指为实现战略目标而整合项目组合、项目集和项目管理与组织驱动因素的框架。', 'PMO对项目的影响由强到弱依次是：支持型、控制型、指令型。 除了项目被集中管理外，PMO 所支持和管理的项目不一定彼此关联。', '2018-09-25 22:43:33');
INSERT INTO `t_chapter_notes` VALUES ('10', '1', '1', '引论', '1.2.4.1', '项目和开发生命周期', '19', '项目生命周期', '项目生命周期指项目从启动到完成所经历的一系列阶段。它为项目管理提供了一个基本框架。这些阶段之间的关系可以顺序、迭代或交叠进行。\r\n', '', '2018-09-24 22:59:05');
INSERT INTO `t_chapter_notes` VALUES ('11', '1', '1', '引论', '1.2.4.1', '项目和开发生命周期', '19', '项目生命周期类型及区别', '项目生命周期的五种类型：预测型、迭代型、增量型、适应型或混合型。', '区别：1. 预测性：项目早期就对项目进行完整规划，也就是瀑布模型；2. 迭代型：项目功能每次交付时都是完整的，定期完善功能并交付；3. 增量型：每次交付一部分功能，最后一次时才完成完整的功能；4. 适应型：适用于范围不是很确定，属于敏捷、迭代、增量型的具体一种；5. 混合型：预测和适应型的组合。', '2018-09-24 23:09:09');
INSERT INTO `t_chapter_notes` VALUES ('12', '1', '1', '引论', '1.2.4.2', '项目和开发生命周期', '20', '项目阶段', '项目阶段是一组具有逻辑关系的项目活动的集合，通常以一个或多个可交付成果的完成为结束。', '', '2018-09-24 23:10:38');
INSERT INTO `t_chapter_notes` VALUES ('13', '1', '1', '引论', '1.2.4.5', '项目管理过程组', '23', '5大过程组', '5 大过程组：启动过程组、规划过程组、执行过程组、监控过程组和收尾过程组。', '', '2018-09-24 23:12:57');
INSERT INTO `t_chapter_notes` VALUES ('14', '1', '1', '引论', '1.2.4.6', '项目管理知识领域', '20', '10大知识领域', '10 大知识领域：整合管理、范围管理、进度管理、成本管理、质量管理、资源管理、沟通管理、风险管理、采购管理	、相关方管理。', '', '2018-09-24 23:18:32');
INSERT INTO `t_chapter_notes` VALUES ('15', '1', '1', '引论', '1.2.4.7', '项目管理数据和信息', '27', '工作绩效数据、工作绩效信息和工作绩效报告关系', '1. 执行过程产生：工作绩效数据；2. 工作绩效数据监控和分析产生：工作绩效信息；3. 工作绩效绩效信息汇总上报：工作绩效报告。', '', '2018-09-24 23:22:01');
INSERT INTO `t_chapter_notes` VALUES ('16', '1', '1', '引论', '1.2.6', '项目管理商业文件', '29', '项目管理商业文件', '项目经理需要确保项目管理方法紧扣商业文件的意图。商业文件包括：1.商业论证；2.效益管理计划。', '通常项目发起人制定和维护商业论证文件，项目经理负责提供建议和见解，使项目商业论证、管理计划、章程和效益管理计划的成功标准相一致，并与组织的目的和目标保持一致。', '2018-09-25 22:18:08');
INSERT INTO `t_chapter_notes` VALUES ('17', '1', '1', '引论', '1.2.6.1', '项目商业论证', '30', '项目商业论证', '商业论证指文档化的经济可行性研究报告。商业论证列出了项目启动的目标和理由。它有助于衡量项目是否成功。在项目启动之前通过商业论证，可能会做出继续/终止项目的决策。', '', '2018-09-25 22:21:41');
INSERT INTO `t_chapter_notes` VALUES ('18', '1', '1', '引论', '1.2.6.2', '项目效益管理计划', '33', '项目效益管理计划', '项目效益管理计划描述了项目实现效益的方式和时间，以及应制定的效益衡量机制。项目生命周期早期应确定目标效益，并据此制定效益管理计划。', '', '2018-09-25 22:23:31');
INSERT INTO `t_chapter_notes` VALUES ('19', '1', '1', '引论', '1.2.6.3', '项目章程和项目管理计划', '34', '项目章程', '项目章程是由项目发起人发布的，正式批准项目成立，并授权项目经理动用组织资源开展项目活动的文件。\r\n', '项目章程 2 大作用：1. 批准项目正式成立 2. 授权项目经理开展项目管理工作。', '2018-09-25 22:26:15');
INSERT INTO `t_chapter_notes` VALUES ('20', '1', '1', '引论', '1.2.6.3', '项目章程和项目管理计划', '34', '项目管理计划', '项目管理计划是描述如何执行、监督和控制项目的一份文件。', '', '2018-09-25 22:26:48');
INSERT INTO `t_chapter_notes` VALUES ('21', '1', '2', '项目运行环境', '2.1', '概述', '37', '事业环境因素', '事业环境因素源于项目外部（往往是企业外部）的环境，事业环境因素可能对整个企业、项目组合、项目集或项目产生影响。', '这些条件可能来自于组织的内部和（或）外部。', '2018-09-25 22:41:47');
INSERT INTO `t_chapter_notes` VALUES ('22', '1', '2', '项目运行环境', '2.1', '概述', '37', '组织过程资产', '组织过程资产源于企业内部，可能来自企业自身、项目组合、项目集、其他项目或这些的组合。', '组织过程资产包括来自任何（或所有）项目执行组织的，还包括来自组织以往项目的经验教训和历史信息。', '2018-09-25 22:32:09');
INSERT INTO `t_chapter_notes` VALUES ('23', '1', '2', '项目运行环境', '2.4.4', '组织结构类型', '47', '组织结构类型', '组织结构类型包括：系统型或简单性、职能型（集中型）、多部门（职能可复制，各部门几乎不会集中）、矩阵型（弱、强、均衡）、项目导向（复合、混合）、虚拟、混合型、PMO。\r\n', '', '2018-09-25 22:39:53');
INSERT INTO `t_chapter_notes` VALUES ('24', '1', '2', '项目运行环境', '2.4.4.3', '项目管理办公室 (PMO) ', '48', '项目管理办公室 (PMO) ', '项目管理办公室 (PMO) 是对与项目相关的治理过程进行标准化，并促进资源、方法论、工具和技术共享的一个组织结构。', '', '2018-09-25 22:41:50');
INSERT INTO `t_chapter_notes` VALUES ('25', '1', '3', '项目经理的角色', '3.2', '项目经理的定义', '52', '项目经理', '项目经理是由执行组织委派，领导团队实现项目目标的个人。', '项目经理影响项目所有的相关方。', '2018-09-25 22:45:45');
INSERT INTO `t_chapter_notes` VALUES ('26', '1', '3', '项目经理的角色', '3.4', '项目经理的能力', '56', 'PMI人才三角', '人才三角：1. 技术项目管理；2. 领导力；3. 战略和商务管理。', '', '2018-09-25 22:47:58');
INSERT INTO `t_chapter_notes` VALUES ('27', '1', '3', '项目经理的角色', '3.4.4', '领导力技能', '60', '领导力技能', '领导力技能：人际交往；领导者的品质和技能；权术、权力和办好事情。', '', '2018-09-25 22:53:29');
INSERT INTO `t_chapter_notes` VALUES ('28', '1', '3', '项目经理的角色', '3.4.5', '领导力与管理之比较', '64', '领导力与管理之比较', '“管理”更接近于运用一系列已知的预期行为指示另一个人从一个位置到另一个位置。相反，“领导力”指通过讨论或辩论与他人合作，带领他们从一个位置到另一个位置。', '管理侧重于使用权利做正确的事情，领导力侧重于使用魅力正确的做事情。', '2018-09-26 09:36:56');
INSERT INTO `t_chapter_notes` VALUES ('29', '1', '3', '项目经理的角色', '3.5.4', '整合与复杂性', '68', '项目的复杂性', '项目的复杂性来源于组织的系统行为、人类行为以及组织或环境中的不确定性。', '', '2018-09-26 09:38:44');
INSERT INTO `t_chapter_notes` VALUES ('30', '1', '4', '项目整合管理', '4', '项目整合管理', '69', '项目整合管理', '项目整合管理包括对隶属于项目管理过程组的各种过程和项目管理活动进行识别、定义、组合、统一和协调的各个过程。', '整合兼具的统一、合并、沟通和建立联系的性质贯穿项目的始终。', '2018-09-26 09:43:29');
INSERT INTO `t_chapter_notes` VALUES ('31', '1', '4', '项目整合管理', '4', '项目整合管理的核心概念', '72', '整合管理的负责人', '项目整合管理由项目经理负责。项目整合管理可以有其他各领域专家的参与，但是项目经理的责任不能被授权或转移。项目经理必须对整个项目承担最终责任。', '', '2018-09-26 09:59:19');
INSERT INTO `t_chapter_notes` VALUES ('32', '1', '4', '项目整合管理', '4.1', '制定项目章程', '77', '项目章程的说明', '项目章程在项目执行组织与需求组织之间建立起伙伴关系。项目章程一旦被批准，就标志着项目的正式启动。项目章程可由发起人编制，或者由项目经理与发起机构合作编制。项目由项目以外的机构来启动，如发起人、项目集或项目管理办公室（PMO）、项目组合治理委员会主席或其授权代表。', '', '2018-09-26 10:10:58');
INSERT INTO `t_chapter_notes` VALUES ('33', '1', '4', '项目整合管理', '4.1.1.2', '协议', '78', '协议', '协议用于定义启动项目的初衷。', '协议有多种形式，包括合同、谅解备忘录（MOUs）、服务水平协议（SLA）、协议书、意向书、口头协议、电子邮件或其他书面协议。为外部客户做项目时，通常就以合同的形式出现。', '0000-00-00 00:00:00');

-- ----------------------------
-- Table structure for `t_charts_info`
-- ----------------------------
DROP TABLE IF EXISTS `t_charts_info`;
CREATE TABLE `t_charts_info` (
  `chart_id` int(11) NOT NULL AUTO_INCREMENT,
  `chart_idx` varchar(8) NOT NULL,
  `chart_name` varchar(32) NOT NULL,
  `pmbok_page_num` int(11) NOT NULL,
  `chart_info` varchar(256) NOT NULL,
  `chart_extra_info` varchar(256) NOT NULL,
  `chart_url` varchar(128) NOT NULL,
  `update_timstamp` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`chart_id`),
  UNIQUE KEY `key` (`chart_idx`) USING BTREE,
  UNIQUE KEY `key1` (`chart_name`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_charts_info
-- ----------------------------
INSERT INTO `t_charts_info` VALUES ('1', '表1-1', '促成项目创建的因素示例', '9', '展示了如何把影响项目启动背景的一些具体的因素归入一个或多个基本因素类别中。', '', 'https://i.imgur.com/SqPeY2y.png', '2018-09-23 18:49:27');
INSERT INTO `t_charts_info` VALUES ('2', '表1-2', '项目、项目集、项目组合管理的比较概述', '13', '项目集和项目管理的重点在于以“正确”的方式开展项目集和项目；项目组合管理则注重于开展“正确”的项目集和项目。', '', 'https://i.imgur.com/OnqLDdR.png', '2018-09-23 18:56:58');
INSERT INTO `t_charts_info` VALUES ('3', '表1-3', 'PMBOK® 指南关键组成部分的描述', '18', '简单描述了 PMBOK 第六版关键组成部分。', '', 'https://i.imgur.com/e5c4vMY.png', '2018-09-23 18:58:27');
INSERT INTO `t_charts_info` VALUES ('4', '表1-4', '项目管理过程组与知识领域', '25', '描述了5大过程组、10大知识领域、49个过程的对应关系。', '', 'https://i.imgur.com/8eYzhD3.png', '2018-09-23 18:59:13');
INSERT INTO `t_charts_info` VALUES ('5', '表1-5', '项目商业文件', '29', '在整个项目生命周期中，项目经理需要确保项目管理方法紧扣的商业文件包括的内容，以保证项目满足商业需求。', '', 'https://i.imgur.com/wP9scHJ.png', '2018-09-23 19:01:25');
INSERT INTO `t_charts_info` VALUES ('6', '表2-1', '组织结构对项目的影响', '47', '组织结构的形式或类型是多种多样的。这个表比较了几种组织结构类型及其对项目的影响。', '', 'https://i.imgur.com/fc2c4pR.png', '2018-09-23 19:02:55');
INSERT INTO `t_charts_info` VALUES ('7', '表3-1', '团队管理与团队领导力之比较', '64', '“管理”更接近于运用一系列已知的预期行为指示另一个人从一个位置到另一个位置。相反，“领导力”指通过讨论或辩论与他人合作，带领他们从一个位置到另一个位置。表从几个重\r\n要的层面对管理和领导力进行比较。', '', 'https://i.imgur.com/oHvNRiC.png', '2018-09-23 22:00:24');
INSERT INTO `t_charts_info` VALUES ('8', '表4-1', '项目管理计划和项目文件', '89', '18个项目管理计划和33个项目文件的内容。需要记住的是：项目文件中，没有采购相关的文件，如协议与采购文档。采购一般由组织的采购部门负责。', '', 'https://i.imgur.com/xHQzFON.png', '2018-09-23 19:06:00');
INSERT INTO `t_charts_info` VALUES ('9', '表5-1', '项目章程与项目范围说明书的内容', '155', '项目章程和项目范围说明书的内容存在一定程度的重叠，但它们的详细程度完全不同。项目章程包含高层级的信息，而项目范围说明书则是对范围组成部分的详细描述，这些组成部分需要在项目过程中渐进明细。表显示了这两个文件的一些关键内容。', '', 'https://i.imgur.com/46X7CGS.png', '2018-09-23 19:21:00');
INSERT INTO `t_charts_info` VALUES ('10', '表7-1', '挣值计算汇总表', '267', '挣值分析 (EVA)。挣值分析将实际进度和成本绩效与绩效测量基准进行比较。EVM把范围基准、成本基准和进度基准整合起来，形成绩效测量基准。它针对每个工作包和控制账户，计算并监测以下三个关键指标：PV，计划价值；EV，挣值；AC，实际成本。', '挣值管理常用公式（PV，计划价值；EV，挣值；AC，实际成本）：\r\n1. SV  = EV-PV，SV，进度偏差：SV=0，按进度计划进行；SV>0，比进度计划提前；SV<0，比进度计划滞后。\r\n2. SPI = EV/PV，CV，成本偏差：CV=0，按计划成本完成；CV>0，低于计划成本；CV<0，超过计划成本。\r\n3. CV  = EV-AC，SPI，进度绩效指数：SPI=1，进度与计划相符；SPI>1，进度超前；SPI<1，进度落后。\r\n4. CPI = EV/AC，CPI，成本绩效指数：CPI=1', 'https://i.imgur.com/cL2CVvB.png', '2018-09-23 19:23:11');
INSERT INTO `t_charts_info` VALUES ('11', '表11-1', '概率和影响定义示例', '407', '针对三个项目目标提供了概率和影响定义的示例。', '定概率和影响级别的数量，更多级别（通常为五级）对应于更详细的风险管理方法，更少级别（通常为三级）对应于更简单的方法。', 'https://i.imgur.com/wChaPhj.png', '2018-09-23 19:25:09');
INSERT INTO `t_charts_info` VALUES ('12', '表12-1', '采购文件比较', '481', '列出了采购中常用的文件类型及其部分内容。（采购文件，也就是采购文档）', '鉴于采购的法律性质，不应把次表的内容看成规定性描述，而只应该把它们看成关于所需文件的类型和内容的总体大纲，用于指导实施采购工作。组织、环境和法律规定会决定项目具体需要的文件类型和内容。', 'https://i.imgur.com/QysN2EK.png', '2018-09-23 19:27:22');
INSERT INTO `t_charts_info` VALUES ('13', '图1-1', '组织通过项目进行状态转换', '6', '从商业角度来看，项目旨在推动组织从一个状态转到另一个状态，从而达成特定目标。', '', 'https://i.imgur.com/TPHSrsU.png', '2018-09-23 19:29:37');
INSERT INTO `t_charts_info` VALUES ('14', '图1-2', '项目启动背景', '8', '项目启动背景大致分为四类：1. 符合法规、法律或社会要求；2. 满足相关方的要求或需求；3. 执行、变更业务或技术战略；4. 创造、改进或修复产品、过程或服务。', '', 'https://i.imgur.com/uHeSwFl.png', '2018-09-23 19:31:01');
INSERT INTO `t_charts_info` VALUES ('15', '图1-3', '项目组合、项目集、项目和运营', '12', '展示了项目组合、项目集、项目和运营在特定情况下如何关联的。', '切记：项目集不包括运营活动。', 'https://i.imgur.com/D8mId2Z.png', '2018-09-23 19:32:27');
INSERT INTO `t_charts_info` VALUES ('16', '图1-4', '组织项目管理', '17', '展示了战略、项目组合、项目集、项目和运营相互作用的组织环境。', '应用组织级项目管理 (OPM)：指为实现战略目标而整合项目组合、项目集和项目管理与组织驱动因素的框架。', 'https://i.imgur.com/mrYhiKo.png', '2018-09-23 19:34:42');
INSERT INTO `t_charts_info` VALUES ('17', '图1-5', 'PMBOK® 指南关键组成部分在项目中的相互关系', '18', '项目生命周期、5大过程组、10大知识领域在项目中的对应关系。', '', 'https://i.imgur.com/pxZt3R3.png', '2018-09-23 19:35:50');
INSERT INTO `t_charts_info` VALUES ('18', '图1-6', '过程示例：输入、工具与技术和输出', '22', '49个过程的ITTO样例，说明了一个过程的输入、工具、技术和输出的关系以及与其他过程的关系。', '', 'https://i.imgur.com/LkONyAQ.png', '2018-09-23 19:36:37');
INSERT INTO `t_charts_info` VALUES ('19', '图1-7', '项目数据、信息和报告流向', '27', '项目工作绩效数据、绩效信息信息和绩效信息报告在项目中的流转。', '', 'https://i.imgur.com/K8fvKkL.png', '2018-09-23 19:39:29');
INSERT INTO `t_charts_info` VALUES ('20', '图1-8', '需求评估与关键业务/项目文件的相互关系', '30', '需求评估与五大过程组、项目文件（商业论证、项目章程和项目管理计划）的相互流转关系。', '', 'https://i.imgur.com/UTulClX.png', '2018-09-23 19:41:18');
INSERT INTO `t_charts_info` VALUES ('21', '图2-1', '项目影响', '37', '项目的开展如何通过组织过程资产和事业环境因素去影响公司战略的。', '', 'https://i.imgur.com/UwvrKbE.png', '2018-09-23 19:42:22');
INSERT INTO `t_charts_info` VALUES ('22', '图3-1', '项目经理的影响力范围示例', '53', '项目经理影响力的范围是涉及项目的所有相关方的，这个图也就是项目相关方的图。', '', 'https://i.imgur.com/ByFB9wS.png', '2018-09-23 19:45:24');
INSERT INTO `t_charts_info` VALUES ('23', '图3-2', 'PMI 人才三角®', '57', '项目经理的人才技能需求，人才三角重点关注三个关键技能组合：技术项目管理、领导力、战略和商务管理。', '人才三角重点关注三个关键技能组合：\r\n1. 技术项目管理。与项目、项目集和项目组合管理特定领域相关的知识、技能和行为，即角色履行的技术方面。\r\n2. 领导力。指导、激励和带领团队所需的知识、技能和行为，可帮助组织达成商业目标。\r\n3. 战略和商务管理。关于行业和组织的知识和专业技能，有助于提高绩效并取得更好的业务成果。', 'https://i.imgur.com/jQ3TF0w.png', '2018-09-23 19:48:42');
INSERT INTO `t_charts_info` VALUES ('24', '图5-6', '系统交互图', '146', '系统交互图是范围模型的一个例子，它是对产品范围的可视化描绘，显示业务系统（过程、设备、计算机系统等）及其与人和其他系统（行动者）之间的交互方式。', '系统交互图显示了业务系统的输入、输入提供者、业务系统的输出和输出接收者。', 'https://i.imgur.com/Q6PUqE2.png', '2018-09-23 19:49:53');
INSERT INTO `t_charts_info` VALUES ('25', '图5-7', '需求跟踪矩阵示例', '149', '需求跟踪矩阵示例，其中列有相关的需求属性。', '需求跟踪矩阵是描述一个需求从产生到完成的过程，是需求溯源和跟踪的依据。', 'https://i.imgur.com/m52AX3A.png', '2018-09-23 19:52:03');
INSERT INTO `t_charts_info` VALUES ('26', '图5-12', '分解到工作包的WBS 示例', '158', 'WBS示例：显示了某工作分解结构的一部分，其中若干分支已经向下分解到工作包层次。', '', 'https://i.imgur.com/LYbgddg.png', '2018-09-23 19:53:33');
INSERT INTO `t_charts_info` VALUES ('27', '图5-13', 'WBS 示例：以阶段作为第二层', '159', 'WBS示例：u以项目生命周期的各阶段作为分解的第二层，把产品和项目可交付成果放在第三层。', '', 'https://i.imgur.com/2Mtn5QD.png', '2018-09-23 19:54:13');
INSERT INTO `t_charts_info` VALUES ('28', '图5-14', 'WBS 示例：以主要可交付成果作为第二层', '160', 'WBS示例：以主要可交付成果作为分解的第二层。', '', 'https://i.imgur.com/4ToIMWS.png', '2018-09-23 19:53:49');
INSERT INTO `t_charts_info` VALUES ('29', '图6-2', '进度规划工作概述', '176', '进度计划工作的概览，展示如何结合进度计划编制方法、编制工具及项目进度管理各过程的输出来创建进度模型。', '', 'https://i.imgur.com/cAGqogF.png', '2018-09-23 19:57:55');
INSERT INTO `t_charts_info` VALUES ('30', '图6-9', '紧前关系绘图法（PDM）的活动关系类型', '190', '紧前关系绘图法（PDM）的活动关系类型：完成到开始（FS）、完成到完成（FF）、开始到开始（SS）、开始到完成（SF）。', '', 'https://i.imgur.com/BcR1nIM.png', '2018-09-23 20:01:13');
INSERT INTO `t_charts_info` VALUES ('31', '图6-10', '提前量和滞后量示例', '192', '提前量和滞后量：提前量是相对于紧前活动，紧后活动可以提前的时间量；滞后量是相对于紧前活动，紧后活动需要推迟的时间量。', '', 'https://i.imgur.com/avUdC2A.png', '2018-09-23 20:02:44');
INSERT INTO `t_charts_info` VALUES ('32', '图6-11', '项目进度网络图', '193', '项目进度网络图是表示项目进度活动之间的逻辑关系（也叫依赖关系）的图形。', '', 'https://i.imgur.com/xiiLYI8.png', '2018-09-23 20:03:54');
INSERT INTO `t_charts_info` VALUES ('33', '图6-16', '关键路径法示例', '211', '关键路径法是在不考虑任何资源限制的情况下对估算出的项目最短工期。', '', 'https://i.imgur.com/ek851DQ.png', '2018-09-23 20:05:51');
INSERT INTO `t_charts_info` VALUES ('34', '图6-17', '资源平衡', '212', '资源平衡，为了在资源需求与资源供给之间取得平衡，根据资源制约因素对开始日期和完成日期进行调整的一种技术，通常改变关键路径。', '', 'https://i.imgur.com/58KNE3l.png', '2018-09-23 20:07:24');
INSERT INTO `t_charts_info` VALUES ('35', '图6-18', '目标里程碑的概率分布示例', '214', '显示了一个项目的概率分布，表明实现特定目标日期（即项目完成日期）的可能性。在这个例子中，项目按时或在目标日期，即 5 月 13 日之前完成的概率是 10%，而在 5 月 28 日之前完成的概率是 90%。', '', 'https://i.imgur.com/tDyTqq2.png', '2018-09-23 20:08:14');
INSERT INTO `t_charts_info` VALUES ('36', '图6-19', '进度压缩技术的比较', '215', '比较了多个进度压缩技术。', '进度压缩技术是指在不缩减项目范围的前提下，缩短或加快进度工期。包括赶工和快速跟进。', 'https://i.imgur.com/qpWn49Y.png', '2018-09-23 20:09:40');
INSERT INTO `t_charts_info` VALUES ('37', '图6-20', '产品愿景、发布规划和迭代计划之间的关系', '216', '敏捷发布规划下，产品愿景、产品路线图、发布规划和迭代计划之间的关系。', '', 'https://i.imgur.com/B2jgnCv.png', '2018-09-23 20:11:54');
INSERT INTO `t_charts_info` VALUES ('38', '图6-21', '项目进度计划示例', '219', '一个正在执行的示例项目的进度计划，工作进展是通过截止日期或状态日期表示的，包括：里程碑进度计划，横道图，进度关联横道图。', '', 'https://i.imgur.com/lEJIQTf.png', '2018-09-23 20:13:20');
INSERT INTO `t_charts_info` VALUES ('39', '图6-24', '迭代燃尽图', '226', '迭代燃尽图，这类图用于追踪迭代未完项中尚待完成的工作。它基于迭代规划中确定的工作，分析与理想燃尽图的偏差。可使用预测趋势线来预测迭代结束时可能出现的偏差，以及在迭代期间应该采取的合理行动。', '', 'https://i.imgur.com/8BIBSB9.png', '2018-09-23 20:14:53');
INSERT INTO `t_charts_info` VALUES ('40', '图7-8', '项目预算的组成', '255', '预算 = 管理储备 + 成本基准	= 管理储备 + 控制账户	= 管理储备 + （应急储备 + 工作包成本估算 ）	= 管理储备 + （应急储备 + （活动应急储备 + 活动成本估算））。', '', 'https://i.imgur.com/57WduV0.png', '2018-09-23 20:16:01');
INSERT INTO `t_charts_info` VALUES ('41', '图7-9', '成本基准、支出与资金需求', '255', '展示由于成本基准中的成本估算与进度活动直接关联，可按时间段分配成本基准，得到一条 S 曲线。对于使用挣值管理的项目，成本基准指的是绩效测量基准。', '', 'https://i.imgur.com/zFTgarz.png', '2018-09-23 20:17:46');
INSERT INTO `t_charts_info` VALUES ('42', '图7-12', '挣值、计划价值和实际成本', '264', '以 S 曲线展示了某个项目的 EV 数据，该项目预算超支且进度落后。', '在挣值分析中，对计划价值、挣值和实际成本这三个参数，既可以分阶段（通常以周或月为单位）进行监督和报告，也可以针对累计值进行监督和报告。', 'https://i.imgur.com/tNmCMyi.png', '2018-09-23 20:19:04');
INSERT INTO `t_charts_info` VALUES ('43', '图7-13', '完工尚需绩效指数（TCPI）', '268', '完工尚需绩效指数（TCPI）是一种为了实现特定的管理目标，剩余资源的使用必须达到的成本绩效指标，是完成剩余工作所需的成本与剩余预算之比', 'TCPI，其计算公式在图的左下角，用剩余工作（BAC 减去 EV）除以剩余资金（可以是 BAC 减去 AC，或 EAC 减去 AC）。', 'https://i.imgur.com/IBVCv9E.png', '2018-09-23 20:22:06');
INSERT INTO `t_charts_info` VALUES ('44', '图8-2', '主要项目质量管理过程的相互关系', '273', '概述了项目质量管理过程的主要输入和输出以及这些过程在项目质量管理知识领域中的相互关系。', '', 'https://i.imgur.com/3lYlAEr.png', '2018-09-23 20:22:35');
INSERT INTO `t_charts_info` VALUES ('45', '图8-5', '质量成本', '283', '质量成本 (COQ) 包括在产品生命周期中为预防不符合要求、为评价产品或服务是否符合要求，以及因未达到要求（返工）而发生的所有成本。失败成本通常分为内部（项目团队发现的）和外部（客户发现的）两类。', '', 'https://i.imgur.com/1TdqX8A.png', '2018-09-23 20:23:12');
INSERT INTO `t_charts_info` VALUES ('46', '图8-6', 'SIPOC 模型', '285', '展示了其中一个版本的价值链，即 SIPOC（供应商、输入、过程、输出和客户）模型。', '流程图可能有助于了解和估算一个过程的质量成本。', 'https://i.imgur.com/K8ZwlXy.png', '2018-09-23 20:24:23');
INSERT INTO `t_charts_info` VALUES ('47', '图8-9', '因果图', '294', '因果图，又称“鱼骨图”、“why-why分析图”和“石川图”，将问题陈述的原因分解为离散的分支，有助于识别问题的主要原因或根本原因。', '', 'https://i.imgur.com/vZQsdt9.png', '2018-09-23 20:25:03');
INSERT INTO `t_charts_info` VALUES ('48', '图8-12', '核查表', '302', '在开展检查以识别缺陷时，用核查表收集属性数据就特别方便，例如关于缺陷数量或后果的数据。', '核查表，又称计数表，用于合理排列各种事项，以便有效地收集关于潜在质量问题的有用数据。', 'https://i.imgur.com/QBdUdAj.png', '2018-09-23 20:25:53');
INSERT INTO `t_charts_info` VALUES ('49', '图9-4', 'RACI 矩阵示例', '317', '责任分配矩阵的一个具体形式：RACI，以确保任何一项任务都只有一个人负责，从而避免职权不清。', 'RACI（执行、负责、咨询和知情）：A更好的翻译是负责，R是执行或响应。一个活动只有1个A。', 'https://i.imgur.com/ZUdj2Gp.png', '2018-09-23 20:29:03');
INSERT INTO `t_charts_info` VALUES ('50', '图9-7', '资源分解结构示例', '327', '资源分解结构是资源依类别和类型的层级展现。', '', 'https://i.imgur.com/VpJqAog.png', '2018-09-23 20:29:34');
INSERT INTO `t_charts_info` VALUES ('51', '图10-4', '适用于跨文化沟通的沟通模型', '373', '沟通模型示例，展示了发送方的当前情绪、知识、背景、个性、文化和偏见会如何影响信息本身及其传递方式。类似地，接收方的当前情绪、知识、背景、个性、文化和偏见也会影响信息的接收和解读方式，导致沟通中的障碍或噪音。', '', 'https://i.imgur.com/oRE4bHB.png', '2018-09-23 20:30:31');
INSERT INTO `t_charts_info` VALUES ('52', '图11-4', '风险分解结构（RBS）示例', '406', '风险类别，通常借助风险分解结构 (RBS)来构建风险类别。', '', 'https://i.imgur.com/xDOJ9PS.png', '2018-09-23 20:31:41');
INSERT INTO `t_charts_info` VALUES ('53', '图11-5', '概率和影响矩阵示例（有评分方法）', '408', '概率和影响矩阵的示例，其中也有数值风险评分的可能方法。', '概率和影响可以用描述性术语（如很高、高、中、低和很低）或数值来表达。', 'https://i.imgur.com/e2E7o5t.png', '2018-09-23 20:32:35');
INSERT INTO `t_charts_info` VALUES ('54', '图11-10', '列出可监测性、邻近性和影响值的气泡图示例', '426', '层级图，通过两个以上的参数对风险进行分类。气泡图能显示三维数据。气泡图的示例，其中，X轴代表可监测性，Y轴代表邻近性，影响值则以气泡大小表示。', '', 'https://i.imgur.com/MDWbdNt.png', '2018-09-23 20:34:45');
INSERT INTO `t_charts_info` VALUES ('55', '图11-13', '定量成本风险分析 S 曲线示例', '433', '定量风险分析中模拟技术中的蒙特卡洛成本风险分析所得到的 S 曲线示例。', '', 'https://i.imgur.com/cJrMZbd.png', '2018-09-23 20:35:38');
INSERT INTO `t_charts_info` VALUES ('56', '图11-14', '龙卷风图示例', '434', '定量风险分析中模拟技术中的敏感性分析的结果通常用龙卷风图来表示。', '', 'https://i.imgur.com/IR9g8np.png', '2018-09-23 20:36:43');
INSERT INTO `t_charts_info` VALUES ('57', '图11-15', '决策树示例', '435', '定量风险分析中模拟技术中的决策树分析。用决策树在若干备选行动方案中选择一个最佳方案。', '', 'https://i.imgur.com/GutJuKu.png', '2018-09-23 20:38:17');
INSERT INTO `t_charts_info` VALUES ('58', '图13-6', '相关方参与度评估矩阵', '522', '相关方参与度评估矩阵用于将相关方当前参与水平与期望参与水平进行比较。相关方参与水平可分为如下：不了解型、抵制型、中立型、支持行、领导型。', '', 'https://i.imgur.com/CrBCJX2.png', '2018-09-23 20:39:53');
INSERT INTO `t_charts_info` VALUES ('59', '图21-1', '项目组合、项目集与项目管理间的关系示例', '544', '组织战略与优先级相关联，项目组合与项目集之间、项目组合和项目之间以及项目集与单个项目之间都存在联系。', '', 'https://i.imgur.com/VwqQvEv.png', '2018-09-23 20:41:36');
INSERT INTO `t_charts_info` VALUES ('60', '图21-2', '项目生命周期的通用结构', '548', '典型项目都呈现下列项目生命周期结构：开始项目、组织与准备、执行项目工作、结束项目。', '', 'https://i.imgur.com/5fEN1Wn.png', '2018-09-23 20:43:08');
INSERT INTO `t_charts_info` VALUES ('61', '图21-3', '随时间而变化的变量影响', '549', '通用的生命周期结构一般具有以下三个特征：1. 成本与人力投入在开始时较低，在工作执行期间逐渐增加，并在项目快要结束时迅速回落；2. 在项目的整个生命周期中，随着决策的制定与可交付成果的验收，风险会逐步降低；3.做出变更和纠正错误的成本，通常会随着项目越来越接近完成而显著增高。', '', 'https://i.imgur.com/OFcQ1Gv.png', '2018-09-23 20:46:04');
INSERT INTO `t_charts_info` VALUES ('62', '图21-4', '项目相关方示例', '551', '项目相关方的示例。', '', 'https://i.imgur.com/D45znLO.png', '2018-09-23 20:46:32');
INSERT INTO `t_charts_info` VALUES ('63', '图21-5', '项目或阶段中的过程组相互作用示例', '555', '项目或阶段中的5大过程组相互作用。', '', 'https://i.imgur.com/Ds3iClc.png', '2018-09-23 20:47:02');
INSERT INTO `t_charts_info` VALUES ('64', '图22-1', '项目边界', '562', '启动过程组时，项目边界，显示了项目发起人及商业文件与启动过程的关系。', '', 'https://i.imgur.com/GgbZHwC.png', '2018-09-23 20:49:20');
INSERT INTO `t_charts_info` VALUES ('65', '图3X3-1', '项目生命周期的连续区间', '666', '预测型、迭代型、增量型、敏捷型项目生命周期之间连续性的区间关系。', '', 'https://i.imgur.com/L01yGQq.png', '2018-09-23 20:51:05');
INSERT INTO `t_charts_info` VALUES ('66', '图3X3-2', '跨迭代周期的过程组重复开展所需的投入水平', '667', '重复开展项目管理过程组会产生管理费用。为了有效管理高度复杂且充满不确定性和变更的项目，这种管理费用是必要的。在基于迭代的各个阶段，所需的投入水平。', '', 'https://i.imgur.com/kRGcPbB.png', '2018-09-23 20:51:41');
INSERT INTO `t_charts_info` VALUES ('67', '图3X3-3', '持续阶段中的过程组关系', '668', '持续性阶段（持续且适应式规划）与5大过程组相互作用。', '持续且适应式规划：高度适应型项目往往在整个项目生命周期内持续实施所有的项目管理过程组。它承认：工作一旦开始，计划就需根据新情况而改变。', 'https://i.imgur.com/daffKPi.png', '2018-09-23 20:56:02');

-- ----------------------------
-- Table structure for `t_concept_explain`
-- ----------------------------
DROP TABLE IF EXISTS `t_concept_explain`;
CREATE TABLE `t_concept_explain` (
  `concept_id` int(11) NOT NULL AUTO_INCREMENT,
  `concept_name` varchar(32) NOT NULL,
  `concept_en_name` varchar(64) NOT NULL,
  `concept_info` varchar(512) NOT NULL,
  `concept_extra_info` varchar(256) NOT NULL,
  PRIMARY KEY (`concept_id`),
  UNIQUE KEY `key` (`concept_name`) USING BTREE,
  UNIQUE KEY `key1` (`concept_en_name`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=471 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_concept_explain
-- ----------------------------
INSERT INTO `t_concept_explain` VALUES ('1', '验收标准', 'Acceptance Criteria', '可交付成果通过验收前必须满足的一系列条件。', '');
INSERT INTO `t_concept_explain` VALUES ('2', '验收的可交付成果', 'Accepted Deliverables', '项目产出的，且被项目客户或发起人确认为满足既定验收准的产品、结果或能力。', '');
INSERT INTO `t_concept_explain` VALUES ('3', '准确', 'Accuracy', '在质量管理体系中，“准确”是指对正确程度的评估。', '');
INSERT INTO `t_concept_explain` VALUES ('4', '获取资源', 'Acquire Resources', '获取项目所需的团队成员、设施、设备、材料、用品和其他资源的过程。', '');
INSERT INTO `t_concept_explain` VALUES ('5', '募集', 'Acquisition', '获取执行项目活动所必需的人力资源和物质资源。募集将产生资源成本，但不一定是财务成本。', '');
INSERT INTO `t_concept_explain` VALUES ('6', '活动', 'Activity', '在进度计划中所列，并在项目过程中实施的工作组成部分。', '');
INSERT INTO `t_concept_explain` VALUES ('7', '活动属性', 'Activity Attributes', '进度活动所具备的多种属性，可以包含在活动清单中。活动属性包括活动编码、紧前活动、紧后活动、逻辑关系、提前量和滞后量、资源要求、强制日期、制约因素和假设条件。', '');
INSERT INTO `t_concept_explain` VALUES ('8', '活动持续时间', 'Activity Duration', '用日历单位表示的，进度活动从开始到完成的时间长度。参见“持续时间”。', '');
INSERT INTO `t_concept_explain` VALUES ('9', '活动持续时间估算', 'Activity Duration Estimates', '对完成一项活动可能需要的时间的定量评估。', '');
INSERT INTO `t_concept_explain` VALUES ('10', '活动清单', 'Activity List', '一份记录进度活动的表格，包含活动描述、活动标识及足够详细的工作范围描述，以便项目团队成员了解所需执行的工作。', '');
INSERT INTO `t_concept_explain` VALUES ('11', '活动节点法', 'Activity-on-Node (AON)', '见“紧前关系绘图法（PDM）”', '');
INSERT INTO `t_concept_explain` VALUES ('12', '实际成本', 'Actual Cost (AC)', '在给定时间段内，因执行项目活动而实际发生的成本。', '');
INSERT INTO `t_concept_explain` VALUES ('13', '实际持续时间', 'Actual Duration', '进度活动的实际开始日期与数据日期（如果该进度活动尚未完成）或实际完成日期（如果该进度活动已经完成）之间的日历时间。', '');
INSERT INTO `t_concept_explain` VALUES ('14', '适应型生命周期', 'Adaptive Life Cycle', '迭代型或增量型项目生命周期。', '');
INSERT INTO `t_concept_explain` VALUES ('15', '亲和图', 'Affinity Diagrams', '一种用来对大量创意进行分组，以便进一步审查和分析的技术。', '');
INSERT INTO `t_concept_explain` VALUES ('16', '协议', 'Agreements', '用于明确项目初步意向的任何文件或沟通，形式有合同、谅解备忘录（MOU）、协议书、口头协议和电子邮件等。', '');
INSERT INTO `t_concept_explain` VALUES ('17', '备选方案分析', 'Alternative Analysis', '一种对已识别的可选方案进行评估的技术，用来决定选择哪种方案或使用何种方法来执行项目工作。', '');
INSERT INTO `t_concept_explain` VALUES ('18', '类比估算', 'Analogous Estimating', '使用相似活动或项目的历史数据，来估算当前活动或项目的持续时间或成本的技术。', '');
INSERT INTO `t_concept_explain` VALUES ('19', '分析技术', 'Analytical Techniques', '根据可能的项目或环境变量变化及它们与其他变量之间的关系，对潜在后果进行评估、分析和预测的各种技术。', '');
INSERT INTO `t_concept_explain` VALUES ('20', '假设', 'Assumption', '在规划过程中不需要验证即可视为正确、真实或确定的因素。', '');
INSERT INTO `t_concept_explain` VALUES ('21', '假设日志', 'Assumption Log', '在整个项目生命周期中用来记录所有假设条件和制约因素的项目文件。', '');
INSERT INTO `t_concept_explain` VALUES ('22', '属性抽样', 'Attribute Sampling', '检测质量的一种方法。', '');
INSERT INTO `t_concept_explain` VALUES ('23', '职权', 'Authority', '使用项目资源、花费资金、做出决策或给予批准的权力。', '');
INSERT INTO `t_concept_explain` VALUES ('24', '逆推法', 'Backward Pass', '关键路径法中的一种技术。在进度模型中，从项目完工日期出发，反向推导，计算最晚开始和最晚结束日期。', '');
INSERT INTO `t_concept_explain` VALUES ('25', '横道图', 'Bar Chart', '展示进度相关信息的一种图表方式。在典型的横道图中，进度活动或工作分解结构组件竖列于图的左侧，日期横排在图的顶端，而活动持续时间则以按日期定位的水平条形表示。见“甘特图”。', '');
INSERT INTO `t_concept_explain` VALUES ('26', '基准', 'Baseline', '经批准的工作产品版本，只有通过正式的变更控制程序才能进行变更，并且用作与实际结果进行比较的依据。', '');
INSERT INTO `t_concept_explain` VALUES ('27', '估算依据', 'Basis of Estimates', '概述项目估算所用依据的支持性文件，如假设条件、制约因素、详细级别、估算区间和置信水平。', '');
INSERT INTO `t_concept_explain` VALUES ('28', '标杆对照', 'Benchmarking', '标杆对照是指将实际或计划的产品、流程和实践与其他可比组织的做法进行比较，以便识别最佳实践、形成改进意见，并为绩效考核提供依据。', '');
INSERT INTO `t_concept_explain` VALUES ('29', '效益管理计划', 'Benefits Management Plan', '对创造、提高和保持项目或项目集效益的过程进行定义的书面文件。', '');
INSERT INTO `t_concept_explain` VALUES ('30', '招标文件', 'Bid Documents', '用于从潜在卖方征集信息、报价或建议书的所有文件。', '');
INSERT INTO `t_concept_explain` VALUES ('31', '投标人会议', 'Bidder Conference', '在准备投标书或建议书之前，与潜在卖方举行的会议，以便保证所有潜在卖方对本项采购都有清楚且一致的理解。又称承包商会议、供应商会议或投标前会议。', '');
INSERT INTO `t_concept_explain` VALUES ('32', '自下而上估算', 'Bottom-Up Estimating', '估算项目持续时间或成本的一种方法，通过从下到上逐层汇总WBS组件的估算而得到项目估算。', '');
INSERT INTO `t_concept_explain` VALUES ('33', '预算', 'Budget', '经批准的估算，用于整个项目、任一工作分解结构组件或任一进度活动。', '');
INSERT INTO `t_concept_explain` VALUES ('34', '完工预算', 'Budget at Completion (BAC)', '为将要执行的工作所建立的全部预算的总和。', '');
INSERT INTO `t_concept_explain` VALUES ('35', '缓冲', 'Buffer', '见“储备”。', '');
INSERT INTO `t_concept_explain` VALUES ('36', '商业论证', 'Business Case', '文档化的经济可行性研究报告，用来对尚缺乏充分定义的所选方案的收益进行有效性论证，是启动后续项目管理活动的依据。', '');
INSERT INTO `t_concept_explain` VALUES ('37', '商业价值', 'Business Value', '从商业运作中获得的可量化净效益。效益可以是有形的、无形的或两者兼有之。', '');
INSERT INTO `t_concept_explain` VALUES ('38', '因果图', 'Cause and Effect Diagram', '一种分解技术，有助于追溯造成非预期结果的根本原因。', '');
INSERT INTO `t_concept_explain` VALUES ('39', '变更', 'Change', '对任何正式受控的可交付成果、项目管理计划组成部分或项目文件的修改。', '');
INSERT INTO `t_concept_explain` VALUES ('40', '变更控制', 'Change Control', '一个过程，用来识别、记录、批准或否决对项目文件、可交付成果或基准的修改。', '');
INSERT INTO `t_concept_explain` VALUES ('41', '变更控制委员会', 'Change Control Board (CCB)', '一个正式组成的团体，负责审议、评价、批准、推迟或否决项目变更，以及记录和传达变更处理决定。', '');
INSERT INTO `t_concept_explain` VALUES ('42', '变更控制系统', 'Change Control System', '一套程序，描述了如何管理和控制针对项目可交付成果和文档的修改。', '');
INSERT INTO `t_concept_explain` VALUES ('43', '变更控制工具', 'Change Control Tools', '辅助变更管理和（或）配置管理的手动或自动的工具。这套工具至少能够支持变更控制委员会的活动。', '');
INSERT INTO `t_concept_explain` VALUES ('44', '变更日志', 'Change Log', '项目过程中所做变更及其当前状态的综合清单。', '');
INSERT INTO `t_concept_explain` VALUES ('45', '变更管理计划', 'Change Management Plan', '项目管理计划的一个组成部分，用以建立变更控制委员会，记录其具体权限，并说明如何实施变更控制系统。', '');
INSERT INTO `t_concept_explain` VALUES ('46', '变更请求', 'Change Request', '关于修改文档、可交付成果或基准的正式提议。', '');
INSERT INTO `t_concept_explain` VALUES ('47', '章程', 'Charter', '见“项目章程”。', '');
INSERT INTO `t_concept_explain` VALUES ('48', '核对单分析', 'Checklist Analysis', '使用清单来系统审核材料的准确性及完整性的一种技术。', '');
INSERT INTO `t_concept_explain` VALUES ('49', '核查表', 'Checksheets', '在收集数据时用作查对清单的计数表格。', '');
INSERT INTO `t_concept_explain` VALUES ('50', '索赔', 'Claim', '根据具有法律约束力的合同条款，卖方向买方（或买方向卖方）提出的关于报酬、补偿或款项的请求、要求或主张，如针对某个有争议的变更。', '');
INSERT INTO `t_concept_explain` VALUES ('51', '索赔管理', 'Claims Administration', '对合同索赔进行处理、裁决和沟通的过程。', '');
INSERT INTO `t_concept_explain` VALUES ('52', '结束项目或阶段', 'Close Project or Phase', '终结项目、阶段或合同的所有活动的过程。', '');
INSERT INTO `t_concept_explain` VALUES ('53', '收尾过程组', 'Closing Process Group', '正式完成或结束项目、阶段或合同所执行的过程（组）。', '');
INSERT INTO `t_concept_explain` VALUES ('54', '账户编码', 'Code of Accounts', '用于唯一地识别工作分解结构每个组件的编号系统。', '');
INSERT INTO `t_concept_explain` VALUES ('55', '收集需求', 'Collect Requirements', '为实现项目目标而确定、记录并管理相关方的需要和要求的过程。', '');
INSERT INTO `t_concept_explain` VALUES ('56', '集中办公', 'Colocation', '为改善沟通和工作关系，提高工作效率，而让项目团队成员的工作地点彼此靠近的一种组织布局策略。', '');
INSERT INTO `t_concept_explain` VALUES ('57', '沟通方法', 'Communication Methods', '在项目相关方之间传递信息的系统化的程序、技术或过程。', '');
INSERT INTO `t_concept_explain` VALUES ('58', '沟通模型', 'Communication Models', '说明在项目中将如何开展沟通过程的描述、比喻或图形。', '');
INSERT INTO `t_concept_explain` VALUES ('59', '沟通需求分析', 'Communication Requirements Analysis', '一种分析技术，通过访谈、研讨会或借鉴以往项目经验教训等方式，来确定项目相关方对信息的需求。', '');
INSERT INTO `t_concept_explain` VALUES ('60', '沟通管理计划', 'Communications Management Plan', '项目、项目集或项目组合管理计划的组成部分，描述了项目信息将如何、何时、由谁来进行管理和传播。', '');
INSERT INTO `t_concept_explain` VALUES ('61', '沟通风格评估', 'Communication Styles Assessment', '规划沟通活动时，用于识别与相关方开展沟通的优选沟通方法、形式和内容的一种技术。', '');
INSERT INTO `t_concept_explain` VALUES ('62', '沟通技术', 'Communication Technology', '用于项目相关方之间传递信息的特定工具、系统或计算机程序等。', '');
INSERT INTO `t_concept_explain` VALUES ('63', '实施采购', 'Conduct Procurements', '获取卖方应答、选择卖方并授予合同的过程。', '');
INSERT INTO `t_concept_explain` VALUES ('64', '配置管理计划', 'Configuration Management Plan', '项目管理计划的一个组成部分，用以说明如何在配置控制之下识别和解释项目参数，以及如何记录和报告项目参数的变更。', '');
INSERT INTO `t_concept_explain` VALUES ('65', '配置管理系统', 'Configuration Management System', '用于跟踪项目参数和监控这些参数变更的程序的集合。', '');
INSERT INTO `t_concept_explain` VALUES ('66', '一致性', 'Conformance', '质量管理体系中的一个通用概念，表示所交付的结果处于某质量要求的可接受偏差界限之内。', '');
INSERT INTO `t_concept_explain` VALUES ('67', '制约因素', 'Constraint', '对项目、项目集、项目组合或过程的执行有影响的限制性因素。', '');
INSERT INTO `t_concept_explain` VALUES ('68', '系统交互图', 'Context Diagrams', '对产品范围的可视化描绘，显示业务系统（过程、设备、计算机系统等）及其与人和其他系统（行动者）之间的交互方式。', '');
INSERT INTO `t_concept_explain` VALUES ('69', '紧急情况', 'Contingency', '可能对项目执行产生影响的一个事件或情形，可用储备去应对。', '');
INSERT INTO `t_concept_explain` VALUES ('70', '应急储备', 'Contingency Reserve', '在进度或成本基准内，为主动应对,已知风险而分配的时间或资金。', '');
INSERT INTO `t_concept_explain` VALUES ('71', '应急应对策略', 'Contingent Response Strategies', '事先制定的，在某个特定触发条件发生时，可以启动的应对措施。', '');
INSERT INTO `t_concept_explain` VALUES ('72', '合同', 'Contract', '合同是指对双方都有约束力的协议，强制卖方提供规定的产品、服务或成果，以及强制买方支付相应的费用。', '');
INSERT INTO `t_concept_explain` VALUES ('73', '合同变更控制系统', 'Contract Change Control System', '用来收集、跟踪、裁定和沟通有关合同变更的系统。', '');
INSERT INTO `t_concept_explain` VALUES ('74', '控制', 'Control', '对比实际绩效与计划绩效，分析偏差，评估趋势以改进过程，评价可能的备选方案，并提出必要的纠正措施建议。', '');
INSERT INTO `t_concept_explain` VALUES ('75', '控制账户', 'Control Account', '一种管理控制点。在该控制点上，把范围、预算、实际成本和进度加以整合，并与挣值比较，以测量绩效。', '');
INSERT INTO `t_concept_explain` VALUES ('76', '控制图', 'Control Chart', '按时间顺序展示过程数据，并将这些数据与既定的控制界限相比较的一种图形。控制图有一条中心线，有助于观察图中的数据点向两边控制界限偏移的趋势。', '');
INSERT INTO `t_concept_explain` VALUES ('77', '控制成本', 'Control Costs', '监督项目状态，以更新项目成本和管理成本基准变更的过程。', '');
INSERT INTO `t_concept_explain` VALUES ('78', '控制界限', 'Control Limits', '在控制图中，中心线或均值两侧三个标准差（基于数据的正态分布）以内的区域，它反映了数据的预期变动范围。参见“规格界限”。', '');
INSERT INTO `t_concept_explain` VALUES ('79', '控制采购', 'Control Procurements', '管理采购关系，监督合同绩效，实施必要的变更和纠偏，以及关闭合同的过程。', '');
INSERT INTO `t_concept_explain` VALUES ('80', '控制质量', 'Control Quality', '为了评估绩效，确保项目输出完整、正确，并满足客户期望，而监督和记录质量管理活动执行结果的过程。', '');
INSERT INTO `t_concept_explain` VALUES ('81', '控制资源', 'Control Resources', '确保按计划为项目分配资源，以及根据资源使用计划监督资源实际使用情况，并采取必要纠正措施的过程。', '');
INSERT INTO `t_concept_explain` VALUES ('82', '控制进度', 'Control Schedule', '监督项目状态，以更新项目进度和管理进度基准变更的过程。', '');
INSERT INTO `t_concept_explain` VALUES ('83', '控制范围', 'Control Scope', '监督项目和产品的范围状态，管理范围基准变更的过程。', '');
INSERT INTO `t_concept_explain` VALUES ('84', '纠正措施', 'Corrective Action', '为使项目工作绩效重新与项目管理计划一致，而进行的有目的的活动。', '');
INSERT INTO `t_concept_explain` VALUES ('85', '成本汇总', 'Cost Aggregation', '在项目工作分解结构的给定层次或给定成本控制账户上，对与各工作包相关的较低层次的成本估算进行汇总。', '');
INSERT INTO `t_concept_explain` VALUES ('86', '成本基准', 'Cost Baseline', '经过批准的、按时间段分配的项目预算，不包括任何管理储备，只有通过正式的变更控制程序才能进行变更，用作与实际结果进行比较的依据。', '');
INSERT INTO `t_concept_explain` VALUES ('87', '成本效益分析', 'Cost-Benefit Analysis', '用来比较项目成本与其带来的收益的财务分析工具。', '');
INSERT INTO `t_concept_explain` VALUES ('88', '成本管理计划', 'Cost Management Plan', '项目或项目集管理计划的组成部分，描述如何规划、安排和控制成本。', '');
INSERT INTO `t_concept_explain` VALUES ('89', '质量成本', 'Cost of Quality (CoQ)', '在整个产品生命周期所产生的所有成本，即：为预防产品或服务不符合要求而进行的投资，为评估产品或服务是否符合要求而产生的成本，以及因产品或服务未达到要求而带来的损失。', '');
INSERT INTO `t_concept_explain` VALUES ('90', '成本绩效指数', 'Cost Performance Index (CPI)', '测量预算资源的成本效率的一种指标，表示为挣值与实际成本之比。', '');
INSERT INTO `t_concept_explain` VALUES ('91', '成本加奖励费用合同', 'Cost Plus Award Fee Contract (CPAF)', '合同的一种类型，向卖方支付已完工作的全部合法实际成本，再加上一笔奖励费用作为卖方的利润。', '');
INSERT INTO `t_concept_explain` VALUES ('92', '成本加固定费用合同', 'Cost Plus Fixed Fee Contract (CPFF)', '成本补偿合同的一种类型，买方为卖方报销可列支成本（可列支成本由合同确定），再加上一笔固定数额的利润（费用）。', '');
INSERT INTO `t_concept_explain` VALUES ('93', '成本加激励费用合同', 'Cost Plus Incentive Fee Contract (CPIF)', '成本补偿合同的一种类型，买方为卖方报销可列支成本（可列支成本由合同确定），并且卖方在达到规定绩效标准时赚取利润。', '');
INSERT INTO `t_concept_explain` VALUES ('94', '成本补偿合同', 'Cost-Reimbursable Contract', '合同类型的一种，向卖方支付实际成本加费用（通常代表卖方的利润）。', '');
INSERT INTO `t_concept_explain` VALUES ('95', '成本偏差', 'Cost Variance (CV)', '在某个给定时间点，预算亏空或盈余量，表示为挣值与实际成本之差。', '');
INSERT INTO `t_concept_explain` VALUES ('96', '赶工', 'Crashing', '通过增加资源，以最小的成本代价来压缩进度工期的一种技术。', '');
INSERT INTO `t_concept_explain` VALUES ('97', '创建工作分解结构', 'Create WBS', '将项目可交付成果和项目工作分解为较小的、更易于管理的组件的过程。', '');
INSERT INTO `t_concept_explain` VALUES ('98', '准则/标准', 'Criteria', '各种标准、规则或测试，可据此做出判断或决定，或者据此评价产品、服务、成果或过程。', '');
INSERT INTO `t_concept_explain` VALUES ('99', '关键路径', 'Critical Path', '代表项目中最长路径的活动序列，决定了项目最短的可能持续时间。', '');
INSERT INTO `t_concept_explain` VALUES ('100', '关键路径活动', 'Critical Path Activity', '项目进度计划中，位于关键路径上的任何活动。', '');
INSERT INTO `t_concept_explain` VALUES ('101', '关键路径法', 'Critical Path Method (CPM)', '在项目进度模型中，估算项目最短工期，确定逻辑网络路径的进度灵活性大小的一种方法。', '');
INSERT INTO `t_concept_explain` VALUES ('102', '数据', 'Data', '离散的、无序的、未处理的测量结果或原始观察结果。', '');
INSERT INTO `t_concept_explain` VALUES ('103', '数据分析技术', 'Data Analysis Techniques', '用来组织、评估和评价数据与信息的技术。', '');
INSERT INTO `t_concept_explain` VALUES ('104', '数据日期', 'Data Date', '记录项目状态的时间点。', '');
INSERT INTO `t_concept_explain` VALUES ('105', '数据收集技术', 'Data Gathering Techniques', '从各种渠道收集数据与信息的技术。', '');
INSERT INTO `t_concept_explain` VALUES ('106', '数据表现技术', 'Data Representation Techniques', '用于传递数据和信息的图形方式或其他方法。', '');
INSERT INTO `t_concept_explain` VALUES ('107', '决策技术', 'Decision-Making Techniques', '从不同备选方案选择行动方案的技术。', '');
INSERT INTO `t_concept_explain` VALUES ('108', '决策树分析', 'Decision Tree Analysis', '一种图形和计算技术，用来评估与一个决策相关的多个可选方案在不确定情形下的可能后果。', '');
INSERT INTO `t_concept_explain` VALUES ('109', '分解', 'Decomposition', '把项目范围和项目可交付成果逐步划分为更小、更便于管理的组成部分的技术。', '');
INSERT INTO `t_concept_explain` VALUES ('110', '缺陷', 'Defect', '项目组成部分中不能满足要求或规范，需要修补或更换的瑕疵或缺点。', '');
INSERT INTO `t_concept_explain` VALUES ('111', '缺陷补救', 'Defect Repair', '为了修正不一致产品或产品组件的有目的的活动。', '');
INSERT INTO `t_concept_explain` VALUES ('112', '定义活动', 'Define Activities', '识别和记录为完成项目可交付成果而须采取的具体行动的过程。', '');
INSERT INTO `t_concept_explain` VALUES ('113', '定义范围', 'Define Scope', '制定项目和产品详细描述的过程。', '');
INSERT INTO `t_concept_explain` VALUES ('114', '可交付成果', 'Deliverable', '为完成某一过程、阶段或项目而必须产出的任何独特并可核实的产品、成果或服务能力。', '');
INSERT INTO `t_concept_explain` VALUES ('115', '依赖关系', 'Dependency', '见“逻辑关系”。', '');
INSERT INTO `t_concept_explain` VALUES ('116', '制定预算', 'Determine Budget', '汇总所有单个活动或工作包的估算成本，建立一个经批准的成本基准的过程。', '');
INSERT INTO `t_concept_explain` VALUES ('117', '开发方法', 'Development Approach', '在项目生命周期内用于创建并改进产品、服务或成果的方法，例如预测、迭代、增量、敏捷或混合型方法。', '');
INSERT INTO `t_concept_explain` VALUES ('118', '制定项目章程', 'Develop Project Charter', '编写一份正式批准项目并授权项目经理在项目活动中使用组织资源的文件的过程。', '');
INSERT INTO `t_concept_explain` VALUES ('119', '制定项目管理计划', 'Develop Project Management Plan', '定义、准备和协调项目计划的所有组成部分，并把它们整合为一份综合项目管理计划的过程。', '');
INSERT INTO `t_concept_explain` VALUES ('120', '制定进度计划', 'Develop Schedule', '分析活动顺序、持续时间、资源需求和进度制约因素，创建项目进度模型，从而落实项目执行和监控的过程。', '');
INSERT INTO `t_concept_explain` VALUES ('121', '建设团队', 'Develop Team', '提高工作能力，促进团队成员互动，改善团队整体氛围，以提高项目绩效的过程。', '');
INSERT INTO `t_concept_explain` VALUES ('122', '图解技术', 'Diagramming Techniques', '用逻辑链接来呈现信息以辅助理解的方法。', '');
INSERT INTO `t_concept_explain` VALUES ('123', '指导与管理项目工作', 'Direct and Manage Project Work', '为实现项目目标而领导和执行项目管理计划中所确定的工作，并实施已批准变更的过程。', '');
INSERT INTO `t_concept_explain` VALUES ('124', '独立型活动', 'Discrete Effort', '能够予以规划并测量，且会产出特定输出的活动。（附注：独立型活动是用于计算工作绩效的三种挣值管理（EVM）活动之一。）', '');
INSERT INTO `t_concept_explain` VALUES ('125', '选择性依赖关系', 'Discretionary Dependency', '基于某应用领域或项目方面对活动顺序的最佳实践而建立的依赖关系。', '');
INSERT INTO `t_concept_explain` VALUES ('126', '文件审查', 'Documentation Reviews', '收集大量信息并进行审查以确定其准确性及完整性的过程。', '');
INSERT INTO `t_concept_explain` VALUES ('127', '持续时间', 'Duration', '完成一个活动或工作分解结构组件所需要的工作时段总数，以小时、天或周表示。比较“人力投入”。', '');
INSERT INTO `t_concept_explain` VALUES ('128', '最早完成日期', 'Early Finish Date (EF)', '在关键路径法中，基于进度网络逻辑、数据日期和进度制约因素，某进度活动未完部分可能完成的最早时点。', '');
INSERT INTO `t_concept_explain` VALUES ('129', '最早开始日期', 'Early Start Date (ES)', '在关键路径法中，基于进度网络逻辑、数据日期和进度制约因素，某进度活动未完部分可能开始的最早时点。', '');
INSERT INTO `t_concept_explain` VALUES ('130', '挣值', 'Earned Value (EV)', '对已完成工作的测量，用该工作的批准预算来表示。', '');
INSERT INTO `t_concept_explain` VALUES ('131', '挣值管理', 'Earned Value Management', '将范围、进度和资源测量值综合起来，以评估项目绩效和进展的方法。', '');
INSERT INTO `t_concept_explain` VALUES ('132', '人力投入', 'Effort', '完成一个进度活动或工作分解结构组件所需要的人工单位数，通常以小时、天和周来表示。比较“持续时间”。', '');
INSERT INTO `t_concept_explain` VALUES ('133', '情商', 'Emotional Intelligence', '识别、评估和管理个人情绪、他人情绪及团组群体情绪的能力。', '');
INSERT INTO `t_concept_explain` VALUES ('134', '执行过程组', 'Executing Process Group', '完成项目管理计划中确定的工作，以满足项目要求的一组过程。', '');
INSERT INTO `t_concept_explain` VALUES ('135', '专家判断', 'Expert Judgment', '基于某应用领域、知识领域、学科和行业等的专业知识而做出的，关于当前活动的合理判断。这些专业知识可来自具有专业学历、知识、技能、经验或培训经历的任何小组或个人。', '');
INSERT INTO `t_concept_explain` VALUES ('136', '显性知识', 'Explicit Knowledge', '可以使用文字、数字、图片等符号进行编辑的知识。', '');
INSERT INTO `t_concept_explain` VALUES ('137', '外部依赖关系', 'External Dependency', '项目活动与非项目活动之间的关系。', '');
INSERT INTO `t_concept_explain` VALUES ('138', '弹回计划', 'Fallback Plan', '弹回计划包括一组备用的行动和任务，以便在主计划因问题、风险或其他原因而需要被废弃时采用。', '');
INSERT INTO `t_concept_explain` VALUES ('139', '快速跟进', 'Fast Tracking', '一种进度压缩技术，将正常情况下按顺序进行的活动或阶段改为至少是部分并行开展。', '');
INSERT INTO `t_concept_explain` VALUES ('140', '费用', 'Fee', '卖方所得补偿的一部分，代表利润。', '');
INSERT INTO `t_concept_explain` VALUES ('141', '完成日期', 'Finish Date', '与进度活动的完成相关联的时间点。通常带下列修饰词：实际、计划、估计、预计、最早、最晚、基准、目标或当前。', '');
INSERT INTO `t_concept_explain` VALUES ('142', '完成到完成', 'Finish-to-Finish (FF)', '只有紧前活动完成，紧后活动才能完成的逻辑关系。', '');
INSERT INTO `t_concept_explain` VALUES ('143', '完成到开始', 'Finish-to-Start (FS)', '只有紧前活动完成，紧后活动才能开始的逻辑关系。', '');
INSERT INTO `t_concept_explain` VALUES ('144', '固定总价合同', 'Firm Fixed Price Contract (FFP)', '总价合同的一种类型。不考虑卖方成本，由买方向卖方支付事先确定的金额（由合同规定）。', '');
INSERT INTO `t_concept_explain` VALUES ('145', '鱼骨图', 'Fishbone diagram', '见“因果图”。', '');
INSERT INTO `t_concept_explain` VALUES ('146', '总价合同', 'Fixed-Price Contract', '规定了为确定的工作范围所需支付的费用的协议，与完成工作的实际成本或人力投入无关。', '');
INSERT INTO `t_concept_explain` VALUES ('147', '总价加激励费用合同', 'Fixed Price Incentive Fee Contract (FPIF)', '总价合同的一种类型。买方向卖方支付事先确定的金额（由合同规定），如果卖方满足了既定的绩效标准，则还可挣到额外的金额。', '');
INSERT INTO `t_concept_explain` VALUES ('148', '总价加经济价格调整合同', 'Fixed Price with Economic Price Adjustment Contract (FPEPA)', '总价合同的一种类型，但合同中包含了特殊条款，允许根据条件变化，如通货膨胀、某些特殊商品的成本增加（或降低），以事先确定的方式对合同价格进行最终调整。', '');
INSERT INTO `t_concept_explain` VALUES ('149', '浮动时间', 'Float', '也叫“时差”。参见“总浮动时间”和“自由浮动时间”。', '');
INSERT INTO `t_concept_explain` VALUES ('150', '流程图', 'Flowchart', '对某系统内的一个或多个过程的输入、过程行为和输出的图形描述。', '');
INSERT INTO `t_concept_explain` VALUES ('151', '焦点小组', 'Focus Groups', '召集预定的相关方和主题专家，了解他们对所讨论的产品、服务或成果的期望和态度的一种启发式技术。', '');
INSERT INTO `t_concept_explain` VALUES ('152', '预测', 'Forecast', '根据已有的信息和知识，对项目未来的情况和事件进行的估算或预计。', '');
INSERT INTO `t_concept_explain` VALUES ('153', '顺推法', 'Forward Pass', '关键路径法中的一种技术。在进度模型中，从项目开始日期或某给定时点出发，正向推导，计算最早开始和最早结束日期。', '');
INSERT INTO `t_concept_explain` VALUES ('154', '自由浮动时间', 'Free Float', '在不延误任何紧后活动最早开始日期或违反进度制约因素的前提下，某进度活动可以推迟的时间量。', '');
INSERT INTO `t_concept_explain` VALUES ('155', '职能型组织', 'Functional Organization', '把员工按专业领域分组的一种组织架构，项目经理分配工作和使用资源的职权有限。', '');
INSERT INTO `t_concept_explain` VALUES ('156', '资金限制平衡', 'Funding Limit Reconciliation', '把项目资金支出计划与项目资金到位承诺进行对比，从而识别资金限制与计划支出之间的差异的过程。', '');
INSERT INTO `t_concept_explain` VALUES ('157', '甘特图', 'Gantt Chart', '展示进度信息的条形图。纵向列示活动，横向列示日期，用横条表示活动自开始日期至结束日期的持续时间。', '');
INSERT INTO `t_concept_explain` VALUES ('158', '等级', 'Grade', '用以区分功能相同但质量要求不同的对象的类别或级别。', '');
INSERT INTO `t_concept_explain` VALUES ('159', '基本规则', 'Ground Rules', '对项目团队成员的可接受行为的预期。', '');
INSERT INTO `t_concept_explain` VALUES ('160', '直方图', 'Histogram', '一种展示数字数据的条形图。', '');
INSERT INTO `t_concept_explain` VALUES ('161', '历史信息', 'Historical Information', '以往项目的文件和数据，包括项目档案、记录、函件、完结的合同和结束的项目。', '');
INSERT INTO `t_concept_explain` VALUES ('162', '识别风险', 'Identify Risks', '识别单个风险，以及整体风险的来源，并记录风险特点的过程。', '');
INSERT INTO `t_concept_explain` VALUES ('163', '识别相关方', 'Identify Stakeholders', '定期识别项目相关方，分析和记录他们的利益、参与度、相互依赖性、影响力和对项目成功的潜在影响的过程。', '');
INSERT INTO `t_concept_explain` VALUES ('164', '实施风险应对', 'Implement Risk Responses', '执行商定的风险应对计划的过程。', '');
INSERT INTO `t_concept_explain` VALUES ('165', '强制日期', 'Imposed Date', '强加于进度活动或进度里程碑的固定日期，一般采取“不早于何时开始”和“不晚于何时结束”的形式。', '');
INSERT INTO `t_concept_explain` VALUES ('166', '激励费用', 'Incentive Fee', '与卖方的成本、进度或技术绩效相关联的财务激励。', '');
INSERT INTO `t_concept_explain` VALUES ('167', '增量型生命周期', 'Incremental Life Cycle', '一种适应型项目生命周期，它是通过在预定的时间区间内渐进增加产品功能的一系列迭代来产出可交付成果。只有在最后一次迭代之后，可交付成果具有了必要和足够的能力，才能被视为完整的。', '');
INSERT INTO `t_concept_explain` VALUES ('168', '独立估算', 'Independent Estimates', '使用第三方来获取和分析信息，以支持对成本、进度或其他事项的预测的过程。', '');
INSERT INTO `t_concept_explain` VALUES ('169', '影响图', 'Influence Diagram', '对变量与结果之间的因果关系、事件时间顺序及其他关系的图形表示。', '');
INSERT INTO `t_concept_explain` VALUES ('170', '信息', 'Information', '被组织或结构化的数据，并进一步为特定目的加以处理，使之在特定环境中具有意义和价值并且能够发挥作用。', '');
INSERT INTO `t_concept_explain` VALUES ('171', '信息管理系统', 'Information Management Systems', '用于在信息的生产者与消费者之间以实体或电子形式收集、存储和分发信息的设施、过程及程序。', '');
INSERT INTO `t_concept_explain` VALUES ('172', '启动过程组', 'Initiating Process Group', '定义一个新项目或现有项目的一个新阶段，授权开始该项目或阶段的一组过程。', '');
INSERT INTO `t_concept_explain` VALUES ('173', '输入', 'Input', '开始一个过程所必需的、来自项目内外的任何东西。可以是前一过程的输出。', '');
INSERT INTO `t_concept_explain` VALUES ('174', '检查', 'Inspection', '检查工作产品，以确定它是否符合书面标准。', '');
INSERT INTO `t_concept_explain` VALUES ('175', '人际关系与团队技能', 'Interpersonal and Team Skills', '用于有效地领导团队成员和其他相关方并与之进行互动的技能。', '');
INSERT INTO `t_concept_explain` VALUES ('176', '人际关系技能', 'Interpersonal Skills', '与他人建立并保持关系的技能。', '');
INSERT INTO `t_concept_explain` VALUES ('177', '访谈', 'Interviews', '通过与相关方直接交谈，来获取信息的正式或非正式方法。', '');
INSERT INTO `t_concept_explain` VALUES ('178', '投标邀请书', 'Invitation for Bid (IFB)', '通常，本术语等同于建议邀请书。不过，在某些应用领域，其含义可能更狭窄或更具体。', '');
INSERT INTO `t_concept_explain` VALUES ('179', '问题', 'Issue', '可能对项目目标产生影响的当前条件或情形。', '');
INSERT INTO `t_concept_explain` VALUES ('180', '问题日志', 'Issue Log', '记录和监督问题信息的项目文件。', '');
INSERT INTO `t_concept_explain` VALUES ('181', '迭代型生命周期', 'Iterative Life Cycle', '一种项目生命周期，项目范围通常于项目生命周期的早期确定，但时间及成本估算将随着项目团队对产品理解的不断深入而定期修改。迭代方法是通过一系列循环来开发产品，而增量方法是渐进地增加产品的功能。', '');
INSERT INTO `t_concept_explain` VALUES ('182', '知识', 'Knowledge', '为了发挥新的经历和信息的作用，而使用的经验、价值观和信念、情景信息、直觉和洞察力的组合。', '');
INSERT INTO `t_concept_explain` VALUES ('183', '滞后量', 'Lag', '相对于紧前活动，紧后活动需要推迟的时间量。', '');
INSERT INTO `t_concept_explain` VALUES ('184', '最晚完成日期', 'Late Finish Date (LF)', '在关键路径法中，基于进度网络逻辑、项目完成日期和进度制约因素，进度活动未完成部分可能的最晚完成时点。', '');
INSERT INTO `t_concept_explain` VALUES ('185', '最晚开始日期', 'Late Start Date (LS)', '在关键路径法中，基于进度网络逻辑、项目完成日期和进度制约因素，进度活动未完成部分可能的最晚开始时点。', '');
INSERT INTO `t_concept_explain` VALUES ('186', '提前量', 'Lead', '相对于紧前活动，紧后活动可以提前的时间量。', '');
INSERT INTO `t_concept_explain` VALUES ('187', '经验教训', 'Lessons Learned', '项目过程中获得的知识，说明曾怎样处理某个项目事件或今后应如何处理，以改进未来绩效。', '');
INSERT INTO `t_concept_explain` VALUES ('188', '经验教训登记册', 'Lessons Learned Register', '用于记录在项目中所获知识的项目文件，它用于当前项目，并列入经验教训知识库。', '');
INSERT INTO `t_concept_explain` VALUES ('189', '经验教训知识库', 'Lessons Learned Repository', '存储从项目中获得的以往经验教训的信息库。', '');
INSERT INTO `t_concept_explain` VALUES ('190', '支持型活动', 'Level of Effort (LOE)', '一种不产生明确的最终产品，而是按时间流逝来度量的活动。', '');
INSERT INTO `t_concept_explain` VALUES ('191', '生命周期', 'Life Cycle', '见“项目生命周期”。', '');
INSERT INTO `t_concept_explain` VALUES ('192', '日志', 'Log', '对过程或活动实施期间的某些特定事项进行记录、描述或说明的文件。前面常加修饰词，如问题、变更或假设等。', '');
INSERT INTO `t_concept_explain` VALUES ('193', '逻辑关系', 'Logical Relationship', '两个活动之间，或者一个活动与一个里程碑之间的依赖关系。', '');
INSERT INTO `t_concept_explain` VALUES ('194', '自制或外购分析', 'Make-or-Buy Analysis', '收集和整理有关产品需求的数据，对包括采购产品或内部制造产品在内的多个可选方案进行分析的过程。', '');
INSERT INTO `t_concept_explain` VALUES ('195', '自制或外购决策', 'Make-or-Buy Decisions', '关于从外部采购或由内部制造某产品的决策。', '');
INSERT INTO `t_concept_explain` VALUES ('196', '管理沟通', 'Manage Communications', '管理沟通是确保及时且恰当地收集、生成、发布、存储、检索、管理、监督和最终处置项目信息的过程。', '');
INSERT INTO `t_concept_explain` VALUES ('197', '管理储备', 'Management Reserve', '在绩效测量基准之外，留作管理控制之用的一部分项目预算或项目时间。专为项目范围内不可预见的工作而预留。', '');
INSERT INTO `t_concept_explain` VALUES ('198', '管理技能', 'Management Skills', '对个人或群体进行规划、组织、指导和控制，以实现特定目标的能力。', '');
INSERT INTO `t_concept_explain` VALUES ('199', '管理项目知识', 'Manage Project Knowledge', '使用现有知识并生成新知识，以实现项目目标，并且帮助组织学习的过程。', '');
INSERT INTO `t_concept_explain` VALUES ('200', '管理质量', 'Manage Quality', '把组织的质量政策用于项目，并将质量管理计划转化为可执行的质量活动的过程。', '');
INSERT INTO `t_concept_explain` VALUES ('201', '管理相关方参与', 'Manage Stakeholder Engagement', '与相关方进行沟通和协作，以满足其需求与期望，解决问题，并促进相关方合理参与项目活动的过程。', '');
INSERT INTO `t_concept_explain` VALUES ('202', '管理团队', 'Manage Team', '跟踪团队成员工作表现，提供反馈，解决问题并管理团队变更，以优化项目\r\n跟踪团队成员工作表现，提供反馈，解决问题并管理团队变更，以优化项目绩效的过程。', '');
INSERT INTO `t_concept_explain` VALUES ('203', '主进度计划', 'Master Schedule', '标明了主要可交付成果、主要工作分解结构组件和关键进度里程碑的概括性项目进度计划。参见“里程碑进度计划”。', '');
INSERT INTO `t_concept_explain` VALUES ('204', '矩阵图', 'Matrix Diagrams', '一种质量管理和控制工具，使用矩阵结构对数据进行分析。在行列交叉的位置展示因素、原因和目标之间的关系强弱。', '');
INSERT INTO `t_concept_explain` VALUES ('205', '矩阵型组织', 'Matrix Organization', '由项目经理与职能经理共同负责安排工作优先级和指挥项目人员的一种组织架构。', '');
INSERT INTO `t_concept_explain` VALUES ('206', '方法论', 'Methodology', '由专门的从业人员所采用的做法、技术、程序和规则所组成的体系。', '');
INSERT INTO `t_concept_explain` VALUES ('207', '里程碑', 'Milestone', '项目、项目集或项目组合中的重要时点或事件。', '');
INSERT INTO `t_concept_explain` VALUES ('208', '里程碑进度计划', 'Milestone Schedule', '用于显示里程碑的计划实现日期的一种进度计划类型。参见“主进度计划”。', '');
INSERT INTO `t_concept_explain` VALUES ('209', '思维导图', 'Mind-Mapping', '把从头脑风暴中获得的创意整合成一张图的技术，用以反映创意之间的共性与差异，激发新创意。', '');
INSERT INTO `t_concept_explain` VALUES ('210', '监督', 'Monitor', '收集项目绩效数据，计算绩效指标，并报告和发布绩效信息。', '');
INSERT INTO `t_concept_explain` VALUES ('211', '监控项目工作', 'Monitor and Control Project Work', '跟踪、审查和报告整体项目进展，以实现项目管理计划中确定的绩效目标的过程。', '');
INSERT INTO `t_concept_explain` VALUES ('212', '监督沟通', 'Monitor Communications', '确保满足项目及其相关方的信息需求的过程。', '');
INSERT INTO `t_concept_explain` VALUES ('213', '监控过程组', 'Monitoring and Controlling Process Group', '跟踪、审查和调整项目进展与绩效，识别必要的计划变更并启动相应变更的一组过程。', '');
INSERT INTO `t_concept_explain` VALUES ('214', '监督风险', 'Monitor Risks', '在整个项目期间，监督商定的风险应对计划的实施、跟踪已识别风险、识别和分析新风险，以及评估风险管理有效性的过程。', '');
INSERT INTO `t_concept_explain` VALUES ('215', '监督相关方参与', 'Monitor Stakeholder Engagement', '监督项目相关方关系，并通过修订参与策略和计划来引导相关方合理参与项目的过程。', '');
INSERT INTO `t_concept_explain` VALUES ('216', '蒙特卡洛模拟', 'Monte Carlo Simulation', '一种计算机模型分析技术，基于概率分布和概率分支进行许多次迭代，每次迭代都随机抽取输入数据。最终输出的是可能的项目结果的概率分布区间。', '');
INSERT INTO `t_concept_explain` VALUES ('217', '多标准决策分析', 'Multicriteria Decision Analysis', '该技术借助决策矩阵，用系统分析方法建立诸如风险水平、不确定性和价值收益等多种标准，从而对众多方案进行评估和排序。', '');
INSERT INTO `t_concept_explain` VALUES ('218', '网络', 'Network', '见“项目进度网络图”。', '');
INSERT INTO `t_concept_explain` VALUES ('219', '网络逻辑', 'Network Logic', '项目进度网络图中的所有活动依赖关系。', '');
INSERT INTO `t_concept_explain` VALUES ('220', '网络路径', 'Network Path', '在项目进度网络图中，通过逻辑关系连接起来的一系列进度活动的序列。', '');
INSERT INTO `t_concept_explain` VALUES ('221', '人际交往', 'Networking', '与同一组织和不同组织中的人员建立联系和关系。', '');
INSERT INTO `t_concept_explain` VALUES ('222', '节点', 'Node', '在进度网络图上连接依赖关系线的一个点。', '');
INSERT INTO `t_concept_explain` VALUES ('223', '名义小组技术', 'Nominal Group Technique', '用于促进头脑风暴的一种技术，通过投票排列最有用的创意，以便进一步开展头脑风暴或优先排序。', '');
INSERT INTO `t_concept_explain` VALUES ('224', '目标', 'Objective', '工作所指向的事物，要达到的战略地位，要达到的目的，要取得的成果，要生产的产品，或者准备提供的服务。', '');
INSERT INTO `t_concept_explain` VALUES ('225', '机会', 'Opportunity', '对项目的一个或多个目标产生正面影响的风险。', '');
INSERT INTO `t_concept_explain` VALUES ('226', '组织分解结构', 'Organizational Breakdown Structure (OBS)', '对项目组织的一种层级描述，展示了项目活动与执行这些活动的组织单元之间的关系。', '');
INSERT INTO `t_concept_explain` VALUES ('227', '组织学习法', 'Organizational Learning', '关于个人、群体和组织如何发展知识的方法。', '');
INSERT INTO `t_concept_explain` VALUES ('228', '组织过程资产', 'Organizational Process Assets', '执行组织所特有的并被其使用的计划、流程、政策、程序和知识库。', '');
INSERT INTO `t_concept_explain` VALUES ('229', '输出', 'Output', '某个过程所产生的产品、成果或服务。可能成为后续过程的输入。', '');
INSERT INTO `t_concept_explain` VALUES ('230', '整体项目风险', 'Overall Project Risk', '不确定性对项目整体的影响，它代表相关方面临的项目结果可能的正面和负面变异。这些影响源于包括单个风险在内的所有不确定性。', '');
INSERT INTO `t_concept_explain` VALUES ('231', '参数估算', 'Parametric Estimating', '基于历史数据和项目参数，使用某种算法来计算成本或持续时间的一种估算技术。', '');
INSERT INTO `t_concept_explain` VALUES ('232', '路径汇聚', 'Path Convergence', '表示一个进度活动拥有一个以上的紧前活动的一种关系。', '');
INSERT INTO `t_concept_explain` VALUES ('233', '路径分支', 'Path Divergence', '表示一个进度活动拥有一个以上的紧后活动的一种关系。', '');
INSERT INTO `t_concept_explain` VALUES ('234', '完成百分比', 'Percent Complete', '对某活动或工作分解结构组件的已完成工作量的百分比估算。', '');
INSERT INTO `t_concept_explain` VALUES ('235', '绩效测量基准', 'Performance Measurement Baseline (PMB)', '整合在一起的范围、进度和成本基准，用来与项目执行情况相比较，以管理、测量和控制项目绩效。', '');
INSERT INTO `t_concept_explain` VALUES ('236', '绩效审查', 'Performance Reviews', '对照基准，对项目正在开展的工作的实际绩效进行测量、比较和分析的一种技术。', '');
INSERT INTO `t_concept_explain` VALUES ('237', '实施整体变更控制', 'Perform Integrated Change Control', '审查所有变更请求，批准变更，管理对可交付成果、组织过程资产、项目文件和项目管理计划的变更，并对变更处理结果进行沟通的过程。', '');
INSERT INTO `t_concept_explain` VALUES ('238', '实施定性风险分析', 'Perform Qualitative Risk Analysis', '通过评估单个项目风险发生的概率和影响以及其他特征，对风险进行优先排序，从而为后续分析或行动提供基础的过程。', '');
INSERT INTO `t_concept_explain` VALUES ('239', '实施定量风险分析', 'Perform Quantitative Risk Analysis', '就已识别的单个项目风险和不确定性的其他来源对项目整体目标的综合影响进行定量分析的过程。', '');
INSERT INTO `t_concept_explain` VALUES ('240', '阶段', 'Phase', '见“项目阶段”。', '');
INSERT INTO `t_concept_explain` VALUES ('241', '阶段关口', 'Phase Gate', '为做出进入下个阶段、进行整改或结束项目或项目集的决定，而开展的阶段末审查。', '');
INSERT INTO `t_concept_explain` VALUES ('242', '规划沟通管理', 'Plan Communications Management', '基于每个相关方或小组的信息需求、可用的组织资产和项目需求，为项目沟通活动制定恰当的方法和计划的过程。', '');
INSERT INTO `t_concept_explain` VALUES ('243', '规划成本管理', 'Plan Cost Management', '确定如何估算、预算、管理、监督和控制项目成本的过程。', '');
INSERT INTO `t_concept_explain` VALUES ('244', '计划价值', 'Planned Value (PV)', '为计划工作分配的经批准的预算。', '');
INSERT INTO `t_concept_explain` VALUES ('245', '规划包', 'Planning Package', '工作内容已知但详细进度活动未知的，低于控制账户的工作分解结构组件。参见“控制账户”。', '');
INSERT INTO `t_concept_explain` VALUES ('246', '规划过程组', 'Planning Process Group', '明确项目范围，优化目标，为实现目标制定行动方案的一组过程。', '');
INSERT INTO `t_concept_explain` VALUES ('247', '规划采购管理', 'Plan Procurement Management', '记录项目采购决策，明确采购方法，识别潜在卖方的过程。', '');
INSERT INTO `t_concept_explain` VALUES ('248', '规划质量管理', 'Plan Quality Management', '识别项目及其可交付成果的质量要求和/或标准，并书面描述项目将如何证明符合质量要求的过程。', '');
INSERT INTO `t_concept_explain` VALUES ('249', '规划资源管理', 'Plan Resource Management', '定义如何估算、获取、管理和利用实物以及团队资源的过程。', '');
INSERT INTO `t_concept_explain` VALUES ('250', '规划风险管理', 'Plan Risk Management', '定义如何实施项目风险管理活动的过程。', '');
INSERT INTO `t_concept_explain` VALUES ('251', '规划风险应对', 'Plan Risk Responses', '为处理整体项目风险敞口，以及应对单个项目风险，而制定可选方案、选择应对策略并商定应对行动的过程。', '');
INSERT INTO `t_concept_explain` VALUES ('252', '规划进度管理', 'Plan Schedule Management', '为规划、编制、管理、执行和控制项目进度而制定政策、程序和文档的过程。', '');
INSERT INTO `t_concept_explain` VALUES ('253', '规划范围管理', 'Plan Scope Management', '为记录如何定义、确认和控制项目范围及产品范围，而创建范围管理计划的过程。', '');
INSERT INTO `t_concept_explain` VALUES ('254', '规划相关方参与', 'Plan Stakeholder Engagement', '根据相关方的需求、期望、利益和对项目的潜在影响，制定项目相关方参与项目的方法的过程。', '');
INSERT INTO `t_concept_explain` VALUES ('255', '相对多数原则', 'Plurality', '根据群体中相对多数人的意见做出决定，即便未能获得大多数人的同意。', '');
INSERT INTO `t_concept_explain` VALUES ('256', '政策', 'Policy', '组织所采用的一套结构化的行动模式，组织政策可以解释为一套治理组织行为的基本原则。', '');
INSERT INTO `t_concept_explain` VALUES ('257', '项目组合', 'Portfolio', '为实现战略目标而组合在一起管理的项目、项目集、子项目组合和运营工作。', '');
INSERT INTO `t_concept_explain` VALUES ('258', '项目组合管理', 'Portfolio Management', '为了实现战略目标而对一个或多个项目组合进行的集中管理。', '');
INSERT INTO `t_concept_explain` VALUES ('259', '实践', 'Practice', '有助于过程执行的某种特定类型的专业或管理活动，可能需要运用一种或多种技术及工具。', '');
INSERT INTO `t_concept_explain` VALUES ('260', '紧前关系绘图法', 'Precedence Diagramming Method (PDM)', '创建进度模型的一种技术，用节点表示活动，用一种或多种逻辑关系连接活动，以显示活动的实施顺序。', '');
INSERT INTO `t_concept_explain` VALUES ('261', '紧前关系', 'Precedence Relationship', '用于紧前关系绘图法中的逻辑依赖关系。', '');
INSERT INTO `t_concept_explain` VALUES ('262', '紧前活动', 'Predecessor Activity', '在进度计划的逻辑路径中，排在非开始活动前面的活动。', '');
INSERT INTO `t_concept_explain` VALUES ('263', '预测型生命周期', 'Predictive Life Cycle', '项目生命周期的一种类型，在生命周期的早期阶段确定项目范围以及所需时间和成本。', '');
INSERT INTO `t_concept_explain` VALUES ('264', '预防措施', 'Preventive Action', '为确保项目工作的未来绩效符合项目管理计划，而进行的有目的的活动。', '');
INSERT INTO `t_concept_explain` VALUES ('265', '概率和影响矩阵', 'Probability and Impact Matrix', '把每个风险发生的概率和一旦发生对项目目标的影响映射起来的一种表格。', '');
INSERT INTO `t_concept_explain` VALUES ('266', '程序', 'Procedure', '用于达成稳定绩效或结果的某种既定方法，通常表现为执行某个过程的一系列特定步骤。', '');
INSERT INTO `t_concept_explain` VALUES ('267', '过程', 'Process', '旨在创造最终结果的系统化的系列活动，以便对一个或多个输入进行加工，生成一个或多个输出。', '');
INSERT INTO `t_concept_explain` VALUES ('268', '采购审计', 'Procurement Audits', '对合同和采购过程的完整性、正确性和有效性进行的审查。', '');
INSERT INTO `t_concept_explain` VALUES ('269', '采购文件', 'Procurement Documents', '在招投标活动中使用的文件，包括买方的投标邀请书、谈判邀请书、信息邀请书、报价邀请书、建议邀请书，以及卖方的应答。', '');
INSERT INTO `t_concept_explain` VALUES ('270', '采购文档', 'Procurement Documentation', '在签署、执行及结束一份协议时所用到的所有文件。采购文档中可能包括项目启动之前的文件。', '');
INSERT INTO `t_concept_explain` VALUES ('271', '采购管理计划', 'Procurement Management Plan', '项目或项目集管理计划的组成部分，说明项目团队将如何从执行组织外部获取货物和服务。', '');
INSERT INTO `t_concept_explain` VALUES ('272', '采购工作说明书', 'Procurement Statement of Work', '对拟采购项的详细描述，以便潜在卖方确定他们是否有能力提供这些产品、服务或成果。', '');
INSERT INTO `t_concept_explain` VALUES ('273', '采购策略', 'Procurement Strategy', '为了获得期望的结果，买方用来确定项目交付方式，以及具有法律约束力的协议的类型的方法。', '');
INSERT INTO `t_concept_explain` VALUES ('274', '产品', 'Product', '可以计量的人工制品，既可以是最终制品，也可以是组件制品。也可以用 “材料”和 “货物”代指产品。参见“可交付成果”。', '');
INSERT INTO `t_concept_explain` VALUES ('275', '产品分析', 'Product Analysis', '在以产品为可交付成果的项目上，用来定义范围的一种工具。通常，针对产品提问并回答，形成对将要生产的产品的用途、特征和其他方面的描述。', '');
INSERT INTO `t_concept_explain` VALUES ('276', '产品生命周期', 'Product Life Cycle', '代表一个产品从概念、交付、成长、成熟到衰退的整个演变过程的一系列阶段。', '');
INSERT INTO `t_concept_explain` VALUES ('277', '产品范围', 'Product Scope', '某项产品、服务或成果所具有的特征和功能。', '');
INSERT INTO `t_concept_explain` VALUES ('278', '产品范围描述', 'Product Scope Description', '对产品范围的书面叙述性描述。', '');
INSERT INTO `t_concept_explain` VALUES ('279', '项目集', 'Program', '相互关联且被协调管理的项目、子项目集和项目集活动，以便获得分别管理所无法获得的利益。', '');
INSERT INTO `t_concept_explain` VALUES ('280', '项目集管理', 'Program Management', '在项目集中应用知识、技能与原则来实现项目集的目标，获得分别管理项目集组成部分所无法实现的利益和控制。', '');
INSERT INTO `t_concept_explain` VALUES ('281', '渐进明细', 'Progressive Elaboration', '随着信息越来越多、估算越来越准确，而不断提高项目管理计划的详细程度的迭代过程。', '');
INSERT INTO `t_concept_explain` VALUES ('282', '项目', 'Project', '为创造独特的产品、服务或成果而进行的临时性工作。', '');
INSERT INTO `t_concept_explain` VALUES ('283', '项目日历', 'Project Calendar', '表明进度活动的可用工作日和工作班次的日历。', '');
INSERT INTO `t_concept_explain` VALUES ('284', '项目章程', 'Project Charter', '由项目启动者或发起人发布的，正式批准项目成立，并授权项目经理使用组织资源开展项目活动的文件。', '');
INSERT INTO `t_concept_explain` VALUES ('285', '项目沟通管理', 'Project Communications Management', '项目沟通管理包括为确保及时且恰当地规划、收集、生成、发布、存储、检索、管理、控制、监督和最终处置项目信息所需的各个过程。', '');
INSERT INTO `t_concept_explain` VALUES ('286', '项目成本管理', 'Project Cost Management', '项目成本管理包括为使项目在批准的预算内完成而对成本进行规划、估算、预算、融资、筹资、管理和控制的各个过程。', '');
INSERT INTO `t_concept_explain` VALUES ('287', '项目资金需求', 'Project Funding Requirements', '根据成本基准计算出的待付成本预测，可以是总量或阶段资金需求，包括预计支出加预计债务。', '');
INSERT INTO `t_concept_explain` VALUES ('288', '项目治理', 'Project Governance', '用于指导项目管理活动的框架、功能和过程，从而创造独特的产品、服务或结果以满足组织、战略和运营目标。', '');
INSERT INTO `t_concept_explain` VALUES ('289', '项目启动', 'Project Initiation', '发起一个用来正式授权新项目的过程。', '');
INSERT INTO `t_concept_explain` VALUES ('290', '项目整合管理', 'Project Integration Management', '项目整合管理包括对隶属于项目管理过程组的各种过程和项目管理活动进行识别、定义、组合、统一和协调的各个过程。', '');
INSERT INTO `t_concept_explain` VALUES ('291', '项目生命周期', 'Project Life Cycle', '项目从开始到结束所经历的一系列阶段。', '');
INSERT INTO `t_concept_explain` VALUES ('292', '项目管理', 'Project Management', '将知识、技能、工具与技术应用于项目活动，以满足项目的要求。', '');
INSERT INTO `t_concept_explain` VALUES ('293', '项目管理知识体系', 'Project Management Body of Knowledge', '描述项目管理专业范围内的知识的术语。项目管理知识体系包括已被验证并广泛应用的传统做法，以及本专业新近涌现的创新做法。', '');
INSERT INTO `t_concept_explain` VALUES ('294', '项目管理信息系统', 'Project Management Information System', '由收集、整合和传播项目管理过程成果的工具和技术所组成的信息系统。', '');
INSERT INTO `t_concept_explain` VALUES ('295', '项目管理知识领域', 'Project Management Knowledge Area', '按所需知识内容来定义的项目管理领域，并用其所含过程、做法、输入、输出、工具和技术进行描述。', '');
INSERT INTO `t_concept_explain` VALUES ('296', '项目管理办公室', 'Project Management Office (PMO)', '对与项目相关的治理过程进行标准化，并促进资源、方法论、工具和技术共享的一种管理架构。', '');
INSERT INTO `t_concept_explain` VALUES ('297', '项目管理计划', 'Project Management Plan', '描述如何执行、监督、控制和结束项目的文件。', '');
INSERT INTO `t_concept_explain` VALUES ('298', '项目管理过程组', 'Project Management Process Group', '项目管理输入、工具和技术以及输出的逻辑组合。项目管理过程组包括启动过程组、规划过程组、执行过程组、监控过程组和收尾过程组。项目管理过程组不同于项目阶段。', '');
INSERT INTO `t_concept_explain` VALUES ('299', '项目管理系统', 'Project Management System', '用于管理项目的各种过程、工具、技术、方法、资源和程序的集合。', '');
INSERT INTO `t_concept_explain` VALUES ('300', '项目管理团队', 'Project Management Team', '直接参与项目管理活动的项目团队成员。参见“项目团队”。', '');
INSERT INTO `t_concept_explain` VALUES ('301', '项目经理', 'Project Manager (PM)', '由执行组织委派，领导团队实现项目目标的个人。', '');
INSERT INTO `t_concept_explain` VALUES ('302', '项目组织图', 'Project Organization Chart', '以图形方式描述一个具体项目中项目团队成员及其相互关系的文件。', '');
INSERT INTO `t_concept_explain` VALUES ('303', '项目阶段', 'Project Phase', '一组具有逻辑关系的项目活动的集合，通常以一个或多个可交付成果的完成为结束。', '');
INSERT INTO `t_concept_explain` VALUES ('304', '项目采购管理', 'Project Procurement Management', '项目采购管理包括从项目团队外部采购或获取所需产品、服务或成果的各个过程。', '');
INSERT INTO `t_concept_explain` VALUES ('305', '项目质量管理', 'Project Quality Management', '项目质量管理包括把组织的质量政策应用于规划、管理、控制项目和产品质量要求，以满足相关方的期望的各个过程。', '');
INSERT INTO `t_concept_explain` VALUES ('306', '项目资源管理', 'Project Resource Management', '项目资源管理包括识别、获取和管理所需资源以成功完成项目的各个过程。', '');
INSERT INTO `t_concept_explain` VALUES ('307', '项目风险管理', 'Project Risk Management', '项目风险管理包括规划风险管理、识别风险、开展风险分析、规划风险应对、实施风险应对和监督风险的各个过程。', '');
INSERT INTO `t_concept_explain` VALUES ('308', '项目进度计划', 'Project Schedule', '进度模型的输出，为各个相互关联的活动标注了计划日期、持续时间、里程碑和资源等信息。', '');
INSERT INTO `t_concept_explain` VALUES ('309', '项目进度管理', 'Project Schedule Management', '项目进度管理包括为管理项目按时完成所需的各个过程。', '');
INSERT INTO `t_concept_explain` VALUES ('310', '项目进度网络图', 'Project Schedule Network Diagram', '表示项目进度活动之间逻辑关系的图形。', '');
INSERT INTO `t_concept_explain` VALUES ('311', '项目范围', 'Project Scope', '为交付具有规定特性与功能的产品、服务或成果而必须完成的工作。', '');
INSERT INTO `t_concept_explain` VALUES ('312', '项目范围管理', 'Project Scope Management', '项目范围管理包括确保项目做且只做所需的全部工作以成功完成项目的各个过程。', '');
INSERT INTO `t_concept_explain` VALUES ('313', '项目范围说明书', 'Project Scope Statement', '对项目范围、主要可交付成果、假设条件和制约因素的描述。', '');
INSERT INTO `t_concept_explain` VALUES ('314', '项目相关方管理', 'Project Stakeholder Management', '项目相关方管理包括用于开展下列工作的各个过程：识别能够影响项目或会受项目影响的人员、团体或组织，分析相关方对项目的期望和影响，制定合适的管理策略来有效调动相关方参与项目决策和执行。', '');
INSERT INTO `t_concept_explain` VALUES ('315', '项目团队', 'Project Team', '支持项目经理执行项目工作，以实现项目目标的一组人员。参见“项目管理团队”。', '');
INSERT INTO `t_concept_explain` VALUES ('316', '项目团队名录', 'Project Team Directory', '列明项目团队成员及其项目角色和相关沟通信息的书面清单。', '');
INSERT INTO `t_concept_explain` VALUES ('317', '建议书评价技术', 'Proposal Evaluation Techniques', '为做出合同授予决定而用于评审供应商提交的建议书的各种技术。', '');
INSERT INTO `t_concept_explain` VALUES ('318', '原型法', 'Prototypes', '在实际制造预期产品之前，先造出其实用模型，并据此征求对需求的早期反馈的一种方法。', '');
INSERT INTO `t_concept_explain` VALUES ('319', '质量', 'Quality', '一系列内在特性满足要求的程度。', '');
INSERT INTO `t_concept_explain` VALUES ('320', '质量审计', 'Quality Audits', '质量审计是用于确定项目活动是否遵循了组织和项目的政策、过程与程序的一种结构化且独立的过程。', '');
INSERT INTO `t_concept_explain` VALUES ('321', '质量核对单', 'Quality Checklists', '用来核实所要求的一系列步骤是否已得到执行的结构化工具。', '');
INSERT INTO `t_concept_explain` VALUES ('322', '质量控制测量结果', 'Quality Control Measurements', '对质量控制活动的结果的书面记录。', '');
INSERT INTO `t_concept_explain` VALUES ('323', '质量管理计划', 'Quality Management Plan', '项目或项目集管理计划的组成部分，描述如何实施适用的政策、程序和指南以实现质量目标。', '');
INSERT INTO `t_concept_explain` VALUES ('324', '质量管理体系', 'Quality Management System', '为质量管理计划的实施提供政策、过程、程序和资源的组织架构。典型的项目质量管理计划应该与组织的质量管理体系相兼容。', '');
INSERT INTO `t_concept_explain` VALUES ('325', '质量测量指标', 'Quality Metrics', '对项目或产品属性及其测量方式的描述。', '');
INSERT INTO `t_concept_explain` VALUES ('326', '质量政策', 'Quality Policy', '项目质量管理知识领域中的专有政策，是组织在实施质量管理体系时必须遵守的基本原则。', '');
INSERT INTO `t_concept_explain` VALUES ('327', '质量报告', 'Quality Report', '用于报告质量管理问题、纠正措施建议以及在质量控制活动中所发现的其他情况的一种项目文件，其中也可以包括对过程、项目和产品改进的建议。', '');
INSERT INTO `t_concept_explain` VALUES ('328', '质量要求', 'Quality Requirement', '必须达到的条件或具备的能力，借此验证成果属性的可接受性和评估成果的质量一致性。', '');
INSERT INTO `t_concept_explain` VALUES ('329', '问卷调查', 'Questionnaires', '设计一系列书面问题，向众多受访者快速收集信息。', '');
INSERT INTO `t_concept_explain` VALUES ('330', 'RACI 矩阵', 'RACI Chart', '责任分配矩阵的一种常见类型，使用执行、负责、咨询和知情等词语来定义相关方在项目活动中的参与状态。', '');
INSERT INTO `t_concept_explain` VALUES ('331', '回归分析', 'Regression Analysis', '通过考察一系列输入变量及其对应的输出结果，建立数学或统计关系的一种分析技术。', '');
INSERT INTO `t_concept_explain` VALUES ('332', '法规', 'Regulations', '政府机构对产品、过程或服务的特征的要求，包括政府强制遵守的相关管理规定。', '');
INSERT INTO `t_concept_explain` VALUES ('333', '信息邀请书', 'Request for Information (RFI)', '采购文件的一种，买方借此邀请潜在卖方就某种产品、服务或卖方能力提供相关信息。', '');
INSERT INTO `t_concept_explain` VALUES ('334', '建议邀请书', 'Request for Proposal (RFP)', '采购文件的一种，用来向潜在卖方征求对产品或服务的建议书。在某些应用领域，其含义可能更狭窄或更具体。', '');
INSERT INTO `t_concept_explain` VALUES ('335', '报价邀请书', 'Request for Quotation (RFQ)', '采购文件的一种，用来向潜在卖方征求对通用或标准产品或服务的报价。有时可用来代替建议邀请书。在某些应用领域，其含义可能更狭窄或更具体。', '');
INSERT INTO `t_concept_explain` VALUES ('336', '需求（要求）', 'Requirement', '为满足业务需求，某个产品、服务或成果必须达到的条件或具备的能力。', '');
INSERT INTO `t_concept_explain` VALUES ('337', '需求文件', 'Requirements Documentation', '关于各种单一需求将如何满足项目商业需求的描述。', '');
INSERT INTO `t_concept_explain` VALUES ('338', '需求管理计划', 'Requirements Management Plan', '项目或项目集管理计划的组成部分，描述将如何分析、记录和管理需求。', '');
INSERT INTO `t_concept_explain` VALUES ('339', '需求跟踪矩阵', 'Requirements Traceability Matrix', '把产品需求从其来源连接到能满足需求的可交付成果的一种表格。', '');
INSERT INTO `t_concept_explain` VALUES ('340', '储备', 'Reserve', '为减轻成本和/或进度风险，而在项目管理计划中所设的一种准备。使用时常加修饰词（如管理储备、应急储备），以进一步说明其用于减轻何种风险。', '');
INSERT INTO `t_concept_explain` VALUES ('341', '储备分析', 'Reserve Analysis', '一种分析技术，用来明确项目管理计划各组成部分的基本特征及其相互关系，从而为项目的工期、预算、成本估算或资金需求设定储备。', '');
INSERT INTO `t_concept_explain` VALUES ('342', '残余风险', 'Residual Risk', '采取风险应对措施之后仍然存在的风险。', '');
INSERT INTO `t_concept_explain` VALUES ('343', '资源', 'Resource', '完成项目所需的团队成员或任何实物。', '');
INSERT INTO `t_concept_explain` VALUES ('344', '资源分解结构', 'Resource Breakdown Structure', '资源依类别和类型的层级展现。', '');
INSERT INTO `t_concept_explain` VALUES ('345', '资源日历', 'Resource Calendar', '表明每种具体资源的可用工作日或工作班次的日历。', '');
INSERT INTO `t_concept_explain` VALUES ('346', '资源直方图', 'Resource Histogram', '按一系列时间段显示某种资源的计划工作时间的条形图。', '');
INSERT INTO `t_concept_explain` VALUES ('347', '资源平衡', 'Resource Leveling', '一种资源优化技术，对项目进度计划进行调整以优化资源分配，并可能会影响关键路径。参见“资源优化技术”和“资源平滑”。', '');
INSERT INTO `t_concept_explain` VALUES ('348', '资源管理计划', 'Resource Management Plan', '项目管理计划的一个组成部分，描述如何获取、分配、监督和控制项目资源。', '');
INSERT INTO `t_concept_explain` VALUES ('349', '资源经理', 'Resource Manager', '具有管理一项或多项资源权限的个人。', '');
INSERT INTO `t_concept_explain` VALUES ('350', '资源优化技术', 'Resource Optimization Technique', '根据资源的供求情况来调整活动开始和完成日期的一种技术。参见“资源平衡”和“资源平滑”。', '');
INSERT INTO `t_concept_explain` VALUES ('351', '资源需求', 'Resource Requirements', '工作包中的每个活动所需的资源类型和数量。', '');
INSERT INTO `t_concept_explain` VALUES ('352', '资源平滑', 'Resource Smoothing', '一种资源优化技术，在不影响关键路径的情况下使用自由浮动时间和总浮动时间。参见“资源平衡”和“资源优化技术”。', '');
INSERT INTO `t_concept_explain` VALUES ('353', '职责', 'Responsibility', '可在项目管理计划中进行委派的任务，接受委派的资源负有按要求完成任务的义务。', '');
INSERT INTO `t_concept_explain` VALUES ('354', '责任分配矩阵', 'Responsibility Assignment Matrix (RAM)', '一种展示项目资源在各个工作包中的任务分配的表格。', '');
INSERT INTO `t_concept_explain` VALUES ('355', '成果', 'Result', '实施项目管理过程和活动所产生的输出。成果包括结果（如整合的系统、修订后的过程、重组后的组织、完成的测试、经培训的人员等）和文件（如政策、计划、研究报告、程序、规范、报告等）。参见“可交付成果”。', '');
INSERT INTO `t_concept_explain` VALUES ('356', '返工', 'Rework', '为了使有缺陷或非一致的部件达到要求或符合规范而采取的行动。', '');
INSERT INTO `t_concept_explain` VALUES ('357', '风险', 'Risk', '一旦发生，会对一个或多个项目目标产生积极或消极影响的不确定事件或条件。', '');
INSERT INTO `t_concept_explain` VALUES ('358', '风险接受', 'Risk Acceptance', '一种风险应对策略，项目团队决定接受风险的存在，而不采取任何措施，除非风险真的发生。', '');
INSERT INTO `t_concept_explain` VALUES ('359', '风险偏好', 'Risk Appetite', '为了预期的回报，组织或个人愿意承担不确定性的程度。', '');
INSERT INTO `t_concept_explain` VALUES ('360', '风险审计', 'Risk Audit', '一种用于评价风险管理过程有效性的审计。', '');
INSERT INTO `t_concept_explain` VALUES ('361', '风险规避', 'Risk Avoidance', '一种风险应对策略，项目团队采取行动来消除威胁，或保护项目免受风险影响。', '');
INSERT INTO `t_concept_explain` VALUES ('362', '风险分解结构', 'Risk Breakdown Structure (RBS)', '对潜在风险来源的一种层级图示。', '');
INSERT INTO `t_concept_explain` VALUES ('363', '风险分类', 'Risk Categorization', '按照风险来源（如使用风险分解结构）、受影响的项目区域（如使用工作分解结构），或其他有用的分类标准（如项目阶段），对项目风险进行分类，以明确受不确定性影响最大的项目区域。', '');
INSERT INTO `t_concept_explain` VALUES ('364', '风险类别', 'Risk Category', '对潜在风险成因的归组。', '');
INSERT INTO `t_concept_explain` VALUES ('365', '风险数据质量评估', 'Risk Data Quality Assessment', '评估风险数据对风险管理的有用程度的一种技术。', '');
INSERT INTO `t_concept_explain` VALUES ('366', '风险提高', 'Risk Enhancement', '一种风险应对策略，项目团队采取行动提升机会出现的概率或扩大机会造成的影响。', '');
INSERT INTO `t_concept_explain` VALUES ('367', '风险上报', 'Risk Escalation', '一种风险应对策略，即团队认为风险超出了自身可影响的范围，并将风险责任转移到组织中能更有效管理风险的更高层。', '');
INSERT INTO `t_concept_explain` VALUES ('368', '风险开拓', 'Risk Exploiting', '一种风险应对策略，项目团队采取行动以确保机会出现。', '');
INSERT INTO `t_concept_explain` VALUES ('369', '风险敞口', 'Risk Exposure', '在某个项目、项目集或项目组合中，针对任一特定对象，而适时作出的对所有风险的潜在影响的综合评估。', '');
INSERT INTO `t_concept_explain` VALUES ('370', '风险管理计划', 'Risk Management Plan', '项目、项目集或项目组合管理计划的组成部分，说明将如何安排与实施风险管理活动。', '');
INSERT INTO `t_concept_explain` VALUES ('371', '风险减轻', 'Risk Mitigation', '一种风险应对策略，项目团队采取行动以降低威胁发生的概率或削弱威胁造成的影响。', '');
INSERT INTO `t_concept_explain` VALUES ('372', '风险责任人', 'Risk Owner', '负责监测风险，选择并实施恰当的风险应对策略的个人。', '');
INSERT INTO `t_concept_explain` VALUES ('373', '风险登记册', 'Risk Register', '记录风险管理过程输出的文件。', '');
INSERT INTO `t_concept_explain` VALUES ('374', '风险报告', 'Risk Report', '在整个项目风险管理过程中不断更新的项目文件，用以概述单个项目风险的情况和整体项目风险的程度。', '');
INSERT INTO `t_concept_explain` VALUES ('375', '风险审查', 'Risk Review', '检查和记录应对整体项目风险和已识别单个项目风险的有效性的会议。', '');
INSERT INTO `t_concept_explain` VALUES ('376', '风险分享', 'Risk Sharing', '一种风险应对策略，项目团队将应对机会的责任分配给最能为项目获得利益的第三方。', '');
INSERT INTO `t_concept_explain` VALUES ('377', '风险临界值', 'Risk Threshold', '某种特定的风险敞口级别，高于该级别的风险需要处理，低于该级别的风险则可接受。', '');
INSERT INTO `t_concept_explain` VALUES ('378', '风险转移', 'Risk Transference', '一种风险应对策略，项目团队把威胁造成的影响连同应对责任一起转移给第三方。', '');
INSERT INTO `t_concept_explain` VALUES ('379', '角色', 'Role', '项目团队成员必须履行的、已明确定义的职责，如测试、归档、检查、编码等。', '');
INSERT INTO `t_concept_explain` VALUES ('380', '滚动式规划', 'Rolling Wave Planning', '一种迭代式的规划技术，对近期要完成的工作进行详细规划，对远期工作只做粗略规划。', '');
INSERT INTO `t_concept_explain` VALUES ('381', '根本原因分析', 'Root Cause Analysis', '确定引起偏差、缺陷或风险的根本原因的一种分析技术。一项根本原因可能引起多项偏差、缺陷或风险。', '');
INSERT INTO `t_concept_explain` VALUES ('382', '进度计划', 'Schedule', '参见“项目进度”和“进度模型”。', '');
INSERT INTO `t_concept_explain` VALUES ('383', '进度基准', 'Schedule Baseline', '经过批准的进度模型，能够通过正式的变更控制程序进行变更，并被用作与实际结果进行比较的依据。', '');
INSERT INTO `t_concept_explain` VALUES ('384', '进度压缩', 'Schedule Compression', '在不缩小项目范围的前提下缩短进度工期的技术。', '');
INSERT INTO `t_concept_explain` VALUES ('385', '进度数据', 'Schedule Data', '用以描述和控制进度计划的信息集合。', '');
INSERT INTO `t_concept_explain` VALUES ('386', '进度预测', 'Schedule Forecasts', '根据测算进度时已有的信息和知识，对项目未来的情况和事件所进行的估算或预计。', '');
INSERT INTO `t_concept_explain` VALUES ('387', '进度管理计划', 'Schedule Management Plan', '项目或项目集管理计划的组成部分，为编制、监督和控制项目进度建立准则并确定活动。', '');
INSERT INTO `t_concept_explain` VALUES ('388', '进度模型', 'Schedule Model', '项目活动执行计划的一种表现形式，其中包含持续时间、依赖关系和其他规划信息，用以生成项目进度计划及其他进度资料。', '');
INSERT INTO `t_concept_explain` VALUES ('389', '进度网络分析', 'Schedule Network Analysis', '识别项目活动未完部分的最早和最晚开始日期，以及最早和最晚完成日期的一种技术。', '');
INSERT INTO `t_concept_explain` VALUES ('390', '进度绩效指数', 'Schedule Performance Index (SPI)', '测量进度效率的一种指标，表示为挣值与计划价值之比。', '');
INSERT INTO `t_concept_explain` VALUES ('391', '进度偏差', 'Schedule Variance (SV)', '测量进度绩效的一种指标，表示为挣值与计划价值之差。', '');
INSERT INTO `t_concept_explain` VALUES ('392', '进度计划编制工具', 'Scheduling Tool', '配合进度计划编制方法使用的工具，可提供进度计划组成部分的名称、定义、结构关系和格式。', '');
INSERT INTO `t_concept_explain` VALUES ('393', '范围', 'Scope', '项目所提供的产品、服务和成果的总和。参见“项目范围”和“产品范围”。', '');
INSERT INTO `t_concept_explain` VALUES ('394', '范围基准', 'Scope Baseline', '经过批准的范围说明书、工作分解结构（WBS）和相应的 WBS 词典，能够通过正式的变更控制程序进行变更，并被用作与实际结果进行比较的依据。', '');
INSERT INTO `t_concept_explain` VALUES ('395', '范围蔓延', 'Scope Creep', '未对时间、成本和资源做相应调整，未经控制的产品或项目范围的扩大。', '');
INSERT INTO `t_concept_explain` VALUES ('396', '范围管理计划', 'Scope Management Plan', '项目或项目集管理计划的组成部分，描述将如何定义、制定、监督、控制和确认项目范围。', '');
INSERT INTO `t_concept_explain` VALUES ('397', '次生风险', 'Secondary Risk', '由于实施风险应对措施而直接产生的风险。', '');
INSERT INTO `t_concept_explain` VALUES ('398', '自组织团队', 'Self-Organizing Teams', '团队运作无需集中管控的一种团队形式。', '');
INSERT INTO `t_concept_explain` VALUES ('399', '卖方', 'Seller', '向某个组织提供产品、服务或成果的供应商。', '');
INSERT INTO `t_concept_explain` VALUES ('400', '卖方建议书', 'Seller Proposals', '卖方对建议邀请书或其他采购文件的正式应答，规定了价格、商务销售条款，以及技术规范或卖方将为买方建成的能力，一旦被接受，将形成有约束力的协议。', '');
INSERT INTO `t_concept_explain` VALUES ('401', '敏感性分析', 'Sensitivity Analysis', '一种定量风险分析技术，将项目结果的变化与定量风险分析模型中输入的的变化建立关联，从而确定对项目结果产生最大潜在影响的单个项目风险或其他不确定性来源。', '');
INSERT INTO `t_concept_explain` VALUES ('402', '排列活动顺序', 'Sequence Activities', '识别和记录项目活动之间的关系的过程。', '');
INSERT INTO `t_concept_explain` VALUES ('403', '服务水平协议(SLA) ', 'Service Level Agreement (SLA)', '服务商（内部或外部）与最终用户之间的合同，用以规定服务商应该达到的服务水准。', '');
INSERT INTO `t_concept_explain` VALUES ('404', '模拟', 'Simulation', '一种分析技术，通过建立模型，来综合分析各种不确定性因素，评估这些因素对目标的，潜在影响。', '');
INSERT INTO `t_concept_explain` VALUES ('405', '供方选择标准', 'Source Selection Criteria', '买方提出的一套标准，卖方只有满足或超过这些标准，才有可能被授予合同。', '');
INSERT INTO `t_concept_explain` VALUES ('406', '规范（规格）', 'Specification', '对需要满足的需求和所需基本特征的准确表述。', '');
INSERT INTO `t_concept_explain` VALUES ('407', '规格界限', 'Specification Limits', '控制图中心线或均值两侧的数据区域，该区域内的数据都满足客户对产品或服务的要求。该区域可能大于或小于控制界限所界定的范围。参见“控制界限”。', '');
INSERT INTO `t_concept_explain` VALUES ('408', '发起人', 'Sponsor', '为项目、项目集或项目组合提供资源和支持，并负责为成功创造条件的个人或团体。', '');
INSERT INTO `t_concept_explain` VALUES ('409', '发起组织', 'Sponsoring Organization', '负责提供项目发起人并为项目输送资金或其他资源的实体。', '');
INSERT INTO `t_concept_explain` VALUES ('410', '相关方', 'Stakeholder', '能影响项目、项目集或项目组合的决策、活动或结果的个人、小组或组织，以及会受或自认为会受它们的决策、活动或结果影响的个人、小组或组织。', '');
INSERT INTO `t_concept_explain` VALUES ('411', '相关方分析', 'Stakeholder Analysis', '通过系统收集和分析各种定量与定性信息，来确定在整个项目中应该考虑哪些人的利益的一种技术。', '');
INSERT INTO `t_concept_explain` VALUES ('412', '相关方参与度评估矩阵', 'Stakeholder Engagement Assessment Matrix', '将当前与期望的相关方参与程度进行比较的一种矩阵。', '');
INSERT INTO `t_concept_explain` VALUES ('413', '相关方参与计划', 'Stakeholder Engagement Plan', '项目管理计划的一个组成部分，为促进相关方有效参与项目或项目集决策和执行而规定所需的策略和行动。', '');
INSERT INTO `t_concept_explain` VALUES ('414', '相关方登记册', 'Stakeholder Register', '记录项目相关方识别、评估和分类结果的项目文件。', '');
INSERT INTO `t_concept_explain` VALUES ('415', '标准', 'Standard', '基于职权、惯例或共识而建立并用作模型或范例的文件。', '');
INSERT INTO `t_concept_explain` VALUES ('416', '开始日期', 'Start Date', '与进度活动的开始相关联的时间点。通常带下列修饰词：实际、计划、估计、预计、最早、最晚、目标、基准或当前。', '');
INSERT INTO `t_concept_explain` VALUES ('417', '开始到完成', 'Start-to-Finish (SF)', '只有紧前活动开始，紧后活动才能完成的逻辑关系。', '');
INSERT INTO `t_concept_explain` VALUES ('418', '开始到开始', 'Start-to-Start (SS)', '只有紧前活动开始，紧后活动才能开始的逻辑关系。', '');
INSERT INTO `t_concept_explain` VALUES ('419', '工作说明书', 'Statement of Work (SOW)', '对项目需交付的产品、服务或成果的叙述性说明。', '');
INSERT INTO `t_concept_explain` VALUES ('420', '统计抽样', 'Statistical Sampling', '从目标总体中选取部分样本用于检查。', '');
INSERT INTO `t_concept_explain` VALUES ('421', '紧后活动', 'Successor Activity', '在进度计划的逻辑路径中，排在某个活动后面的活动。', '');
INSERT INTO `t_concept_explain` VALUES ('422', '概括性活动', 'Summary Activity', '作为单个活动来展示的，一组相关的进度活动的集合。', '');
INSERT INTO `t_concept_explain` VALUES ('423', 'SWOT 分析', 'SWOT Analysis', '对一个组织、项目或备选方案的优势、劣势、机会和威胁的分析。', '');
INSERT INTO `t_concept_explain` VALUES ('424', '隐性知识', 'Tacit Knowledge', '难以明确表达和分享的个人知识，如信念、经验和洞察力。', '');
INSERT INTO `t_concept_explain` VALUES ('425', '裁剪', 'Tailoring', '确定过程、输入、工具、技术、输出和生命周期阶段的恰当组合以管理项目。', '');
INSERT INTO `t_concept_explain` VALUES ('426', '团队章程', 'Team Charter', '记录团队价值观、共识和工作指南的文件，并对项目团队成员的可接受行为作出明确规定。', '');
INSERT INTO `t_concept_explain` VALUES ('427', '团队管理计划', 'Team Management Plan', '资源管理计划的组成部分，说明将在何时、以何种方式获得项目团队成员，以及他们需要在项目中工作多久。', '');
INSERT INTO `t_concept_explain` VALUES ('428', '技术', 'Technique', '人们在执行活动以生产产品、取得成果或提供服务的过程中所使用的经过定义的系统化程序，其中可能用到一种或多种工具。', '');
INSERT INTO `t_concept_explain` VALUES ('429', '模板', 'Templates', '一种固定格式的、已部分完成的文件，为收集、组织和呈现信息与数据提供明确的结构。', '');
INSERT INTO `t_concept_explain` VALUES ('430', '测试与评估文件', 'Test and Evaluation Documents', '描述用于确定产品是否达到质量管理计划中规定的质量目标的各种活动的项目文件。', '');
INSERT INTO `t_concept_explain` VALUES ('431', '威胁', 'Threat', '对项目的一个或多个目标产生负面影响的风险。', '');
INSERT INTO `t_concept_explain` VALUES ('432', '三点估算', 'Three-Point Estimating', '一种估算技术。当单个活动的成本或持续时间估算不易确定时，取其乐观估算、悲观估算和最可能估算的平均值或加权平均值。', '');
INSERT INTO `t_concept_explain` VALUES ('433', '临界值', 'Threshold', '针对可测量的项目变量而预先确定的一个限值，一旦达到此限值就需要采取相应行动。', '');
INSERT INTO `t_concept_explain` VALUES ('434', '工料合同(T&M) ', 'Time and Material Contract (T&M)', '兼具成本补偿和总价合同特征的一种混合的合同类型。', '');
INSERT INTO `t_concept_explain` VALUES ('435', '完工尚需绩效指数', 'To-Complete Performance Index (TCPI)', '为了实现特定的管理目标，剩余资源的使用必须达到的成本绩效指标，是完成剩余工作所需成本与剩余预算之比。', '');
INSERT INTO `t_concept_explain` VALUES ('436', '公差', 'Tolerance', '对质量要求可接受的变动范围的定量描述。', '');
INSERT INTO `t_concept_explain` VALUES ('437', '工具', 'Tool', '在创造产品或成果的活动中所使用的某种有形的东西，如模板或软件。', '');
INSERT INTO `t_concept_explain` VALUES ('438', '龙卷风图', 'Tornado Diagram', '在敏感性分析中用来比较不同变量的相对重要性的一种特殊形式的条形图。', '');
INSERT INTO `t_concept_explain` VALUES ('439', '总浮动时间', 'Total Float', '在不延误项目完成日期或违反进度制约因素的前提下，进度活动可以从其最早开始日期推迟或拖延的时间量。', '');
INSERT INTO `t_concept_explain` VALUES ('440', '趋势分析', 'Trend Analysis', '根据历史数据并利用数学模型，预测未来结果的一种分析技术。', '');
INSERT INTO `t_concept_explain` VALUES ('441', '触发条件', 'Trigger Condition', '表明风险即将发生的事件或情形。', '');
INSERT INTO `t_concept_explain` VALUES ('442', '一致同意', 'Unanimity', '对某个行动方案，小组中的每个人都表示同意。', '');
INSERT INTO `t_concept_explain` VALUES ('443', '更新', 'Update', '无需正式变更控制的，对任何可交付成果、项目管理计划组成部分或项目文件所作的修改。', '');
INSERT INTO `t_concept_explain` VALUES ('444', '确认范围', 'Validate Scope', '正式验收已完成的项目可交付成果的过程。', '');
INSERT INTO `t_concept_explain` VALUES ('445', '确认', 'Validation', '对产品、服务或成果能够满足客户和其他已识别相关方需求的保证。比较“核实”。', '');
INSERT INTO `t_concept_explain` VALUES ('446', '偏差', 'Variance', '对已知基准或预期值的偏离量。', '');
INSERT INTO `t_concept_explain` VALUES ('447', '偏差分析', 'Variance Analysis', '确定实际绩效与基准的差异程度及原因的一种技术。', '');
INSERT INTO `t_concept_explain` VALUES ('448', '完工偏差', 'Variance At Completion (VAC)', '对预算亏空量或盈余量的一种预测，是完工预算与完工估算之差。', '');
INSERT INTO `t_concept_explain` VALUES ('449', '差异', 'Variation', '不同于基准计划中规定的期望情况的实际情况。', '');
INSERT INTO `t_concept_explain` VALUES ('450', '核实', 'Verification', '关于产品、服务或成果是否符合法规、要求、规范或强制条件的评估。比较 “确认”。', '');
INSERT INTO `t_concept_explain` VALUES ('451', '核实的可交付成果', 'Verified Deliverables', '经过控制质量过程的检查，被证实为正确的已完成的可交付成果。', '');
INSERT INTO `t_concept_explain` VALUES ('452', '虚拟团队', 'Virtual Teams', '拥有共同目标的，在很少或不能见面的情况下，完成相应任务的一组人。', '');
INSERT INTO `t_concept_explain` VALUES ('453', '客户声音', 'Voice of the Customer', '一种规划技术，通过在项目产品开发的每个阶段把客户需求转变成适当的技术要求，来提供真正反映客户需求的产品、服务和成果。', '');
INSERT INTO `t_concept_explain` VALUES ('454', 'WBS词典', 'WBS Dictionary', '针对工作分解结构中的每个组件，详细描述可交付成果、活动和进度信息的文件。', '');
INSERT INTO `t_concept_explain` VALUES ('455', '假设情景分析', 'What-If Scenario Analysis', '对各种情景进行评估，预测它们对项目目标的影响的过程。', '');
INSERT INTO `t_concept_explain` VALUES ('456', '工作分解结构', 'Work Breakdown Structure (WBS)', '对项目团队为实现项目目标、创建所需可交付成果而需要实施的全部工作范围的层级分解。', '');
INSERT INTO `t_concept_explain` VALUES ('457', '工作分解结构组件', 'Work Breakdown Structure Component', '工作分解结构任意层次上的任何要素。', '');
INSERT INTO `t_concept_explain` VALUES ('458', '工作包', 'Work Package', '工作分解结构最低层的工作，针对这些工作来估算并管理成本和持续时间。', '');
INSERT INTO `t_concept_explain` VALUES ('459', '工作绩效数据', 'Work Performance Data', '在执行项目工作的过程中，从每个正在执行的活动中收集到的原始观察结果和测量值。', '');
INSERT INTO `t_concept_explain` VALUES ('460', '工作绩效信息', 'Work Performance Information', '从控制过程中收集且与项目管理计划组成部分、项目文件进行对比分析的绩效数据，以及其他工作绩效信息。', '');
INSERT INTO `t_concept_explain` VALUES ('461', '工作绩效报告', 'Work Performance Reports', '为制定决策、采取行动或引起关注，而汇编工作绩效信息所形成的实物或电子项目文件。', '');
INSERT INTO `t_concept_explain` VALUES ('462', '强制性依赖关系', 'Mandatory Dependency', '合同要求的或工作的内在性质决定的依赖关系。', '');
INSERT INTO `t_concept_explain` VALUES ('463', '执行', 'Execute', '指导、管理、实施和完成项目工作，产出可交付成果和工作绩效数据。', '');
INSERT INTO `t_concept_explain` VALUES ('464', '完工尚需估算', 'Estimate to Complete (ETC).', '完成所有剩余项目工作的预计成本。', '');
INSERT INTO `t_concept_explain` VALUES ('465', '估算成本', 'Estimate Costs', '对完成项目活动所需资源成本进行近似估算的过程。', '');
INSERT INTO `t_concept_explain` VALUES ('466', '完工估算', 'Estimate at Completion (EAC)', '完成所有工作所需的预期总成本，等于截至目前的实际成本加上完工尚需估算。', '');
INSERT INTO `t_concept_explain` VALUES ('467', '事业环境因素', 'Enterprise Environmental Factors', '团队不能直接控制的，将对项目、项目集或项目组合产生影响、限制或指导作用的各种条件。', '');
INSERT INTO `t_concept_explain` VALUES ('468', '估算', 'Estimate', '对某一变量的可能数值或结果的定量评估，如项目成本、资源、人力投入或持续时间。', '');
INSERT INTO `t_concept_explain` VALUES ('469', '估算活动持续时间', 'Estimate Activity Durations', '根据资源估算的结果，估算完成单项活动所需工作时段数的过程。', '');
INSERT INTO `t_concept_explain` VALUES ('470', '估算活动资源', 'Estimate Activity Resources', '估算执行项目所需的团队资源，以及材料、设备和用品的类型和数量的过程。', '');

-- ----------------------------
-- Table structure for `t_file_category`
-- ----------------------------
DROP TABLE IF EXISTS `t_file_category`;
CREATE TABLE `t_file_category` (
  `file_category_id` int(11) NOT NULL AUTO_INCREMENT,
  `file_category_name` varchar(64) NOT NULL,
  `file_category_info` varchar(2048) NOT NULL,
  `file_category_extra_info` varchar(256) NOT NULL,
  PRIMARY KEY (`file_category_id`),
  UNIQUE KEY `key` (`file_category_name`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_file_category
-- ----------------------------
INSERT INTO `t_file_category` VALUES ('0', '', '', '');
INSERT INTO `t_file_category` VALUES ('1', '商业文件', '', '');
INSERT INTO `t_file_category` VALUES ('2', '项目管理计划', '', '');
INSERT INTO `t_file_category` VALUES ('3', '项目文件', '', '');

-- ----------------------------
-- Table structure for `t_others`
-- ----------------------------
DROP TABLE IF EXISTS `t_others`;
CREATE TABLE `t_others` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(64) NOT NULL,
  `info` varchar(2048) NOT NULL,
  `extra_info` varchar(256) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `key` (`name`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_others
-- ----------------------------
INSERT INTO `t_others` VALUES ('1', '0', '引导式研讨会', '引导式研讨会把主要干系人召集在一起，通过集中讨论来定义产品需求。研讨会是快速定义跨职能需求和协调干系人差异的重要技术。', '把主要干系人招集在一起讨论定义需求。');
INSERT INTO `t_others` VALUES ('2', '0', '德尔菲技术', '组织专家就某一专题达成一致意见的一种信息收集技术。相关专家匿名参与。组织者使用调查问卷就一个重要项目事项征询意见，然后对专家的答卷进行归纳，并把结果发还给专家做进一步评论。这个过程重复几轮后，就可能取得一致意见。德尔菲技术有助于减轻数据的偏倚，防止任何个人对结果产生不恰当的影响。', '群体决策技术之一，多名专家多轮匿名投票，选出最佳方案。');
INSERT INTO `t_others` VALUES ('3', '0', '管理审查', '管理审查：确定项目经理和有关相关方审查项目进展的时间点，以考核绩效是否符合预期，或者确定是否有必要采取预防或纠正措施。', '');
INSERT INTO `t_others` VALUES ('4', '0', '工作分解结构 ', '工作分解结构（WBS），是对项目团队为实现项目目标、创建所需可交付成果而需要实施的全部工作范围的层级分解，工作分解结构每向下分解一层，代表对项目工作更详细的定义。', 'WBS 组织并定义了项目的总范围，代表着经批准的当前项目范围说明书中所规定的工作。\r\nWBS 最低层的组成部分称为工作包，其中包括计划的工作。工作包对相关活动进行归类，以便对工作安排进度、进行估算、开展监督与控制。\r\n在“工作分解结构”这个词语中，“工作”是指作为活动结果的工作产品或可交付成果，而不是活动本身。');
INSERT INTO `t_others` VALUES ('5', '0', '实验设计', '一种统计方法，用来识别哪些因素会对正在生产的产品或正在开发的流程的特定变量产生影响。', '一种统计方法，识别哪些因素会对产品或流程的特定变量产生影响。');
INSERT INTO `t_others` VALUES ('6', '0', '帕累托图', '一种按发生频率排序的直方图，显示每种已识别的原因分别导致的结果数量。', '帕累托图：查找导致大多数结果的少数重要原因，如导致80%错误的20%原因。');

-- ----------------------------
-- Table structure for `t_porcess_inputs`
-- ----------------------------
DROP TABLE IF EXISTS `t_porcess_inputs`;
CREATE TABLE `t_porcess_inputs` (
  `input_id` int(11) NOT NULL AUTO_INCREMENT,
  `file_category_id` int(11) NOT NULL DEFAULT '0',
  `input_name` varchar(64) NOT NULL,
  `input_info` varchar(2048) NOT NULL,
  `input_operate` varchar(32) NOT NULL,
  `input_extra_info` varchar(256) NOT NULL,
  PRIMARY KEY (`input_id`),
  UNIQUE KEY `name` (`input_name`,`input_operate`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=113 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_porcess_inputs
-- ----------------------------
INSERT INTO `t_porcess_inputs` VALUES ('0', '0', '', '', '', '');
INSERT INTO `t_porcess_inputs` VALUES ('1', '0', '协议', '', '', '');
INSERT INTO `t_porcess_inputs` VALUES ('2', '0', '事业环境因素', '', '', '');
INSERT INTO `t_porcess_inputs` VALUES ('3', '0', '组织过程资产', '', '', '');
INSERT INTO `t_porcess_inputs` VALUES ('4', '0', '项目章程', '', '', '');
INSERT INTO `t_porcess_inputs` VALUES ('5', '1', '商业论证', '', '', '');
INSERT INTO `t_porcess_inputs` VALUES ('6', '1', '效益管理计划', '', '', '');
INSERT INTO `t_porcess_inputs` VALUES ('7', '0', '其他过程的输出', '', '', '');
INSERT INTO `t_porcess_inputs` VALUES ('8', '2', '任何组件', '', '', '');
INSERT INTO `t_porcess_inputs` VALUES ('9', '3', '变更日志', '', '', '');
INSERT INTO `t_porcess_inputs` VALUES ('10', '3', '经验教训登记册', '', '', '');
INSERT INTO `t_porcess_inputs` VALUES ('11', '3', '里程碑清单', '', '', '');
INSERT INTO `t_porcess_inputs` VALUES ('12', '3', '项目沟通记录', '', '', '');
INSERT INTO `t_porcess_inputs` VALUES ('13', '3', '项目进度计划', '', '', '');
INSERT INTO `t_porcess_inputs` VALUES ('14', '3', '需求跟踪矩阵', '', '', '');
INSERT INTO `t_porcess_inputs` VALUES ('15', '3', '风险登记册', '', '', '');
INSERT INTO `t_porcess_inputs` VALUES ('16', '3', '风险报告', '', '', '');
INSERT INTO `t_porcess_inputs` VALUES ('17', '0', '批准的变更请求', '', '', '');
INSERT INTO `t_porcess_inputs` VALUES ('18', '2', '所有组件', '', '', '');
INSERT INTO `t_porcess_inputs` VALUES ('19', '3', '项目团队派工单', '', '', '');
INSERT INTO `t_porcess_inputs` VALUES ('20', '3', '资源分解结构', '', '', '');
INSERT INTO `t_porcess_inputs` VALUES ('21', '3', '供方选择标准', '', '', '');
INSERT INTO `t_porcess_inputs` VALUES ('22', '3', '相关方登记册', '', '', '');
INSERT INTO `t_porcess_inputs` VALUES ('23', '0', '可交付成果', '', '', '');
INSERT INTO `t_porcess_inputs` VALUES ('24', '3', '估算依据', '', '', '');
INSERT INTO `t_porcess_inputs` VALUES ('25', '3', '成本预测', '', '', '');
INSERT INTO `t_porcess_inputs` VALUES ('26', '3', '质量报告', '', '', '');
INSERT INTO `t_porcess_inputs` VALUES ('29', '3', '进度预测', '', '', '');
INSERT INTO `t_porcess_inputs` VALUES ('30', '0', '工作绩效信息', '', '', '');
INSERT INTO `t_porcess_inputs` VALUES ('31', '3', '假设日志', '', '', '');
INSERT INTO `t_porcess_inputs` VALUES ('32', '3', '问题日志', '', '', '');
INSERT INTO `t_porcess_inputs` VALUES ('33', '2', '变更管理计划', '', '', '');
INSERT INTO `t_porcess_inputs` VALUES ('34', '2', '配置管理计划', '', '', '');
INSERT INTO `t_porcess_inputs` VALUES ('35', '2', '范围基准', '', '', '');
INSERT INTO `t_porcess_inputs` VALUES ('36', '2', '进度基准', '', '', '');
INSERT INTO `t_porcess_inputs` VALUES ('37', '2', '成本基准', '', '', '');
INSERT INTO `t_porcess_inputs` VALUES ('39', '0', '工作绩效报告', '', '', '');
INSERT INTO `t_porcess_inputs` VALUES ('42', '0', '变更请求', '', '', '');
INSERT INTO `t_porcess_inputs` VALUES ('43', '3', '质量控制测量结果', '', '', '');
INSERT INTO `t_porcess_inputs` VALUES ('45', '0', '采购文档', '', '', '');
INSERT INTO `t_porcess_inputs` VALUES ('46', '0', '可交付成果', '', '验收的', '');
INSERT INTO `t_porcess_inputs` VALUES ('48', '3', '需求文件', '', '', '');
INSERT INTO `t_porcess_inputs` VALUES ('49', '2', '质量管理计划', '', '', '');
INSERT INTO `t_porcess_inputs` VALUES ('50', '2', '项目生命周期描述', '', '', '');
INSERT INTO `t_porcess_inputs` VALUES ('51', '2', '开发方法', '', '', '');
INSERT INTO `t_porcess_inputs` VALUES ('52', '2', '相关方参与计划', '', '', '');
INSERT INTO `t_porcess_inputs` VALUES ('53', '2', '需求管理计划', '', '', '');
INSERT INTO `t_porcess_inputs` VALUES ('54', '2', '范围管理计划', '', '', '');
INSERT INTO `t_porcess_inputs` VALUES ('55', '3', '项目范围说明书', '', '', '');
INSERT INTO `t_porcess_inputs` VALUES ('57', '0', '可交付成果', '', '核实的', '');
INSERT INTO `t_porcess_inputs` VALUES ('58', '0', '工作绩效数据', '', '', '');
INSERT INTO `t_porcess_inputs` VALUES ('61', '2', '绩效测量基准', '', '', '');
INSERT INTO `t_porcess_inputs` VALUES ('62', '2', '进度管理计划', '', '', '');
INSERT INTO `t_porcess_inputs` VALUES ('63', '3', '活动属性', '', '', '');
INSERT INTO `t_porcess_inputs` VALUES ('64', '3', '活动清单', '', '', '');
INSERT INTO `t_porcess_inputs` VALUES ('65', '3', '项目进度网络图', '', '', '');
INSERT INTO `t_porcess_inputs` VALUES ('66', '3', '资源日历', '', '', '');
INSERT INTO `t_porcess_inputs` VALUES ('67', '3', '资源需求', '', '', '');
INSERT INTO `t_porcess_inputs` VALUES ('68', '3', '进度数据', '', '', '');
INSERT INTO `t_porcess_inputs` VALUES ('69', '2', '风险管理计划', '', '', '');
INSERT INTO `t_porcess_inputs` VALUES ('70', '3', '成本估算', '', '', '');
INSERT INTO `t_porcess_inputs` VALUES ('76', '2', '采购管理计划', '', '', '');
INSERT INTO `t_porcess_inputs` VALUES ('78', '2', '沟通管理计划', '', '', '');
INSERT INTO `t_porcess_inputs` VALUES ('80', '2', '资源管理计划', '', '', '');
INSERT INTO `t_porcess_inputs` VALUES ('82', '2', '成本管理计划', '', '', '');
INSERT INTO `t_porcess_inputs` VALUES ('83', '3', '测试与评估文件', '', '', '');
INSERT INTO `t_porcess_inputs` VALUES ('84', '3', '团队章程', '', '', '');
INSERT INTO `t_porcess_inputs` VALUES ('95', '3', '物质资源分配单', '', '', '');
INSERT INTO `t_porcess_inputs` VALUES ('96', '3', '持续时间估算', '', '', '');
INSERT INTO `t_porcess_inputs` VALUES ('101', '3', '项目日历', '', '', '');
INSERT INTO `t_porcess_inputs` VALUES ('102', '0', '项目资金需求', '', '', '');
INSERT INTO `t_porcess_inputs` VALUES ('104', '3', '质量测量指标', '', '', '');
INSERT INTO `t_porcess_inputs` VALUES ('106', '0', '变更请求', '', '批准的', '');
INSERT INTO `t_porcess_inputs` VALUES ('111', '0', '团队绩效评价', '', '', '');
INSERT INTO `t_porcess_inputs` VALUES ('112', '0', '卖方建议书', '', '', '');

-- ----------------------------
-- Table structure for `t_porcess_itto`
-- ----------------------------
DROP TABLE IF EXISTS `t_porcess_itto`;
CREATE TABLE `t_porcess_itto` (
  `itto_id` int(11) NOT NULL AUTO_INCREMENT,
  `process_id` int(11) NOT NULL DEFAULT '0',
  `input_id` int(11) NOT NULL DEFAULT '0',
  `tool_id` int(11) NOT NULL DEFAULT '0',
  `output_id` int(11) NOT NULL DEFAULT '0',
  `itto_info` varchar(2048) NOT NULL,
  `itto_extra_info` varchar(256) NOT NULL,
  PRIMARY KEY (`itto_id`),
  UNIQUE KEY `keys` (`process_id`,`input_id`,`tool_id`,`output_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=581 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_porcess_itto
-- ----------------------------
INSERT INTO `t_porcess_itto` VALUES ('1', '1', '1', '1', '1', '', '');
INSERT INTO `t_porcess_itto` VALUES ('2', '1', '2', '2', '2', '', '');
INSERT INTO `t_porcess_itto` VALUES ('3', '1', '3', '3', '0', '', '');
INSERT INTO `t_porcess_itto` VALUES ('4', '1', '5', '4', '0', '', '');
INSERT INTO `t_porcess_itto` VALUES ('5', '1', '6', '5', '0', '', '');
INSERT INTO `t_porcess_itto` VALUES ('6', '1', '0', '6', '0', '', '');
INSERT INTO `t_porcess_itto` VALUES ('7', '1', '0', '7', '0', '', '');
INSERT INTO `t_porcess_itto` VALUES ('8', '1', '0', '8', '0', '', '');
INSERT INTO `t_porcess_itto` VALUES ('9', '3', '4', '1', '3', '', '');
INSERT INTO `t_porcess_itto` VALUES ('10', '3', '7', '2', '0', '', '');
INSERT INTO `t_porcess_itto` VALUES ('11', '3', '2', '9', '0', '', '');
INSERT INTO `t_porcess_itto` VALUES ('12', '3', '3', '3', '0', '', '');
INSERT INTO `t_porcess_itto` VALUES ('13', '3', '0', '4', '0', '', '');
INSERT INTO `t_porcess_itto` VALUES ('14', '3', '0', '5', '0', '', '');
INSERT INTO `t_porcess_itto` VALUES ('15', '3', '0', '6', '0', '', '');
INSERT INTO `t_porcess_itto` VALUES ('16', '3', '0', '7', '0', '', '');
INSERT INTO `t_porcess_itto` VALUES ('17', '3', '0', '8', '0', '', '');
INSERT INTO `t_porcess_itto` VALUES ('19', '27', '3', '0', '15', '', '');
INSERT INTO `t_porcess_itto` VALUES ('20', '27', '2', '0', '14', '', '');
INSERT INTO `t_porcess_itto` VALUES ('21', '27', '17', '0', '13', '', '');
INSERT INTO `t_porcess_itto` VALUES ('22', '27', '16', '0', '12', '', '');
INSERT INTO `t_porcess_itto` VALUES ('23', '27', '15', '0', '11', '', '');
INSERT INTO `t_porcess_itto` VALUES ('24', '27', '14', '0', '10', '', '');
INSERT INTO `t_porcess_itto` VALUES ('25', '27', '13', '0', '9', '', '');
INSERT INTO `t_porcess_itto` VALUES ('26', '27', '12', '0', '8', '', '');
INSERT INTO `t_porcess_itto` VALUES ('27', '27', '11', '0', '7', '', '');
INSERT INTO `t_porcess_itto` VALUES ('28', '27', '10', '8', '6', '', '');
INSERT INTO `t_porcess_itto` VALUES ('29', '27', '9', '10', '5', '', '');
INSERT INTO `t_porcess_itto` VALUES ('30', '27', '8', '1', '4', '', '');
INSERT INTO `t_porcess_itto` VALUES ('31', '28', '18', '1', '16', '', '');
INSERT INTO `t_porcess_itto` VALUES ('32', '28', '10', '16', '8', '', '');
INSERT INTO `t_porcess_itto` VALUES ('33', '28', '19', '17', '15', '', '');
INSERT INTO `t_porcess_itto` VALUES ('34', '28', '20', '11', '0', '', '');
INSERT INTO `t_porcess_itto` VALUES ('35', '28', '21', '6', '0', '', '');
INSERT INTO `t_porcess_itto` VALUES ('36', '28', '22', '13', '0', '', '');
INSERT INTO `t_porcess_itto` VALUES ('37', '28', '23', '14', '0', '', '');
INSERT INTO `t_porcess_itto` VALUES ('38', '28', '2', '15', '0', '', '');
INSERT INTO `t_porcess_itto` VALUES ('39', '28', '3', '0', '0', '', '');
INSERT INTO `t_porcess_itto` VALUES ('40', '37', '8', '1', '17', '', '');
INSERT INTO `t_porcess_itto` VALUES ('41', '37', '31', '18', '7', '', '');
INSERT INTO `t_porcess_itto` VALUES ('42', '37', '24', '19', '8', '', '');
INSERT INTO `t_porcess_itto` VALUES ('43', '37', '25', '20', '18', '', '');
INSERT INTO `t_porcess_itto` VALUES ('44', '37', '32', '21', '19', '', '');
INSERT INTO `t_porcess_itto` VALUES ('45', '37', '10', '22', '11', '', '');
INSERT INTO `t_porcess_itto` VALUES ('46', '37', '11', '23', '13', '', '');
INSERT INTO `t_porcess_itto` VALUES ('47', '37', '26', '24', '20', '', '');
INSERT INTO `t_porcess_itto` VALUES ('48', '37', '15', '8', '0', '', '');
INSERT INTO `t_porcess_itto` VALUES ('49', '37', '16', '0', '0', '', '');
INSERT INTO `t_porcess_itto` VALUES ('50', '37', '29', '0', '0', '', '');
INSERT INTO `t_porcess_itto` VALUES ('51', '37', '30', '0', '0', '', '');
INSERT INTO `t_porcess_itto` VALUES ('52', '37', '1', '0', '0', '', '');
INSERT INTO `t_porcess_itto` VALUES ('53', '37', '2', '0', '0', '', '');
INSERT INTO `t_porcess_itto` VALUES ('54', '37', '3', '0', '0', '', '');
INSERT INTO `t_porcess_itto` VALUES ('55', '38', '33', '1', '21', '', '');
INSERT INTO `t_porcess_itto` VALUES ('56', '38', '34', '25', '8', '', '');
INSERT INTO `t_porcess_itto` VALUES ('57', '38', '35', '18', '22', '', '');
INSERT INTO `t_porcess_itto` VALUES ('58', '38', '36', '19', '0', '', '');
INSERT INTO `t_porcess_itto` VALUES ('59', '38', '37', '26', '0', '', '');
INSERT INTO `t_porcess_itto` VALUES ('60', '38', '24', '27', '0', '', '');
INSERT INTO `t_porcess_itto` VALUES ('61', '38', '14', '28', '0', '', '');
INSERT INTO `t_porcess_itto` VALUES ('62', '38', '16', '8', '0', '', '');
INSERT INTO `t_porcess_itto` VALUES ('63', '38', '39', '0', '0', '', '');
INSERT INTO `t_porcess_itto` VALUES ('64', '38', '42', '0', '0', '', '');
INSERT INTO `t_porcess_itto` VALUES ('65', '38', '2', '0', '0', '', '');
INSERT INTO `t_porcess_itto` VALUES ('66', '38', '3', '0', '0', '', '');
INSERT INTO `t_porcess_itto` VALUES ('68', '49', '4', '1', '11', '', '');
INSERT INTO `t_porcess_itto` VALUES ('69', '49', '18', '29', '24', '', '');
INSERT INTO `t_porcess_itto` VALUES ('70', '49', '31', '30', '23', '', '');
INSERT INTO `t_porcess_itto` VALUES ('71', '49', '24', '22', '15', '', '');
INSERT INTO `t_porcess_itto` VALUES ('72', '49', '9', '23', '0', '', '');
INSERT INTO `t_porcess_itto` VALUES ('73', '49', '32', '8', '0', '', '');
INSERT INTO `t_porcess_itto` VALUES ('74', '49', '10', '0', '0', '', '');
INSERT INTO `t_porcess_itto` VALUES ('75', '49', '11', '0', '0', '', '');
INSERT INTO `t_porcess_itto` VALUES ('76', '49', '12', '0', '0', '', '');
INSERT INTO `t_porcess_itto` VALUES ('77', '49', '43', '0', '0', '', '');
INSERT INTO `t_porcess_itto` VALUES ('78', '49', '26', '0', '0', '', '');
INSERT INTO `t_porcess_itto` VALUES ('79', '49', '48', '0', '0', '', '');
INSERT INTO `t_porcess_itto` VALUES ('80', '49', '15', '0', '0', '', '');
INSERT INTO `t_porcess_itto` VALUES ('81', '49', '16', '0', '0', '', '');
INSERT INTO `t_porcess_itto` VALUES ('82', '49', '46', '0', '0', '', '');
INSERT INTO `t_porcess_itto` VALUES ('83', '49', '5', '0', '0', '', '');
INSERT INTO `t_porcess_itto` VALUES ('84', '49', '6', '0', '0', '', '');
INSERT INTO `t_porcess_itto` VALUES ('85', '49', '1', '0', '0', '', '');
INSERT INTO `t_porcess_itto` VALUES ('86', '49', '45', '0', '0', '', '');
INSERT INTO `t_porcess_itto` VALUES ('87', '49', '3', '0', '0', '', '');
INSERT INTO `t_porcess_itto` VALUES ('88', '2', '4', '1', '95', '', '');
INSERT INTO `t_porcess_itto` VALUES ('89', '2', '5', '31', '7', '', '');
INSERT INTO `t_porcess_itto` VALUES ('90', '2', '6', '2', '26', '', '');
INSERT INTO `t_porcess_itto` VALUES ('91', '2', '78', '119', '83', '', '');
INSERT INTO `t_porcess_itto` VALUES ('92', '2', '52', '29', '67', '', '');
INSERT INTO `t_porcess_itto` VALUES ('93', '2', '9', '149', '82', '', '');
INSERT INTO `t_porcess_itto` VALUES ('94', '2', '32', '8', '10', '', '');
INSERT INTO `t_porcess_itto` VALUES ('95', '2', '48', '0', '19', '', '');
INSERT INTO `t_porcess_itto` VALUES ('96', '2', '1', '0', '13', '', '');
INSERT INTO `t_porcess_itto` VALUES ('97', '2', '2', '0', '0', '', '');
INSERT INTO `t_porcess_itto` VALUES ('98', '2', '3', '0', '0', '', '');
INSERT INTO `t_porcess_itto` VALUES ('105', '4', '4', '1', '2', '', '');
INSERT INTO `t_porcess_itto` VALUES ('106', '4', '49', '18', '149', '', '');
INSERT INTO `t_porcess_itto` VALUES ('107', '4', '50', '8', '0', '', '');
INSERT INTO `t_porcess_itto` VALUES ('108', '4', '51', '0', '0', '', '');
INSERT INTO `t_porcess_itto` VALUES ('109', '4', '2', '0', '0', '', '');
INSERT INTO `t_porcess_itto` VALUES ('110', '4', '3', '0', '0', '', '');
INSERT INTO `t_porcess_itto` VALUES ('111', '5', '4', '1', '27', '', '');
INSERT INTO `t_porcess_itto` VALUES ('112', '5', '54', '2', '28', '', '');
INSERT INTO `t_porcess_itto` VALUES ('113', '5', '53', '4', '0', '', '');
INSERT INTO `t_porcess_itto` VALUES ('114', '5', '52', '3', '0', '', '');
INSERT INTO `t_porcess_itto` VALUES ('115', '5', '2', '31', '0', '', '');
INSERT INTO `t_porcess_itto` VALUES ('116', '5', '16', '32', '0', '', '');
INSERT INTO `t_porcess_itto` VALUES ('117', '5', '95', '29', '0', '', '');
INSERT INTO `t_porcess_itto` VALUES ('118', '5', '5', '26', '0', '', '');
INSERT INTO `t_porcess_itto` VALUES ('119', '5', '1', '28', '0', '', '');
INSERT INTO `t_porcess_itto` VALUES ('120', '5', '2', '37', '0', '', '');
INSERT INTO `t_porcess_itto` VALUES ('121', '5', '3', '38', '0', '', '');
INSERT INTO `t_porcess_itto` VALUES ('122', '5', '0', '33', '0', '', '');
INSERT INTO `t_porcess_itto` VALUES ('123', '5', '0', '34', '0', '', '');
INSERT INTO `t_porcess_itto` VALUES ('124', '5', '0', '6', '0', '', '');
INSERT INTO `t_porcess_itto` VALUES ('125', '5', '0', '35', '0', '', '');
INSERT INTO `t_porcess_itto` VALUES ('126', '5', '0', '36', '0', '', '');
INSERT INTO `t_porcess_itto` VALUES ('127', '6', '4', '1', '55', '', '');
INSERT INTO `t_porcess_itto` VALUES ('128', '6', '54', '18', '139', '', '');
INSERT INTO `t_porcess_itto` VALUES ('129', '6', '31', '28', '10', '', '');
INSERT INTO `t_porcess_itto` VALUES ('130', '6', '48', '6', '12', '', '');
INSERT INTO `t_porcess_itto` VALUES ('131', '6', '15', '39', '30', '', '');
INSERT INTO `t_porcess_itto` VALUES ('132', '6', '2', '0', '14', '', '');
INSERT INTO `t_porcess_itto` VALUES ('133', '6', '3', '0', '0', '', '');
INSERT INTO `t_porcess_itto` VALUES ('134', '7', '54', '1', '31', '', '');
INSERT INTO `t_porcess_itto` VALUES ('135', '7', '55', '40', '10', '', '');
INSERT INTO `t_porcess_itto` VALUES ('136', '7', '48', '0', '12', '', '');
INSERT INTO `t_porcess_itto` VALUES ('137', '7', '2', '0', '0', '', '');
INSERT INTO `t_porcess_itto` VALUES ('138', '7', '3', '0', '0', '', '');
INSERT INTO `t_porcess_itto` VALUES ('139', '8', '4', '1', '39', '', '');
INSERT INTO `t_porcess_itto` VALUES ('140', '8', '54', '42', '0', '', '');
INSERT INTO `t_porcess_itto` VALUES ('141', '8', '51', '8', '0', '', '');
INSERT INTO `t_porcess_itto` VALUES ('142', '8', '2', '0', '0', '', '');
INSERT INTO `t_porcess_itto` VALUES ('143', '8', '3', '0', '0', '', '');
INSERT INTO `t_porcess_itto` VALUES ('144', '9', '62', '1', '40', '', '');
INSERT INTO `t_porcess_itto` VALUES ('145', '9', '35', '40', '41', '', '');
INSERT INTO `t_porcess_itto` VALUES ('146', '9', '2', '46', '42', '', '');
INSERT INTO `t_porcess_itto` VALUES ('147', '9', '3', '8', '7', '', '');
INSERT INTO `t_porcess_itto` VALUES ('148', '9', '0', '0', '36', '', '');
INSERT INTO `t_porcess_itto` VALUES ('149', '9', '0', '0', '37', '', '');
INSERT INTO `t_porcess_itto` VALUES ('156', '10', '62', '47', '65', '', '');
INSERT INTO `t_porcess_itto` VALUES ('157', '10', '35', '48', '45', '', '');
INSERT INTO `t_porcess_itto` VALUES ('158', '10', '63', '49', '9', '', '');
INSERT INTO `t_porcess_itto` VALUES ('159', '10', '64', '10', '10', '', '');
INSERT INTO `t_porcess_itto` VALUES ('160', '10', '31', '0', '47', '', '');
INSERT INTO `t_porcess_itto` VALUES ('161', '10', '11', '0', '0', '', '');
INSERT INTO `t_porcess_itto` VALUES ('162', '10', '2', '0', '0', '', '');
INSERT INTO `t_porcess_itto` VALUES ('163', '10', '3', '0', '0', '', '');
INSERT INTO `t_porcess_itto` VALUES ('164', '11', '62', '1', '49', '', '');
INSERT INTO `t_porcess_itto` VALUES ('165', '11', '35', '50', '133', '', '');
INSERT INTO `t_porcess_itto` VALUES ('166', '11', '63', '51', '45', '', '');
INSERT INTO `t_porcess_itto` VALUES ('167', '11', '64', '52', '10', '', '');
INSERT INTO `t_porcess_itto` VALUES ('168', '11', '31', '53', '11', '', '');
INSERT INTO `t_porcess_itto` VALUES ('169', '11', '10', '18', '0', '', '');
INSERT INTO `t_porcess_itto` VALUES ('170', '11', '11', '54', '0', '', '');
INSERT INTO `t_porcess_itto` VALUES ('171', '11', '19', '24', '0', '', '');
INSERT INTO `t_porcess_itto` VALUES ('172', '11', '20', '8', '0', '', '');
INSERT INTO `t_porcess_itto` VALUES ('173', '11', '66', '0', '0', '', '');
INSERT INTO `t_porcess_itto` VALUES ('174', '11', '67', '0', '0', '', '');
INSERT INTO `t_porcess_itto` VALUES ('175', '11', '15', '0', '0', '', '');
INSERT INTO `t_porcess_itto` VALUES ('176', '11', '2', '0', '0', '', '');
INSERT INTO `t_porcess_itto` VALUES ('177', '11', '3', '0', '0', '', '');
INSERT INTO `t_porcess_itto` VALUES ('178', '12', '62', '55', '50', '', '');
INSERT INTO `t_porcess_itto` VALUES ('179', '12', '35', '56', '137', '', '');
INSERT INTO `t_porcess_itto` VALUES ('180', '12', '63', '57', '52', '', '');
INSERT INTO `t_porcess_itto` VALUES ('181', '12', '64', '58', '135', '', '');
INSERT INTO `t_porcess_itto` VALUES ('182', '12', '10', '59', '7', '', '');
INSERT INTO `t_porcess_itto` VALUES ('183', '12', '24', '49', '55', '', '');
INSERT INTO `t_porcess_itto` VALUES ('184', '12', '96', '60', '37', '', '');
INSERT INTO `t_porcess_itto` VALUES ('185', '12', '10', '10', '45', '', '');
INSERT INTO `t_porcess_itto` VALUES ('186', '12', '11', '61', '10', '', '');
INSERT INTO `t_porcess_itto` VALUES ('187', '12', '65', '0', '57', '', '');
INSERT INTO `t_porcess_itto` VALUES ('188', '12', '19', '0', '11', '', '');
INSERT INTO `t_porcess_itto` VALUES ('189', '12', '66', '0', '58', '', '');
INSERT INTO `t_porcess_itto` VALUES ('190', '12', '67', '0', '13', '', '');
INSERT INTO `t_porcess_itto` VALUES ('191', '12', '15', '0', '0', '', '');
INSERT INTO `t_porcess_itto` VALUES ('192', '12', '1', '0', '0', '', '');
INSERT INTO `t_porcess_itto` VALUES ('193', '12', '2', '0', '0', '', '');
INSERT INTO `t_porcess_itto` VALUES ('194', '12', '3', '0', '0', '', '');
INSERT INTO `t_porcess_itto` VALUES ('195', '13', '4', '1', '150', '', '');
INSERT INTO `t_porcess_itto` VALUES ('196', '13', '62', '42', '0', '', '');
INSERT INTO `t_porcess_itto` VALUES ('197', '13', '69', '8', '0', '', '');
INSERT INTO `t_porcess_itto` VALUES ('198', '13', '2', '0', '0', '', '');
INSERT INTO `t_porcess_itto` VALUES ('199', '13', '3', '0', '0', '', '');
INSERT INTO `t_porcess_itto` VALUES ('200', '14', '82', '1', '62', '', '');
INSERT INTO `t_porcess_itto` VALUES ('201', '14', '49', '50', '133', '', '');
INSERT INTO `t_porcess_itto` VALUES ('202', '14', '35', '51', '10', '', '');
INSERT INTO `t_porcess_itto` VALUES ('203', '14', '10', '53', '11', '', '');
INSERT INTO `t_porcess_itto` VALUES ('204', '14', '13', '52', '13', '', '');
INSERT INTO `t_porcess_itto` VALUES ('205', '14', '67', '18', '0', '', '');
INSERT INTO `t_porcess_itto` VALUES ('206', '14', '15', '54', '0', '', '');
INSERT INTO `t_porcess_itto` VALUES ('207', '14', '2', '64', '0', '', '');
INSERT INTO `t_porcess_itto` VALUES ('208', '14', '3', '10', '0', '', '');
INSERT INTO `t_porcess_itto` VALUES ('209', '14', '0', '26', '0', '', '');
INSERT INTO `t_porcess_itto` VALUES ('213', '15', '24', '66', '51', '', '');
INSERT INTO `t_porcess_itto` VALUES ('214', '15', '70', '67', '13', '', '');
INSERT INTO `t_porcess_itto` VALUES ('215', '15', '13', '68', '0', '', '');
INSERT INTO `t_porcess_itto` VALUES ('216', '15', '15', '65', '65', '', '');
INSERT INTO `t_porcess_itto` VALUES ('217', '15', '5', '1', '64', '', '');
INSERT INTO `t_porcess_itto` VALUES ('218', '15', '6', '54', '66', '', '');
INSERT INTO `t_porcess_itto` VALUES ('219', '15', '1', '0', '0', '', '');
INSERT INTO `t_porcess_itto` VALUES ('220', '15', '2', '0', '0', '', '');
INSERT INTO `t_porcess_itto` VALUES ('221', '15', '3', '0', '0', '', '');
INSERT INTO `t_porcess_itto` VALUES ('222', '16', '4', '1', '151', '', '');
INSERT INTO `t_porcess_itto` VALUES ('223', '16', '53', '32', '190', '', '');
INSERT INTO `t_porcess_itto` VALUES ('224', '16', '69', '2', '67', '', '');
INSERT INTO `t_porcess_itto` VALUES ('225', '16', '52', '4', '35', '', '');
INSERT INTO `t_porcess_itto` VALUES ('226', '16', '35', '19', '11', '', '');
INSERT INTO `t_porcess_itto` VALUES ('227', '16', '31', '64', '30', '', '');
INSERT INTO `t_porcess_itto` VALUES ('228', '16', '48', '28', '13', '', '');
INSERT INTO `t_porcess_itto` VALUES ('229', '16', '14', '72', '14', '', '');
INSERT INTO `t_porcess_itto` VALUES ('230', '16', '15', '73', '0', '', '');
INSERT INTO `t_porcess_itto` VALUES ('231', '16', '22', '74', '0', '', '');
INSERT INTO `t_porcess_itto` VALUES ('232', '16', '2', '38', '0', '', '');
INSERT INTO `t_porcess_itto` VALUES ('233', '16', '3', '75', '0', '', '');
INSERT INTO `t_porcess_itto` VALUES ('234', '16', '0', '8', '0', '', '');
INSERT INTO `t_porcess_itto` VALUES ('235', '17', '4', '1', '152', '', '');
INSERT INTO `t_porcess_itto` VALUES ('236', '17', '49', '89', '147', '', '');
INSERT INTO `t_porcess_itto` VALUES ('237', '17', '35', '90', '10', '', '');
INSERT INTO `t_porcess_itto` VALUES ('238', '17', '13', '91', '13', '', '');
INSERT INTO `t_porcess_itto` VALUES ('239', '17', '48', '92', '0', '', '');
INSERT INTO `t_porcess_itto` VALUES ('240', '17', '15', '8', '0', '', '');
INSERT INTO `t_porcess_itto` VALUES ('241', '17', '22', '0', '0', '', '');
INSERT INTO `t_porcess_itto` VALUES ('242', '17', '2', '0', '0', '', '');
INSERT INTO `t_porcess_itto` VALUES ('243', '17', '3', '0', '0', '', '');
INSERT INTO `t_porcess_itto` VALUES ('244', '18', '80', '1', '101', '', '');
INSERT INTO `t_porcess_itto` VALUES ('245', '18', '35', '53', '133', '', '');
INSERT INTO `t_porcess_itto` VALUES ('246', '18', '63', '50', '144', '', '');
INSERT INTO `t_porcess_itto` VALUES ('247', '18', '64', '51', '45', '', '');
INSERT INTO `t_porcess_itto` VALUES ('248', '18', '31', '18', '10', '', '');
INSERT INTO `t_porcess_itto` VALUES ('249', '18', '70', '10', '11', '', '');
INSERT INTO `t_porcess_itto` VALUES ('250', '18', '66', '8', '0', '', '');
INSERT INTO `t_porcess_itto` VALUES ('251', '18', '15', '0', '0', '', '');
INSERT INTO `t_porcess_itto` VALUES ('252', '18', '2', '0', '0', '', '');
INSERT INTO `t_porcess_itto` VALUES ('253', '18', '3', '0', '0', '', '');
INSERT INTO `t_porcess_itto` VALUES ('254', '19', '4', '1', '153', '', '');
INSERT INTO `t_porcess_itto` VALUES ('255', '19', '80', '106', '82', '', '');
INSERT INTO `t_porcess_itto` VALUES ('256', '19', '52', '95', '51', '', '');
INSERT INTO `t_porcess_itto` VALUES ('257', '19', '48', '108', '14', '', '');
INSERT INTO `t_porcess_itto` VALUES ('258', '19', '22', '109', '0', '', '');
INSERT INTO `t_porcess_itto` VALUES ('259', '19', '2', '111', '0', '', '');
INSERT INTO `t_porcess_itto` VALUES ('260', '19', '3', '15', '0', '', '');
INSERT INTO `t_porcess_itto` VALUES ('261', '19', '0', '110', '0', '', '');
INSERT INTO `t_porcess_itto` VALUES ('262', '19', '0', '112', '0', '', '');
INSERT INTO `t_porcess_itto` VALUES ('263', '19', '0', '8', '0', '', '');
INSERT INTO `t_porcess_itto` VALUES ('264', '20', '4', '1', '154', '', '');
INSERT INTO `t_porcess_itto` VALUES ('265', '20', '18', '119', '0', '', '');
INSERT INTO `t_porcess_itto` VALUES ('266', '20', '22', '8', '0', '', '');
INSERT INTO `t_porcess_itto` VALUES ('267', '20', '2', '0', '0', '', '');
INSERT INTO `t_porcess_itto` VALUES ('268', '20', '3', '0', '0', '', '');
INSERT INTO `t_porcess_itto` VALUES ('269', '21', '53', '1', '124', '', '');
INSERT INTO `t_porcess_itto` VALUES ('270', '21', '62', '2', '146', '', '');
INSERT INTO `t_porcess_itto` VALUES ('271', '21', '82', '9', '10', '', '');
INSERT INTO `t_porcess_itto` VALUES ('272', '21', '49', '4', '19', '', '');
INSERT INTO `t_porcess_itto` VALUES ('273', '21', '80', '21', '11', '', '');
INSERT INTO `t_porcess_itto` VALUES ('274', '21', '69', '120', '0', '', '');
INSERT INTO `t_porcess_itto` VALUES ('275', '21', '35', '121', '0', '', '');
INSERT INTO `t_porcess_itto` VALUES ('276', '21', '36', '29', '0', '', '');
INSERT INTO `t_porcess_itto` VALUES ('277', '21', '37', '6', '0', '', '');
INSERT INTO `t_porcess_itto` VALUES ('278', '21', '31', '122', '0', '', '');
INSERT INTO `t_porcess_itto` VALUES ('279', '21', '70', '8', '0', '', '');
INSERT INTO `t_porcess_itto` VALUES ('280', '21', '96', '0', '0', '', '');
INSERT INTO `t_porcess_itto` VALUES ('281', '21', '32', '0', '0', '', '');
INSERT INTO `t_porcess_itto` VALUES ('282', '21', '10', '0', '0', '', '');
INSERT INTO `t_porcess_itto` VALUES ('283', '21', '48', '0', '0', '', '');
INSERT INTO `t_porcess_itto` VALUES ('284', '21', '67', '0', '0', '', '');
INSERT INTO `t_porcess_itto` VALUES ('285', '21', '22', '0', '0', '', '');
INSERT INTO `t_porcess_itto` VALUES ('286', '21', '1', '0', '0', '', '');
INSERT INTO `t_porcess_itto` VALUES ('287', '21', '45', '0', '0', '', '');
INSERT INTO `t_porcess_itto` VALUES ('288', '21', '2', '0', '0', '', '');
INSERT INTO `t_porcess_itto` VALUES ('289', '21', '3', '0', '0', '', '');
INSERT INTO `t_porcess_itto` VALUES ('290', '22', '69', '1', '10', '', '');
INSERT INTO `t_porcess_itto` VALUES ('291', '22', '31', '4', '19', '', '');
INSERT INTO `t_porcess_itto` VALUES ('292', '22', '3', '123', '13', '', '');
INSERT INTO `t_porcess_itto` VALUES ('293', '22', '0', '124', '125', '', '');
INSERT INTO `t_porcess_itto` VALUES ('294', '22', '0', '125', '0', '', '');
INSERT INTO `t_porcess_itto` VALUES ('295', '22', '15', '6', '0', '', '');
INSERT INTO `t_porcess_itto` VALUES ('296', '22', '0', '126', '0', '', '');
INSERT INTO `t_porcess_itto` VALUES ('297', '22', '0', '127', '0', '', '');
INSERT INTO `t_porcess_itto` VALUES ('298', '22', '2', '89', '0', '', '');
INSERT INTO `t_porcess_itto` VALUES ('299', '22', '22', '8', '0', '', '');
INSERT INTO `t_porcess_itto` VALUES ('300', '23', '69', '1', '125', '', '');
INSERT INTO `t_porcess_itto` VALUES ('301', '23', '35', '4', '0', '', '');
INSERT INTO `t_porcess_itto` VALUES ('302', '23', '36', '6', '0', '', '');
INSERT INTO `t_porcess_itto` VALUES ('303', '23', '37', '128', '0', '', '');
INSERT INTO `t_porcess_itto` VALUES ('304', '23', '31', '59', '0', '', '');
INSERT INTO `t_porcess_itto` VALUES ('305', '23', '24', '130', '0', '', '');
INSERT INTO `t_porcess_itto` VALUES ('306', '23', '70', '131', '0', '', '');
INSERT INTO `t_porcess_itto` VALUES ('307', '23', '25', '132', '0', '', '');
INSERT INTO `t_porcess_itto` VALUES ('308', '23', '96', '0', '0', '', '');
INSERT INTO `t_porcess_itto` VALUES ('309', '23', '11', '0', '0', '', '');
INSERT INTO `t_porcess_itto` VALUES ('310', '23', '67', '0', '0', '', '');
INSERT INTO `t_porcess_itto` VALUES ('311', '23', '15', '0', '0', '', '');
INSERT INTO `t_porcess_itto` VALUES ('312', '23', '16', '0', '0', '', '');
INSERT INTO `t_porcess_itto` VALUES ('313', '23', '29', '0', '0', '', '');
INSERT INTO `t_porcess_itto` VALUES ('314', '23', '2', '0', '0', '', '');
INSERT INTO `t_porcess_itto` VALUES ('315', '23', '3', '0', '0', '', '');
INSERT INTO `t_porcess_itto` VALUES ('316', '24', '80', '1', '7', '', '');
INSERT INTO `t_porcess_itto` VALUES ('317', '24', '69', '4', '55', '', '');
INSERT INTO `t_porcess_itto` VALUES ('318', '24', '37', '6', '61', '', '');
INSERT INTO `t_porcess_itto` VALUES ('319', '24', '10', '133', '77', '', '');
INSERT INTO `t_porcess_itto` VALUES ('320', '24', '13', '134', '76', '', '');
INSERT INTO `t_porcess_itto` VALUES ('321', '24', '19', '135', '70', '', '');
INSERT INTO `t_porcess_itto` VALUES ('322', '24', '66', '136', '35', '', '');
INSERT INTO `t_porcess_itto` VALUES ('323', '24', '15', '18', '36', '', '');
INSERT INTO `t_porcess_itto` VALUES ('324', '24', '16', '19', '37', '', '');
INSERT INTO `t_porcess_itto` VALUES ('325', '24', '22', '28', '10', '', '');
INSERT INTO `t_porcess_itto` VALUES ('326', '24', '2', '0', '18', '', '');
INSERT INTO `t_porcess_itto` VALUES ('327', '24', '3', '0', '11', '', '');
INSERT INTO `t_porcess_itto` VALUES ('328', '24', '0', '0', '51', '', '');
INSERT INTO `t_porcess_itto` VALUES ('329', '24', '0', '0', '109', '', '');
INSERT INTO `t_porcess_itto` VALUES ('330', '24', '0', '0', '13', '', '');
INSERT INTO `t_porcess_itto` VALUES ('331', '24', '0', '0', '125', '', '');
INSERT INTO `t_porcess_itto` VALUES ('332', '25', '4', '1', '155', '', '');
INSERT INTO `t_porcess_itto` VALUES ('333', '25', '5', '138', '180', '', '');
INSERT INTO `t_porcess_itto` VALUES ('334', '25', '6', '139', '181', '', '');
INSERT INTO `t_porcess_itto` VALUES ('335', '25', '54', '140', '182', '', '');
INSERT INTO `t_porcess_itto` VALUES ('336', '25', '49', '8', '183', '', '');
INSERT INTO `t_porcess_itto` VALUES ('337', '25', '80', '0', '184', '', '');
INSERT INTO `t_porcess_itto` VALUES ('338', '25', '35', '0', '185', '', '');
INSERT INTO `t_porcess_itto` VALUES ('339', '25', '11', '0', '7', '', '');
INSERT INTO `t_porcess_itto` VALUES ('340', '25', '19', '0', '11', '', '');
INSERT INTO `t_porcess_itto` VALUES ('341', '25', '48', '0', '47', '', '');
INSERT INTO `t_porcess_itto` VALUES ('342', '25', '14', '0', '12', '', '');
INSERT INTO `t_porcess_itto` VALUES ('343', '25', '67', '0', '30', '', '');
INSERT INTO `t_porcess_itto` VALUES ('344', '25', '15', '0', '13', '', '');
INSERT INTO `t_porcess_itto` VALUES ('345', '25', '22', '0', '140', '', '');
INSERT INTO `t_porcess_itto` VALUES ('346', '25', '2', '0', '15', '', '');
INSERT INTO `t_porcess_itto` VALUES ('347', '25', '3', '0', '0', '', '');
INSERT INTO `t_porcess_itto` VALUES ('348', '26', '4', '1', '156', '', '');
INSERT INTO `t_porcess_itto` VALUES ('349', '26', '80', '32', '0', '', '');
INSERT INTO `t_porcess_itto` VALUES ('350', '26', '78', '120', '0', '', '');
INSERT INTO `t_porcess_itto` VALUES ('351', '26', '69', '21', '0', '', '');
INSERT INTO `t_porcess_itto` VALUES ('352', '26', '31', '150', '0', '', '');
INSERT INTO `t_porcess_itto` VALUES ('353', '26', '9', '38', '0', '', '');
INSERT INTO `t_porcess_itto` VALUES ('354', '26', '32', '112', '0', '', '');
INSERT INTO `t_porcess_itto` VALUES ('355', '26', '13', '8', '0', '', '');
INSERT INTO `t_porcess_itto` VALUES ('356', '26', '15', '0', '0', '', '');
INSERT INTO `t_porcess_itto` VALUES ('357', '26', '22', '0', '0', '', '');
INSERT INTO `t_porcess_itto` VALUES ('358', '26', '1', '0', '0', '', '');
INSERT INTO `t_porcess_itto` VALUES ('359', '26', '2', '0', '0', '', '');
INSERT INTO `t_porcess_itto` VALUES ('360', '26', '3', '0', '0', '', '');
INSERT INTO `t_porcess_itto` VALUES ('361', '29', '49', '9', '143', '', '');
INSERT INTO `t_porcess_itto` VALUES ('362', '29', '10', '18', '148', '', '');
INSERT INTO `t_porcess_itto` VALUES ('363', '29', '43', '29', '7', '', '');
INSERT INTO `t_porcess_itto` VALUES ('364', '29', '104', '76', '77', '', '');
INSERT INTO `t_porcess_itto` VALUES ('365', '29', '16', '21', '35', '', '');
INSERT INTO `t_porcess_itto` VALUES ('366', '29', '3', '28', '36', '', '');
INSERT INTO `t_porcess_itto` VALUES ('367', '29', '0', '37', '37', '', '');
INSERT INTO `t_porcess_itto` VALUES ('368', '29', '0', '77', '19', '', '');
INSERT INTO `t_porcess_itto` VALUES ('369', '29', '0', '72', '11', '', '');
INSERT INTO `t_porcess_itto` VALUES ('370', '29', '0', '78', '13', '', '');
INSERT INTO `t_porcess_itto` VALUES ('371', '29', '0', '74', '0', '', '');
INSERT INTO `t_porcess_itto` VALUES ('372', '29', '0', '79', '0', '', '');
INSERT INTO `t_porcess_itto` VALUES ('373', '29', '0', '80', '0', '', '');
INSERT INTO `t_porcess_itto` VALUES ('374', '29', '0', '81', '0', '', '');
INSERT INTO `t_porcess_itto` VALUES ('375', '29', '0', '82', '0', '', '');
INSERT INTO `t_porcess_itto` VALUES ('376', '29', '0', '83', '0', '', '');
INSERT INTO `t_porcess_itto` VALUES ('377', '30', '80', '28', '134', '', '');
INSERT INTO `t_porcess_itto` VALUES ('378', '30', '76', '101', '140', '', '');
INSERT INTO `t_porcess_itto` VALUES ('379', '30', '37', '153', '145', '', '');
INSERT INTO `t_porcess_itto` VALUES ('380', '30', '13', '94', '7', '', '');
INSERT INTO `t_porcess_itto` VALUES ('381', '30', '66', '0', '76', '', '');
INSERT INTO `t_porcess_itto` VALUES ('382', '30', '67', '0', '37', '', '');
INSERT INTO `t_porcess_itto` VALUES ('383', '30', '22', '0', '11', '', '');
INSERT INTO `t_porcess_itto` VALUES ('384', '30', '2', '0', '51', '', '');
INSERT INTO `t_porcess_itto` VALUES ('385', '30', '3', '0', '103', '', '');
INSERT INTO `t_porcess_itto` VALUES ('386', '30', '0', '0', '58', '', '');
INSERT INTO `t_porcess_itto` VALUES ('387', '30', '0', '0', '13', '', '');
INSERT INTO `t_porcess_itto` VALUES ('388', '30', '0', '0', '14', '', '');
INSERT INTO `t_porcess_itto` VALUES ('389', '30', '0', '0', '177', '', '');
INSERT INTO `t_porcess_itto` VALUES ('390', '30', '0', '0', '15', '', '');
INSERT INTO `t_porcess_itto` VALUES ('391', '31', '80', '93', '178', '', '');
INSERT INTO `t_porcess_itto` VALUES ('392', '31', '10', '94', '7', '', '');
INSERT INTO `t_porcess_itto` VALUES ('393', '31', '13', '95', '76', '', '');
INSERT INTO `t_porcess_itto` VALUES ('394', '31', '95', '5', '11', '', '');
INSERT INTO `t_porcess_itto` VALUES ('395', '31', '66', '99', '51', '', '');
INSERT INTO `t_porcess_itto` VALUES ('396', '31', '84', '100', '109', '', '');
INSERT INTO `t_porcess_itto` VALUES ('397', '31', '2', '101', '102', '', '');
INSERT INTO `t_porcess_itto` VALUES ('398', '31', '3', '102', '94', '', '');
INSERT INTO `t_porcess_itto` VALUES ('399', '31', '0', '96', '177', '', '');
INSERT INTO `t_porcess_itto` VALUES ('400', '31', '0', '97', '15', '', '');
INSERT INTO `t_porcess_itto` VALUES ('401', '31', '0', '98', '0', '', '');
INSERT INTO `t_porcess_itto` VALUES ('402', '31', '0', '8', '0', '', '');
INSERT INTO `t_porcess_itto` VALUES ('403', '32', '80', '5', '7', '', '');
INSERT INTO `t_porcess_itto` VALUES ('404', '32', '32', '103', '76', '', '');
INSERT INTO `t_porcess_itto` VALUES ('405', '32', '10', '104', '36', '', '');
INSERT INTO `t_porcess_itto` VALUES ('406', '32', '19', '99', '37', '', '');
INSERT INTO `t_porcess_itto` VALUES ('407', '32', '84', '13', '19', '', '');
INSERT INTO `t_porcess_itto` VALUES ('408', '32', '39', '10', '11', '', '');
INSERT INTO `t_porcess_itto` VALUES ('409', '32', '111', '0', '109', '', '');
INSERT INTO `t_porcess_itto` VALUES ('410', '32', '2', '0', '177', '', '');
INSERT INTO `t_porcess_itto` VALUES ('411', '32', '3', '0', '0', '', '');
INSERT INTO `t_porcess_itto` VALUES ('412', '33', '80', '95', '136', '', '');
INSERT INTO `t_porcess_itto` VALUES ('413', '33', '78', '109', '83', '', '');
INSERT INTO `t_porcess_itto` VALUES ('414', '33', '52', '114', '82', '', '');
INSERT INTO `t_porcess_itto` VALUES ('415', '33', '9', '115', '19', '', '');
INSERT INTO `t_porcess_itto` VALUES ('416', '33', '32', '116', '11', '', '');
INSERT INTO `t_porcess_itto` VALUES ('417', '33', '10', '117', '51', '', '');
INSERT INTO `t_porcess_itto` VALUES ('418', '33', '26', '10', '13', '', '');
INSERT INTO `t_porcess_itto` VALUES ('419', '33', '16', '118', '14', '', '');
INSERT INTO `t_porcess_itto` VALUES ('420', '33', '22', '11', '15', '', '');
INSERT INTO `t_porcess_itto` VALUES ('421', '33', '39', '5', '0', '', '');
INSERT INTO `t_porcess_itto` VALUES ('422', '33', '2', '110', '0', '', '');
INSERT INTO `t_porcess_itto` VALUES ('423', '33', '3', '7', '0', '', '');
INSERT INTO `t_porcess_itto` VALUES ('424', '33', '0', '14', '0', '', '');
INSERT INTO `t_porcess_itto` VALUES ('425', '33', '0', '15', '0', '', '');
INSERT INTO `t_porcess_itto` VALUES ('426', '33', '0', '8', '0', '', '');
INSERT INTO `t_porcess_itto` VALUES ('427', '34', '69', '1', '7', '', '');
INSERT INTO `t_porcess_itto` VALUES ('428', '34', '10', '99', '19', '', '');
INSERT INTO `t_porcess_itto` VALUES ('429', '34', '15', '10', '11', '', '');
INSERT INTO `t_porcess_itto` VALUES ('430', '34', '16', '0', '109', '', '');
INSERT INTO `t_porcess_itto` VALUES ('431', '34', '3', '0', '13', '', '');
INSERT INTO `t_porcess_itto` VALUES ('432', '34', '0', '0', '125', '', '');
INSERT INTO `t_porcess_itto` VALUES ('433', '35', '54', '1', '186', '', '');
INSERT INTO `t_porcess_itto` VALUES ('434', '35', '53', '141', '187', '', '');
INSERT INTO `t_porcess_itto` VALUES ('435', '35', '78', '142', '7', '', '');
INSERT INTO `t_porcess_itto` VALUES ('436', '35', '69', '143', '26', '', '');
INSERT INTO `t_porcess_itto` VALUES ('437', '35', '76', '101', '77', '', '');
INSERT INTO `t_porcess_itto` VALUES ('438', '35', '34', '0', '83', '', '');
INSERT INTO `t_porcess_itto` VALUES ('439', '35', '37', '0', '67', '', '');
INSERT INTO `t_porcess_itto` VALUES ('440', '35', '10', '0', '70', '', '');
INSERT INTO `t_porcess_itto` VALUES ('441', '35', '13', '0', '35', '', '');
INSERT INTO `t_porcess_itto` VALUES ('442', '35', '48', '0', '36', '', '');
INSERT INTO `t_porcess_itto` VALUES ('443', '35', '15', '0', '37', '', '');
INSERT INTO `t_porcess_itto` VALUES ('444', '35', '22', '0', '11', '', '');
INSERT INTO `t_porcess_itto` VALUES ('445', '35', '45', '0', '12', '', '');
INSERT INTO `t_porcess_itto` VALUES ('446', '35', '112', '0', '30', '', '');
INSERT INTO `t_porcess_itto` VALUES ('447', '35', '2', '0', '102', '', '');
INSERT INTO `t_porcess_itto` VALUES ('448', '35', '3', '0', '13', '', '');
INSERT INTO `t_porcess_itto` VALUES ('449', '35', '0', '0', '14', '', '');
INSERT INTO `t_porcess_itto` VALUES ('450', '35', '0', '0', '15', '', '');
INSERT INTO `t_porcess_itto` VALUES ('451', '36', '78', '1', '7', '', '');
INSERT INTO `t_porcess_itto` VALUES ('452', '36', '69', '115', '83', '', '');
INSERT INTO `t_porcess_itto` VALUES ('453', '36', '52', '5', '82', '', '');
INSERT INTO `t_porcess_itto` VALUES ('454', '36', '33', '110', '22', '', '');
INSERT INTO `t_porcess_itto` VALUES ('455', '36', '9', '101', '19', '', '');
INSERT INTO `t_porcess_itto` VALUES ('456', '36', '32', '34', '11', '', '');
INSERT INTO `t_porcess_itto` VALUES ('457', '36', '10', '15', '14', '', '');
INSERT INTO `t_porcess_itto` VALUES ('458', '36', '22', '152', '0', '', '');
INSERT INTO `t_porcess_itto` VALUES ('459', '36', '2', '8', '0', '', '');
INSERT INTO `t_porcess_itto` VALUES ('460', '36', '3', '0', '0', '', '');
INSERT INTO `t_porcess_itto` VALUES ('461', '39', '54', '41', '32', '', '');
INSERT INTO `t_porcess_itto` VALUES ('462', '39', '53', '26', '33', '', '');
INSERT INTO `t_porcess_itto` VALUES ('463', '39', '35', '0', '7', '', '');
INSERT INTO `t_porcess_itto` VALUES ('464', '39', '10', '0', '11', '', '');
INSERT INTO `t_porcess_itto` VALUES ('465', '39', '26', '0', '12', '', '');
INSERT INTO `t_porcess_itto` VALUES ('466', '39', '48', '0', '30', '', '');
INSERT INTO `t_porcess_itto` VALUES ('467', '39', '14', '0', '0', '', '');
INSERT INTO `t_porcess_itto` VALUES ('468', '39', '57', '0', '0', '', '');
INSERT INTO `t_porcess_itto` VALUES ('469', '39', '58', '0', '0', '', '');
INSERT INTO `t_porcess_itto` VALUES ('470', '40', '54', '23', '33', '', '');
INSERT INTO `t_porcess_itto` VALUES ('471', '40', '53', '22', '7', '', '');
INSERT INTO `t_porcess_itto` VALUES ('472', '40', '33', '0', '34', '', '');
INSERT INTO `t_porcess_itto` VALUES ('473', '40', '34', '0', '35', '', '');
INSERT INTO `t_porcess_itto` VALUES ('474', '40', '35', '0', '36', '', '');
INSERT INTO `t_porcess_itto` VALUES ('475', '40', '61', '0', '37', '', '');
INSERT INTO `t_porcess_itto` VALUES ('476', '40', '10', '0', '38', '', '');
INSERT INTO `t_porcess_itto` VALUES ('477', '40', '48', '0', '11', '', '');
INSERT INTO `t_porcess_itto` VALUES ('478', '40', '14', '0', '12', '', '');
INSERT INTO `t_porcess_itto` VALUES ('479', '40', '58', '0', '30', '', '');
INSERT INTO `t_porcess_itto` VALUES ('480', '40', '3', '0', '0', '', '');
INSERT INTO `t_porcess_itto` VALUES ('481', '41', '62', '20', '33', '', '');
INSERT INTO `t_porcess_itto` VALUES ('482', '41', '36', '62', '59', '', '');
INSERT INTO `t_porcess_itto` VALUES ('483', '41', '35', '63', '7', '', '');
INSERT INTO `t_porcess_itto` VALUES ('484', '41', '61', '22', '55', '', '');
INSERT INTO `t_porcess_itto` VALUES ('485', '41', '10', '23', '36', '', '');
INSERT INTO `t_porcess_itto` VALUES ('486', '41', '101', '58', '37', '', '');
INSERT INTO `t_porcess_itto` VALUES ('487', '41', '13', '56', '38', '', '');
INSERT INTO `t_porcess_itto` VALUES ('488', '41', '66', '10', '10', '', '');
INSERT INTO `t_porcess_itto` VALUES ('489', '41', '68', '57', '48', '', '');
INSERT INTO `t_porcess_itto` VALUES ('490', '41', '58', '49', '11', '', '');
INSERT INTO `t_porcess_itto` VALUES ('491', '41', '3', '60', '51', '', '');
INSERT INTO `t_porcess_itto` VALUES ('492', '41', '0', '0', '102', '', '');
INSERT INTO `t_porcess_itto` VALUES ('493', '41', '0', '0', '13', '', '');
INSERT INTO `t_porcess_itto` VALUES ('494', '41', '0', '0', '60', '', '');
INSERT INTO `t_porcess_itto` VALUES ('495', '42', '82', '1', '33', '', '');
INSERT INTO `t_porcess_itto` VALUES ('496', '42', '37', '20', '130', '', '');
INSERT INTO `t_porcess_itto` VALUES ('497', '42', '61', '23', '7', '', '');
INSERT INTO `t_porcess_itto` VALUES ('498', '42', '10', '22', '61', '', '');
INSERT INTO `t_porcess_itto` VALUES ('499', '42', '102', '54', '37', '', '');
INSERT INTO `t_porcess_itto` VALUES ('500', '42', '58', '69', '38', '', '');
INSERT INTO `t_porcess_itto` VALUES ('501', '42', '3', '10', '10', '', '');
INSERT INTO `t_porcess_itto` VALUES ('502', '42', '0', '0', '48', '', '');
INSERT INTO `t_porcess_itto` VALUES ('503', '42', '0', '0', '66', '', '');
INSERT INTO `t_porcess_itto` VALUES ('504', '42', '0', '0', '11', '', '');
INSERT INTO `t_porcess_itto` VALUES ('505', '42', '0', '0', '13', '', '');
INSERT INTO `t_porcess_itto` VALUES ('506', '43', '49', '9', '141', '', '');
INSERT INTO `t_porcess_itto` VALUES ('507', '43', '10', '85', '170', '', '');
INSERT INTO `t_porcess_itto` VALUES ('508', '43', '104', '84', '33', '', '');
INSERT INTO `t_porcess_itto` VALUES ('509', '43', '83', '31', '7', '', '');
INSERT INTO `t_porcess_itto` VALUES ('510', '43', '106', '63', '151', '', '');
INSERT INTO `t_porcess_itto` VALUES ('511', '43', '23', '21', '19', '', '');
INSERT INTO `t_porcess_itto` VALUES ('512', '43', '58', '41', '11', '', '');
INSERT INTO `t_porcess_itto` VALUES ('513', '43', '2', '88', '13', '', '');
INSERT INTO `t_porcess_itto` VALUES ('514', '43', '3', '77', '93', '', '');
INSERT INTO `t_porcess_itto` VALUES ('515', '43', '0', '86', '0', '', '');
INSERT INTO `t_porcess_itto` VALUES ('516', '43', '0', '78', '0', '', '');
INSERT INTO `t_porcess_itto` VALUES ('517', '43', '0', '79', '0', '', '');
INSERT INTO `t_porcess_itto` VALUES ('518', '43', '0', '8', '0', '', '');
INSERT INTO `t_porcess_itto` VALUES ('519', '44', '80', '18', '33', '', '');
INSERT INTO `t_porcess_itto` VALUES ('520', '44', '32', '19', '7', '', '');
INSERT INTO `t_porcess_itto` VALUES ('521', '44', '10', '63', '76', '', '');
INSERT INTO `t_porcess_itto` VALUES ('522', '44', '95', '22', '36', '', '');
INSERT INTO `t_porcess_itto` VALUES ('523', '44', '13', '82', '37', '', '');
INSERT INTO `t_porcess_itto` VALUES ('524', '44', '20', '101', '10', '', '');
INSERT INTO `t_porcess_itto` VALUES ('525', '44', '67', '99', '19', '', '');
INSERT INTO `t_porcess_itto` VALUES ('526', '44', '15', '0', '11', '', '');
INSERT INTO `t_porcess_itto` VALUES ('527', '44', '58', '0', '114', '', '');
INSERT INTO `t_porcess_itto` VALUES ('528', '44', '1', '0', '103', '', '');
INSERT INTO `t_porcess_itto` VALUES ('529', '44', '3', '0', '13', '', '');
INSERT INTO `t_porcess_itto` VALUES ('530', '45', '80', '1', '33', '', '');
INSERT INTO `t_porcess_itto` VALUES ('531', '45', '78', '10', '7', '', '');
INSERT INTO `t_porcess_itto` VALUES ('532', '45', '52', '119', '83', '', '');
INSERT INTO `t_porcess_itto` VALUES ('533', '45', '32', '34', '82', '', '');
INSERT INTO `t_porcess_itto` VALUES ('534', '45', '10', '8', '19', '', '');
INSERT INTO `t_porcess_itto` VALUES ('535', '45', '12', '0', '11', '', '');
INSERT INTO `t_porcess_itto` VALUES ('536', '45', '58', '0', '14', '', '');
INSERT INTO `t_porcess_itto` VALUES ('537', '45', '2', '0', '0', '', '');
INSERT INTO `t_porcess_itto` VALUES ('538', '45', '3', '0', '0', '', '');
INSERT INTO `t_porcess_itto` VALUES ('539', '46', '69', '137', '33', '', '');
INSERT INTO `t_porcess_itto` VALUES ('540', '46', '32', '54', '7', '', '');
INSERT INTO `t_porcess_itto` VALUES ('541', '46', '10', '80', '8', '', '');
INSERT INTO `t_porcess_itto` VALUES ('542', '46', '15', '8', '10', '', '');
INSERT INTO `t_porcess_itto` VALUES ('543', '46', '16', '0', '19', '', '');
INSERT INTO `t_porcess_itto` VALUES ('544', '46', '58', '0', '11', '', '');
INSERT INTO `t_porcess_itto` VALUES ('545', '46', '39', '0', '13', '', '');
INSERT INTO `t_porcess_itto` VALUES ('546', '46', '0', '0', '125', '', '');
INSERT INTO `t_porcess_itto` VALUES ('547', '46', '0', '0', '15', '', '');
INSERT INTO `t_porcess_itto` VALUES ('548', '47', '53', '1', '188', '', '');
INSERT INTO `t_porcess_itto` VALUES ('549', '47', '69', '144', '33', '', '');
INSERT INTO `t_porcess_itto` VALUES ('550', '47', '76', '63', '189', '', '');
INSERT INTO `t_porcess_itto` VALUES ('551', '47', '33', '20', '7', '', '');
INSERT INTO `t_porcess_itto` VALUES ('552', '47', '36', '22', '67', '', '');
INSERT INTO `t_porcess_itto` VALUES ('553', '47', '31', '41', '70', '', '');
INSERT INTO `t_porcess_itto` VALUES ('554', '47', '10', '80', '36', '', '');
INSERT INTO `t_porcess_itto` VALUES ('555', '47', '11', '0', '37', '', '');
INSERT INTO `t_porcess_itto` VALUES ('556', '47', '26', '0', '11', '', '');
INSERT INTO `t_porcess_itto` VALUES ('557', '47', '48', '0', '58', '', '');
INSERT INTO `t_porcess_itto` VALUES ('558', '47', '14', '0', '30', '', '');
INSERT INTO `t_porcess_itto` VALUES ('559', '47', '15', '0', '13', '', '');
INSERT INTO `t_porcess_itto` VALUES ('560', '47', '22', '0', '14', '', '');
INSERT INTO `t_porcess_itto` VALUES ('561', '47', '1', '0', '15', '', '');
INSERT INTO `t_porcess_itto` VALUES ('562', '47', '45', '0', '0', '', '');
INSERT INTO `t_porcess_itto` VALUES ('563', '47', '106', '0', '0', '', '');
INSERT INTO `t_porcess_itto` VALUES ('564', '47', '58', '0', '0', '', '');
INSERT INTO `t_porcess_itto` VALUES ('565', '47', '2', '0', '0', '', '');
INSERT INTO `t_porcess_itto` VALUES ('566', '47', '3', '0', '0', '', '');
INSERT INTO `t_porcess_itto` VALUES ('567', '48', '80', '18', '33', '', '');
INSERT INTO `t_porcess_itto` VALUES ('568', '48', '78', '21', '7', '', '');
INSERT INTO `t_porcess_itto` VALUES ('569', '48', '52', '119', '76', '', '');
INSERT INTO `t_porcess_itto` VALUES ('570', '48', '32', '28', '83', '', '');
INSERT INTO `t_porcess_itto` VALUES ('571', '48', '12', '26', '82', '', '');
INSERT INTO `t_porcess_itto` VALUES ('572', '48', '15', '112', '19', '', '');
INSERT INTO `t_porcess_itto` VALUES ('573', '48', '22', '115', '11', '', '');
INSERT INTO `t_porcess_itto` VALUES ('574', '48', '58', '117', '13', '', '');
INSERT INTO `t_porcess_itto` VALUES ('575', '48', '2', '11', '14', '', '');
INSERT INTO `t_porcess_itto` VALUES ('576', '48', '3', '110', '0', '', '');
INSERT INTO `t_porcess_itto` VALUES ('577', '48', '0', '13', '0', '', '');
INSERT INTO `t_porcess_itto` VALUES ('578', '48', '0', '14', '0', '', '');
INSERT INTO `t_porcess_itto` VALUES ('579', '48', '0', '15', '0', '', '');
INSERT INTO `t_porcess_itto` VALUES ('580', '48', '0', '8', '0', '', '');

-- ----------------------------
-- Table structure for `t_porcess_outputs`
-- ----------------------------
DROP TABLE IF EXISTS `t_porcess_outputs`;
CREATE TABLE `t_porcess_outputs` (
  `output_id` int(11) NOT NULL AUTO_INCREMENT,
  `file_category_id` int(11) NOT NULL DEFAULT '0',
  `output_name` varchar(64) NOT NULL,
  `output_info` varchar(2048) NOT NULL,
  `output_operate` varchar(32) NOT NULL,
  `ontput_extra_info` varchar(256) NOT NULL,
  PRIMARY KEY (`output_id`),
  UNIQUE KEY `key` (`output_name`,`output_operate`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=191 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_porcess_outputs
-- ----------------------------
INSERT INTO `t_porcess_outputs` VALUES ('0', '0', '', '', '', '');
INSERT INTO `t_porcess_outputs` VALUES ('1', '0', '项目章程', '', '', '');
INSERT INTO `t_porcess_outputs` VALUES ('2', '3', '假设日志', '', '', '');
INSERT INTO `t_porcess_outputs` VALUES ('3', '0', '项目管理计划', '', '', '');
INSERT INTO `t_porcess_outputs` VALUES ('4', '0', '可交付成果', '', '', '');
INSERT INTO `t_porcess_outputs` VALUES ('5', '0', '工作绩效数据', '', '', '');
INSERT INTO `t_porcess_outputs` VALUES ('6', '3', '问题日志', '', '', '');
INSERT INTO `t_porcess_outputs` VALUES ('7', '0', '变更请求', '', '', '');
INSERT INTO `t_porcess_outputs` VALUES ('8', '2', '任何组件', '', '更新', '');
INSERT INTO `t_porcess_outputs` VALUES ('9', '3', '活动清单', '', '更新', '');
INSERT INTO `t_porcess_outputs` VALUES ('10', '3', '假设日志', '', '更新', '');
INSERT INTO `t_porcess_outputs` VALUES ('11', '3', '经验教训登记册', '', '更新', '');
INSERT INTO `t_porcess_outputs` VALUES ('12', '3', '需求文件', '', '更新', '');
INSERT INTO `t_porcess_outputs` VALUES ('13', '3', '风险登记册', '', '更新', '');
INSERT INTO `t_porcess_outputs` VALUES ('14', '3', '相关方登记册', '', '更新', '');
INSERT INTO `t_porcess_outputs` VALUES ('15', '0', '组织过程资产', '', '更新', '');
INSERT INTO `t_porcess_outputs` VALUES ('16', '3', '经验教训登记册', '', '', '');
INSERT INTO `t_porcess_outputs` VALUES ('17', '0', '工作绩效报告', '', '', '');
INSERT INTO `t_porcess_outputs` VALUES ('18', '3', '成本预测', '', '更新', '');
INSERT INTO `t_porcess_outputs` VALUES ('19', '3', '问题日志', '', '更新', '');
INSERT INTO `t_porcess_outputs` VALUES ('20', '3', '进度预测', '', '更新', '');
INSERT INTO `t_porcess_outputs` VALUES ('21', '0', '变更请求', '', '批准的', '');
INSERT INTO `t_porcess_outputs` VALUES ('22', '3', '变更日志', '', '更新', '');
INSERT INTO `t_porcess_outputs` VALUES ('23', '0', '最终报告', '', '', '');
INSERT INTO `t_porcess_outputs` VALUES ('24', '0', '最终产品、服务或成果', '', '移交', '');
INSERT INTO `t_porcess_outputs` VALUES ('26', '2', '需求管理计划', '', '更新', '');
INSERT INTO `t_porcess_outputs` VALUES ('27', '3', '需求文件', '', '', '');
INSERT INTO `t_porcess_outputs` VALUES ('28', '3', '需求跟踪矩阵', '', '', '');
INSERT INTO `t_porcess_outputs` VALUES ('30', '3', '需求跟踪矩阵', '', '更新', '');
INSERT INTO `t_porcess_outputs` VALUES ('31', '2', '范围基准', '', '', '');
INSERT INTO `t_porcess_outputs` VALUES ('32', '0', '可交付成果', '', '验收的', '');
INSERT INTO `t_porcess_outputs` VALUES ('33', '0', '工作绩效信息', '', '', '');
INSERT INTO `t_porcess_outputs` VALUES ('34', '2', '范围管理计划', '', '更新', '');
INSERT INTO `t_porcess_outputs` VALUES ('35', '2', '范围基准', '', '更新', '');
INSERT INTO `t_porcess_outputs` VALUES ('36', '2', '进度基准', '', '更新', '');
INSERT INTO `t_porcess_outputs` VALUES ('37', '2', '成本基准', '', '更新', '');
INSERT INTO `t_porcess_outputs` VALUES ('38', '2', '绩效测量基准', '', '更新', '');
INSERT INTO `t_porcess_outputs` VALUES ('39', '2', '进度管理计划', '', '', '');
INSERT INTO `t_porcess_outputs` VALUES ('40', '3', '活动清单', '', '', '');
INSERT INTO `t_porcess_outputs` VALUES ('41', '3', '活动属性', '', '', '');
INSERT INTO `t_porcess_outputs` VALUES ('42', '3', '里程碑清单', '', '', '');
INSERT INTO `t_porcess_outputs` VALUES ('45', '3', '活动属性', '', '更新', '');
INSERT INTO `t_porcess_outputs` VALUES ('47', '3', '里程碑清单', '', '更新', '');
INSERT INTO `t_porcess_outputs` VALUES ('48', '3', '估算依据', '', '更新', '');
INSERT INTO `t_porcess_outputs` VALUES ('49', '3', '持续时间估算', '', '', '');
INSERT INTO `t_porcess_outputs` VALUES ('50', '2', '进度基准', '', '', '');
INSERT INTO `t_porcess_outputs` VALUES ('51', '3', '项目进度计划', '', '更新', '');
INSERT INTO `t_porcess_outputs` VALUES ('52', '3', '进度数据', '', '', '');
INSERT INTO `t_porcess_outputs` VALUES ('55', '2', '进度管理计划', '', '更新', '');
INSERT INTO `t_porcess_outputs` VALUES ('57', '3', '持续时间估算', '', '更新', '');
INSERT INTO `t_porcess_outputs` VALUES ('58', '3', '资源需求', '', '更新', '');
INSERT INTO `t_porcess_outputs` VALUES ('59', '3', '进度预测', '', '', '');
INSERT INTO `t_porcess_outputs` VALUES ('60', '3', '进度数据', '', '更新', '');
INSERT INTO `t_porcess_outputs` VALUES ('61', '2', '成本管理计划', '', '更新', '');
INSERT INTO `t_porcess_outputs` VALUES ('62', '3', '成本估算', '', '', '');
INSERT INTO `t_porcess_outputs` VALUES ('64', '2', '成本基准', '', '', '');
INSERT INTO `t_porcess_outputs` VALUES ('65', '0', '项目资金需求', '', '', '');
INSERT INTO `t_porcess_outputs` VALUES ('66', '3', '成本估算', '', '更新', '');
INSERT INTO `t_porcess_outputs` VALUES ('67', '2', '风险管理计划', '', '更新', '');
INSERT INTO `t_porcess_outputs` VALUES ('70', '2', '采购管理计划', '', '更新', '');
INSERT INTO `t_porcess_outputs` VALUES ('76', '2', '资源管理计划', '', '更新', '');
INSERT INTO `t_porcess_outputs` VALUES ('77', '2', '质量管理计划', '', '更新', '');
INSERT INTO `t_porcess_outputs` VALUES ('82', '2', '相关方参与计划', '', '更新', '');
INSERT INTO `t_porcess_outputs` VALUES ('83', '2', '沟通管理计划', '', '更新', '');
INSERT INTO `t_porcess_outputs` VALUES ('93', '3', '测试与评估文件', '', '更新', '');
INSERT INTO `t_porcess_outputs` VALUES ('94', '3', '团队章程', '', '更新', '');
INSERT INTO `t_porcess_outputs` VALUES ('95', '3', '相关方登记册', '', '', '');
INSERT INTO `t_porcess_outputs` VALUES ('101', '3', '资源需求', '', '', '');
INSERT INTO `t_porcess_outputs` VALUES ('102', '3', '资源日历', '', '更新', '');
INSERT INTO `t_porcess_outputs` VALUES ('103', '3', '资源分解结构', '', '更新', '');
INSERT INTO `t_porcess_outputs` VALUES ('109', '3', '项目团队派工单', '', '更新', '');
INSERT INTO `t_porcess_outputs` VALUES ('114', '3', '物质资源分配单', '', '更新', '');
INSERT INTO `t_porcess_outputs` VALUES ('124', '3', '风险登记册', '', '', '');
INSERT INTO `t_porcess_outputs` VALUES ('125', '3', '风险报告', '', '更新', '');
INSERT INTO `t_porcess_outputs` VALUES ('130', '3', '成本预测', '', '', '');
INSERT INTO `t_porcess_outputs` VALUES ('133', '3', '估算依据', '', '', '');
INSERT INTO `t_porcess_outputs` VALUES ('134', '3', '物质资源分配单', '', '', '');
INSERT INTO `t_porcess_outputs` VALUES ('135', '3', '项目日历', '', '', '');
INSERT INTO `t_porcess_outputs` VALUES ('136', '3', '项目沟通记录', '', '', '');
INSERT INTO `t_porcess_outputs` VALUES ('137', '3', '项目进度计划', '', '', '');
INSERT INTO `t_porcess_outputs` VALUES ('139', '3', '项目范围说明书', '', '', '');
INSERT INTO `t_porcess_outputs` VALUES ('140', '3', '项目团队派工单', '', '', '');
INSERT INTO `t_porcess_outputs` VALUES ('141', '3', '质量控制测量结果', '', '', '');
INSERT INTO `t_porcess_outputs` VALUES ('143', '3', '质量报告', '', '', '');
INSERT INTO `t_porcess_outputs` VALUES ('144', '3', '资源分解结构', '', '', '');
INSERT INTO `t_porcess_outputs` VALUES ('145', '3', '资源日历', '', '', '');
INSERT INTO `t_porcess_outputs` VALUES ('146', '3', '风险报告', '', '', '');
INSERT INTO `t_porcess_outputs` VALUES ('147', '3', '团队章程', '', '', '');
INSERT INTO `t_porcess_outputs` VALUES ('148', '3', '测试与评估文件', '', '', '');
INSERT INTO `t_porcess_outputs` VALUES ('149', '2', '需求管理计划', '', '', '');
INSERT INTO `t_porcess_outputs` VALUES ('150', '2', '成本管理计划', '', '', '');
INSERT INTO `t_porcess_outputs` VALUES ('151', '2', '质量管理计划', '', '', '');
INSERT INTO `t_porcess_outputs` VALUES ('152', '2', '资源管理计划', '', '', '');
INSERT INTO `t_porcess_outputs` VALUES ('153', '2', '沟通管理计划', '', '', '');
INSERT INTO `t_porcess_outputs` VALUES ('154', '2', '风险管理计划', '', '', '');
INSERT INTO `t_porcess_outputs` VALUES ('155', '2', '采购管理计划', '', '', '');
INSERT INTO `t_porcess_outputs` VALUES ('156', '2', '相关方参与计划', '', '', '');
INSERT INTO `t_porcess_outputs` VALUES ('170', '0', '可交付成果', '', '核实的', '');
INSERT INTO `t_porcess_outputs` VALUES ('177', '0', '事业环境因素', '', '更新', '');
INSERT INTO `t_porcess_outputs` VALUES ('178', '0', '团队绩效评价', '', '', '');
INSERT INTO `t_porcess_outputs` VALUES ('180', '0', '采购策略', '', '', '');
INSERT INTO `t_porcess_outputs` VALUES ('181', '0', '招标文件', '', '', '');
INSERT INTO `t_porcess_outputs` VALUES ('182', '0', '采购工作说明书', '', '', '');
INSERT INTO `t_porcess_outputs` VALUES ('183', '0', '供方选择标准', '', '', '');
INSERT INTO `t_porcess_outputs` VALUES ('184', '0', '自制或外购决策', '', '', '');
INSERT INTO `t_porcess_outputs` VALUES ('185', '0', '独立成本估算', '', '', '');
INSERT INTO `t_porcess_outputs` VALUES ('186', '0', '选定的卖方', '', '', '');
INSERT INTO `t_porcess_outputs` VALUES ('187', '0', '协议', '', '', '');
INSERT INTO `t_porcess_outputs` VALUES ('188', '0', '结束的采购', '', '', '');
INSERT INTO `t_porcess_outputs` VALUES ('189', '0', '采购文档', '', '更新', '');
INSERT INTO `t_porcess_outputs` VALUES ('190', '3', '质量测量指标', '', '', '');

-- ----------------------------
-- Table structure for `t_porcess_tools`
-- ----------------------------
DROP TABLE IF EXISTS `t_porcess_tools`;
CREATE TABLE `t_porcess_tools` (
  `tool_id` int(11) NOT NULL AUTO_INCREMENT,
  `tool_category_id` int(11) NOT NULL DEFAULT '0',
  `tool_name` varchar(64) NOT NULL,
  `tool_info` varchar(2048) NOT NULL,
  `tool_extra_info` varchar(256) NOT NULL,
  PRIMARY KEY (`tool_id`),
  UNIQUE KEY `key` (`tool_name`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=158 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_porcess_tools
-- ----------------------------
INSERT INTO `t_porcess_tools` VALUES ('0', '0', '', '', '');
INSERT INTO `t_porcess_tools` VALUES ('1', '0', '专家判断', '基于某应用领域、知识领域、学科和行业等的专业知识而做出的，关于当前活动的合理判断。这些专业知识可来自具有专业学历、知识、技能、经验或培训经历的任何小组或个人。', '相关专家根据经验进行判断。');
INSERT INTO `t_porcess_tools` VALUES ('2', '1', '头脑风暴', '在短时间内获得大量创意，适用于团队环境，需要引导者进行引导。头脑风暴由两个部分构成：创意产生和创意分析。', '就一个主题广泛讨论产生需求并收集。');
INSERT INTO `t_porcess_tools` VALUES ('3', '1', '焦点小组', '召集预定的相关方和主题专家，了解他们对所讨论的产品、服务或成果的期望和态度的一种启发式技术。', '通过专业的主题专家引导互动达成共识。');
INSERT INTO `t_porcess_tools` VALUES ('4', '1', '访谈', '通过与相关方直接交谈，来获取信息的正式或非正式方法。', '与相关人交谈获取信息。');
INSERT INTO `t_porcess_tools` VALUES ('5', '2', '冲突管理', '项目经理采用团队基本规则、团队规范及成熟的项目管理实践（如沟通规划和角色定义），用以减少冲突的数量。', '');
INSERT INTO `t_porcess_tools` VALUES ('6', '2', '引导', '引导是指有效地引导一系列事件达成成功决策、解决方案或结论的能力。', '引导与主题研究并用把主要相关方召集一起定义需求。');
INSERT INTO `t_porcess_tools` VALUES ('7', '2', '会议管理', '会议管理是采取步骤确保会议有效并高效地达到预期目标。', '');
INSERT INTO `t_porcess_tools` VALUES ('8', '0', '会议', '开会解决项目的问题或达成共识。', '');
INSERT INTO `t_porcess_tools` VALUES ('9', '1', '核对单', '核对单是包括需要考虑的项目、行动或要点的清单。它常被用作提醒。', '核对单是用来对结果进行检查的。');
INSERT INTO `t_porcess_tools` VALUES ('10', '0', '项目管理信息系统', '由收集、整合和传播项目管理过程成果的工具和技术所组成的信息系统。', 'PMIS 提供信息技术 (IT) 软件工具，例如进度计划软件工具、工作授权系统、配置管理系统、信息收集与发布系统，以及进入其他在线自动化系统（如公司知识库）的接口。');
INSERT INTO `t_porcess_tools` VALUES ('11', '2', '积极倾听', '积极倾听技术包括告知已收到、澄清与确认信息、理解，以及消除妨碍理解的障碍。', '');
INSERT INTO `t_porcess_tools` VALUES ('13', '2', '领导力', '领导力技能包括指导、激励和带领团队的能力。这些技能可能包括协商、抗压、沟通、解决问题、批判性思考和人际关系技能等基本能力', '');
INSERT INTO `t_porcess_tools` VALUES ('14', '2', '人际交往', '人际交往是通过与他人互动交流信息，建立联系。', '人际交往有利于项目经理及其团队通过非正式组织解决问题，影响相关方的行动，以及提高相关方对项目工作和成果的支持，从而改善绩效。');
INSERT INTO `t_porcess_tools` VALUES ('15', '2', '政治意识', '政治意识是指对正式和非正式权力关系的认知，以及在这些关系中工作的意愿。', '');
INSERT INTO `t_porcess_tools` VALUES ('16', '0', '知识管理', '知识管理指管理显性和隐性知识，旨在重复使用现有知识并生成新知识。', '');
INSERT INTO `t_porcess_tools` VALUES ('17', '0', '信息管理', '信息管理工具和技术用于创建人们与知识之间的联系，可以有效促进简单、明确的显性知识的分享。', '');
INSERT INTO `t_porcess_tools` VALUES ('18', '3', '备选方案分析', '一种对已识别的可选方案进行评估的技术，用来决定选择哪种方案或使用何种方法来执行项目工作。', '');
INSERT INTO `t_porcess_tools` VALUES ('19', '3', '成本效益分析', '成本效益分析是用来估算备选方案优势和劣势的财务分析工具，以确定可以创造最佳效益的备选方案。', '成本效益分析有助于在项目出现偏差时确定最节约成本的纠正措施。');
INSERT INTO `t_porcess_tools` VALUES ('20', '3', '挣值分析', '挣值分析将实际进度和成本绩效与绩效测量基准进行比较。EVM把范围基准、成本基准和进度基准整合起来，形成绩效测量基准。', '挣值分析，针对每个工作包和控制账户，计算并监测计划价值（PV）、挣值（EV）和实际成本（AC）。');
INSERT INTO `t_porcess_tools` VALUES ('21', '3', '根本原因分析', '根本原因分析是确定引起偏差、缺陷或风险的根本原因的一种分析技术。', '用于识别问题的根本原因并解决问题。');
INSERT INTO `t_porcess_tools` VALUES ('22', '3', '趋势分析', '趋势分析，基于当前绩效信息来确定未来项目阶段所需的资源。', '趋势分析检查项目绩效随时间的变化情况，可用于确定绩效是在改善还是在恶化。');
INSERT INTO `t_porcess_tools` VALUES ('23', '3', '偏差分析', '偏差分析审查目标绩效与实际绩效之间的差异（或偏差），可涉及持续时间估算、成本估算、资源使用、资源费率、技术绩效和其他测量指标。', '');
INSERT INTO `t_porcess_tools` VALUES ('24', '4', '决策技术', '用于从不同备选方案选择行动方案。', '');
INSERT INTO `t_porcess_tools` VALUES ('25', '0', '变更控制工具', '辅助变更管理和（或）配置管理的手动或自动的工具。这套工具至少能够支持变更控制委员会的活动。', '');
INSERT INTO `t_porcess_tools` VALUES ('26', '4', '投票', '投票是一种为达成某种期望结果，而对多个未来行动方案进行评估的集体决策技术和过程。本技术用于生成、归类和排序产品需求。', '投票，一致性同意（全票通过），大多数同意（超过50%人同意），相对多同意（人数相对多的同意）。');
INSERT INTO `t_porcess_tools` VALUES ('27', '4', '独裁型决策制定', '采用这种方法，将由一个人负责为整个集体制定决策。', '独裁型决策制定，负责人独断。');
INSERT INTO `t_porcess_tools` VALUES ('28', '4', '多标准决策分析', '该技术借助决策矩阵，用系统分析方法建立诸如风险水平、不确定性和价值收益等多种标准，以对众多创意进行评估和排序。', '多标准决策分析，借助决策矩阵来决策。');
INSERT INTO `t_porcess_tools` VALUES ('29', '3', '文件分析', '文件分析包括审核和评估任何相关的文件信息。', '文件分析用于通过分析现有文件，识别与需求相关的信息来获取需求。');
INSERT INTO `t_porcess_tools` VALUES ('30', '3', '回归分析', '通过考察一系列输入变量及其对应的输出结果，建立数学或统计关系的一种分析技术。', '用于项目结果的不同项目变量之间的相互关系，以提高未来项目的绩效。');
INSERT INTO `t_porcess_tools` VALUES ('31', '1', '问卷调查', '设计一系列书面问题，向众多受访者快速收集信息。', '通过问卷调查来获取需求或信息。');
INSERT INTO `t_porcess_tools` VALUES ('32', '1', '标杆对照', '标杆对照是指将实际或计划的产品、流程和实践与其他可比组织的做法进行比较，以便识别最佳实践、形成改进意见，并为绩效考核提供依据。', '将实际或计划和已经存在的内部或外部项目进行对照找出改进点。');
INSERT INTO `t_porcess_tools` VALUES ('33', '2', '名义小组技术', '用于促进头脑风暴的一种技术，通过投票排列最有用的创意，以便进一步开展头脑风暴或优先排序。', '通过投票排序，来确定更优的需求或进一步需要头脑风暴的需求。');
INSERT INTO `t_porcess_tools` VALUES ('34', '2', '观察和交谈', '观察和交谈是指直接察看个人在各自的环境中如何执行工作（或任务）和实施流程。', '通过观察和交谈来识别需求和信息。观察，也称为“工作跟随”');
INSERT INTO `t_porcess_tools` VALUES ('35', '0', '系统交互图', '系统交互图是范围模型的一个例子，它是对产品范围的可视化描绘，显示业务系统（过程、设备、计算机系统等）及其与人和其他系统（行动者）之间的交互方式。', '通过图示去展示整个系统和最后的使用者交互情况从而进一步分析。');
INSERT INTO `t_porcess_tools` VALUES ('36', '0', '原型法', '原型法是指在实际制造预期产品之前，先造出该产品的模型，并据此征求对需求的早期反馈。', '减轻风险的一种手段。提前提供模型原型，帮助干系人了解工作的未来成果，从而减少未来返工的风险。');
INSERT INTO `t_porcess_tools` VALUES ('37', '5', '亲和图', '用来对大量创意进行分组的技术，以便进一步审查和分析。', '亲和图：对大量创意进行类型分组的技术。');
INSERT INTO `t_porcess_tools` VALUES ('38', '5', '思维导图', '把从头脑风暴中获得的创意整合成一张图的技术，用以反映创意之间的共性与差异，激发新创意。', '把头脑风暴整合成思维导图显示差异，以便于进一步激发创意。');
INSERT INTO `t_porcess_tools` VALUES ('39', '0', '产品分析', '在以产品为可交付成果的项目上，用来定义范围的一种工具。通常，针对产品提问并回答，形成对将要生产的产品的用途、特征和其他方面的描述。', '');
INSERT INTO `t_porcess_tools` VALUES ('40', '0', '分解', '分解是一种把项目范围和项目可交付成果逐步划分为更小、更便于管理的组成部分的技术。', '');
INSERT INTO `t_porcess_tools` VALUES ('41', '0', '检查', '检查是指检验工作产品，以确定是否符合书面标准', '检查是指开展测量、审查与确认等活动，来判断工作和可交付成果是否符合需求和产品验收标准。');
INSERT INTO `t_porcess_tools` VALUES ('42', '3', '数据分析技术', '用于组织、评估和评价数据与信息。', '');
INSERT INTO `t_porcess_tools` VALUES ('46', '0', '滚动式规划', '一种迭代式的规划技术，对近期要完成的工作进行详细规划，对远期工作只做粗略规划。', '一种渐进明细的规划方式，适用于工作包、规划包以及采用敏捷或瀑布式方法的发布规划。');
INSERT INTO `t_porcess_tools` VALUES ('47', '0', '紧前关系绘图法', '紧前关系绘图法（PDM）是创建进度模型的一种技术，用节点表示活动，用一种或多种逻辑关系连接活动，以显示活动的实施顺序。', 'PDM 包括四种依赖关系或逻辑关系：完成到开始（FS）、完成到完成（FF）、开始到开始（SS）和开始到结束（SF）。');
INSERT INTO `t_porcess_tools` VALUES ('48', '0', '确定和整合依赖关系', '依赖关系可能是强制或选择的，内部或外部的。', '四种依赖关系包括：强制性外部依赖关系、强制性内部依赖关系、选择性外部依赖关系和选择性内部依赖关系。');
INSERT INTO `t_porcess_tools` VALUES ('49', '0', '提前量和滞后量', '提前量是相对于紧前活动，紧后活动可以提前的时间量。滞后量是相对于紧前活动，紧后活动需要推迟的时间量。', '');
INSERT INTO `t_porcess_tools` VALUES ('50', '0', '类比估算', '类比估算是一种使用相似活动或项目的历史数据，来估算当前活动或项目的持续时间或成本的技术。', '');
INSERT INTO `t_porcess_tools` VALUES ('51', '0', '参数估算', '参数估算是一种基于历史数据和项目参数，使用某种算法来计算成本或持续时间的估算技术。', '');
INSERT INTO `t_porcess_tools` VALUES ('52', '0', '三点估算', '通过考虑估算中的不确定性和风险，可以提高持续时间估算的准确性。使用三点估算有助于界定活动持续时间的近似区间：最可能时间 (tM)、最乐观时间 (tO)和最悲观时间 (tP)。', '三角分布，TE=(TO+TM+TP)/3；贝塔分布，即“PERT技术”，TE=(TO+4*TM+TP)/6。其中TO，最乐观时间；TM，最可能时间；TP，最悲观时间。进度估算时默认使用三角分布，成本估算默认使用贝塔分布。');
INSERT INTO `t_porcess_tools` VALUES ('53', '0', '自下而上估算', '自下而上估算是一种估算项目持续时间或成本的方法，通过从下到上逐层汇总 WBS 组成部分的估算而得到项目估算。', '');
INSERT INTO `t_porcess_tools` VALUES ('54', '3', '储备分析', '储备分析用于确定项目所需的应急储备量和管理储备。', '成本管理的储备分析：为应对成本的不确定性，成本估算中可以包括应急储备（有时称为“应急费用”）。\r\n储备分析包括两部分：\r\n	1. 应急储备，包含在成本基准里面的一部分预算，用来应付那些“已知-未知”（已知是风险，但是不知道什么时候发生的）的风险使用，由项目团队可以自行使用，可以直接使用；\r\n	2. 管理储备，不包含在成本基准里面，为了管理控制目的特意留的项目预算，应付不可预见的工作，即“未知-未知”（未识别出的风险，也不知道什么时候发生的）的风险，需要申请批准后才可以使用的，批准后的管理储备，需要纳入成本基');
INSERT INTO `t_porcess_tools` VALUES ('55', '0', '进度网络分析', '进度网络分析是创建项目进度模型的一种综合技术，它采用了其他几种技术，例如关键路径法、资源优化技术和建模技术。', '');
INSERT INTO `t_porcess_tools` VALUES ('56', '0', '关键路径法', '关键路径法用于在进度模型中估算项目最短工期，不考虑任何资源限制的情况下完成。', '关键路径是项目中时间最长的活动顺序，决定着可能的项目最短工期。最长路径的总浮动时间最少，通常为零。');
INSERT INTO `t_porcess_tools` VALUES ('57', '0', '资源优化', '资源优化用于调整活动的开始和完成日期，以调整计划使用的资源，使其等于或少于可用的资源。资源优化技术是根据资源供需情况，来调整进度模型的技术，包括：资源平衡、资源平滑。', '资源平衡，一种资源优化技术，同一资源同一时段多个任务时使用，并可能会影响关键路径。\r\n资源平滑，一种资源优化技术，在不影响关键路径的情况下使活动在其自由浮动时间和总浮动时间调整。');
INSERT INTO `t_porcess_tools` VALUES ('58', '3', '假设情景分析', '假设情景分析是对各种情景进行评估，预测它们对项目目标的影响（积极或消极的）。', '假设情景分析就是对“如果情景 X 出现，情况会怎样？”这样的问题进行分析，即基于已有的进度计划，考虑各种各样的情景。');
INSERT INTO `t_porcess_tools` VALUES ('59', '3', '模拟', '模拟是把单个项目风险和不确定性的其他来源模型化的方法，以评估它们对项目目标的潜在影响。', '最常见的模拟技术是蒙特卡罗分析，它利用风险和其他不确定资源计算整个项目可能的进度结果。');
INSERT INTO `t_porcess_tools` VALUES ('60', '0', '进度压缩', '进度压缩技术是指在不缩减项目范围的前提下，缩短或加快进度工期，以满足进度制约因素、强制日期或其他进度目标。', '进度压缩技术，包含两个：\r\n	1. 赶工：增加资源，可能导致风险或/和成本的增加；\r\n	2. 快速跟进：并行开发，可能返工和风险增加。\r\n假如题目中不涉及资源紧张类的词语，进度压缩技术优先选择赶工，因为这样可以保证返工的概率不增加。\r\n赶工就是指加快关键路径上的活动，赶工只适合那些可以通过增加资源且位于关键路径上的活动。');
INSERT INTO `t_porcess_tools` VALUES ('61', '0', '敏捷发布规划', '敏捷发布规划基于项目路线图和产品发展愿景，提供了高度概括的发布进度时间轴。同时，敏捷发布规划还确定了发布的迭代或冲刺次数，使产品负责人和团队能够决定需要开发的内容，并基于业务目标、依赖关系和障碍因素确定达到产品放行所需的时间。', '');
INSERT INTO `t_porcess_tools` VALUES ('62', '3', '迭代燃尽图', '这类图用于追踪迭代未完项中尚待完成的工作。它基于迭代规划中确定的工作，分析与理想燃尽图的偏差。可使用预测趋势线来预测迭代结束时可能出现的偏差，以及在迭代期间应该采取的合理行动。', '');
INSERT INTO `t_porcess_tools` VALUES ('63', '3', '绩效审查', '绩效审查是指根据进度基准，测量、对比和分析进度绩效，如实际开始和完成日期、已完成百分比，以及当前工作的剩余持续时间。', '');
INSERT INTO `t_porcess_tools` VALUES ('64', '3', '质量成本', '与项目有关的质量成本 (COQ) 包含以下一种或多种成本：1. 一致性成本：预防成本、评估成本 2. 不一致成本：内部失败成本、外部失败成本。', '');
INSERT INTO `t_porcess_tools` VALUES ('65', '0', '成本汇总', '在项目工作分解结构的给定层次或给定成本控制账户上，对与各工作包相关的较低层次的成本估算进行汇总。', '');
INSERT INTO `t_porcess_tools` VALUES ('66', '0', '历史信息审核', '审核历史信息有助于进行参数估算或类比估算。历史信息可包括各种项目特征（参数），它们用于建立数学模型预测项目总成本。', '');
INSERT INTO `t_porcess_tools` VALUES ('67', '0', '资金限制平衡', '应该根据对项目资金的任何限制，来平衡资金支出。如果发现资金限制与计划支出之间的差异，则可能需要调整工作的进度计划，以平衡资金支出水平。', '');
INSERT INTO `t_porcess_tools` VALUES ('68', '0', '融资', '融资是指为项目获取资金。长期的基础设施、工业和公共服务项目通常会寻求外部融资。', '');
INSERT INTO `t_porcess_tools` VALUES ('69', '0', '完工尚需绩效指数', '完工尚需绩效指数（TCPI）是一种为了实现特定的管理目标，剩余资源的使用必须达到的成本绩效指标，是完成剩余工作所需的成本与剩余预算之比。', '基于 BAC 的 TCPI 公式：TCPI =（BAC –EV）/（BAC – AC）。剩余的工作/剩余的钱。也就是说，必须要用余下的钱完成余下的工作，才能符合预算要求。');
INSERT INTO `t_porcess_tools` VALUES ('72', '5', '流程图', '流程图，也称过程图，用来显示在一个或多个输入转化成一个或多个输出的过程中，所需要的步骤顺序和可能分支。', '流程图（过程图）：流程图展示了引发缺陷的一系列步骤。');
INSERT INTO `t_porcess_tools` VALUES ('73', '5', '逻辑数据模型', '。逻辑数据模型把组织数据可视化，以商业语言加以描述，不依赖任何特定技术。逻辑数据模型可用于识别会出现数据完整性或其他质量问题的地方。', '');
INSERT INTO `t_porcess_tools` VALUES ('74', '5', '矩阵图', '矩阵图在行列交叉的位置展示因素、原因和目标之间的关系强弱。', '矩阵图：有助于识别对项目成功至关重要的质量测量指标。');
INSERT INTO `t_porcess_tools` VALUES ('75', '0', '测试与检查的规划', '在规划阶段，项目经理和项目团队决定如何测试或检查产品。', '');
INSERT INTO `t_porcess_tools` VALUES ('76', '3', '过程分析', '过程分析可以识别过程改进机会，同时检查在过程期间遇到的问题、制约因素，以及非增值活动。', '');
INSERT INTO `t_porcess_tools` VALUES ('77', '5', '因果图', '因果图，又称“鱼骨图”、“why-why分析图”和“石川图”，将问题陈述的原因分解为离散的分支，有助于识别问题的主要原因或根本原因。', '因果图（鱼骨图、石川图）：追溯问题来源、根本原因。');
INSERT INTO `t_porcess_tools` VALUES ('78', '5', '直方图', '直方图是一种展示数字数据的条形图，可以展示每个可交付成果的缺陷数量、缺陷成因的排列、各个过程的不合规次数，或项目或产品缺陷的其他表现形式。', '直方图：集中趋势、分散程度和统计分布形式。');
INSERT INTO `t_porcess_tools` VALUES ('79', '5', '散点图', '散点图是一种展示两个变量之间的关系的图形，它能够展示两支轴的关系，一支轴表示过程、环境或活动的任何要素，另一支轴表示质量缺陷。', '散点图（相关图）：两个变量之间的相关性的展示。');
INSERT INTO `t_porcess_tools` VALUES ('80', '0', '审计', '审计是用于确定项目活动是否遵循了组织和项目的政策、过程与程序的一种结构化且独立的过程。质量审计通常由项目外部的团队开展。', '');
INSERT INTO `t_porcess_tools` VALUES ('81', '0', '面向X的设计', '面向 X 的设计 (DfX) 是产品设计期间可采用的一系列技术指南，旨在优化设计的特定方面，可以控制或提高产品最终特性。', '是在每个专题执行前的设计规划。使用 DfX 可以降低成本、改进质量、提高绩效和客户满意度。');
INSERT INTO `t_porcess_tools` VALUES ('82', '0', '问题解决', '问题解决发现解决问题或应对挑战的解决方案。它包括收集其他信息、具有批判性思维的、创造性的、量化的和/或逻辑性的解决方法。', '');
INSERT INTO `t_porcess_tools` VALUES ('83', '0', '质量改进方法', '质量改进的开展，可基于质量控制过程的发现和建议、质量审计的发现，或管理质量过程的问题解决。', '两个常用的质量改进工具：1. 计划 — 实施 — 检查 — 行动 2. 六西格玛。');
INSERT INTO `t_porcess_tools` VALUES ('84', '1', '统计抽样', '统计抽样是指从目标总体中选取部分样本用于检查（如从 75 张工程图纸中随机抽取 10 张）。', '抽样的频率和规模应在规划质量管理过程中确定。');
INSERT INTO `t_porcess_tools` VALUES ('85', '1', '核查表', '在收集数据时用作查对清单的计数表格。', '核查表侧重于过程。');
INSERT INTO `t_porcess_tools` VALUES ('86', '5', '控制图', '按时间顺序展示过程数据，并将这些数据与既定的控制界限相比较的一种图形。控制图有一条中心线，有助于观察图中的数据点向两边控制界限偏移的趋势。', '控制图：过程是否稳定的、是否受控。\r\n控制图有五条线：均线（中心线）、控制上线和控制下线（控制线设在均线正负3标准差位置）、规格上线和规格下线（合格线、质量允许的偏差范围，在控制线外）。\r\n用法：按时间顺序把样本统计值描在图中，如果描点：1.落在控制线外 2.在控制线内排列不随机（连续7点同趋势，都是升或者降） 均说明过程异常。');
INSERT INTO `t_porcess_tools` VALUES ('88', '0', '测试与产品评估', '测试的目的是找出产品或服务中存在的错误、缺陷、漏洞或其他不合规问题。用于评估各项需求的测试的类型、数量和程度是项目质量计划的一部分，具体取决于项目的性质、时间、预算或其他制约因素。', '');
INSERT INTO `t_porcess_tools` VALUES ('89', '5', '层级型', '可以采用传统的组织结构图，自上而下地显示各种职位及其相互关系。', '层级型包括：工作分解结构 (WBS)、组织分解结构 (OBS)、资源分解结构、责任分配矩阵、文本型。');
INSERT INTO `t_porcess_tools` VALUES ('90', '5', '责任分配矩阵', '责任分配矩阵的一种常见类型，使用执行、负责、咨询和知情等词语来定义相关方在项目活动中的参与状态。', '责任分配矩阵展示项目资源在各个工作包中的任务分配。');
INSERT INTO `t_porcess_tools` VALUES ('91', '5', '文本型', '如果需要详细描述团队成员的职责，就可以采用文本型。文本型文件通常以概述的形式，提供诸如职责、职权、能力和资格等方面的信息。', '');
INSERT INTO `t_porcess_tools` VALUES ('92', '0', '组织理论', '组织理论阐述个人、团队和组织部门的行为方式。', '');
INSERT INTO `t_porcess_tools` VALUES ('93', '0', '集中办公', '集中办公是指把许多或全部最活跃的项目团队成员安排在同一个物理地点工作，以增强团队工作能力。集中办公既可以是临时的（如仅在项目特别重要的时期），也可以贯穿整个项目。', '');
INSERT INTO `t_porcess_tools` VALUES ('94', '0', '虚拟团队', '虚拟团队可以利用技术来营造在线团队环境，以供团队存储文件、使用在线对话来讨论问题，以及保存团队日历。', '虚拟团队的使用能带来很多好处，例如，使用更多技术熟练的资源、降低成本、减少出差及搬迁费用，以及拉近团队成员与供应商、客户或其他重要相关方的距离。');
INSERT INTO `t_porcess_tools` VALUES ('95', '0', '沟通技术', '用于项目相关方之间传递信息的特定工具、系统或计算机程序等。', '');
INSERT INTO `t_porcess_tools` VALUES ('96', '0', '认可与奖励', '在建设项目团队过程中，需要对成员的优良行为给予认可与奖励。', '');
INSERT INTO `t_porcess_tools` VALUES ('97', '0', '培训', '项目经理应该按资源管理计划中的安排来实施预定的培训，也应该根据结果，来开展必要的计划外培训。', '培训包括旨在提高项目团队成员能力的全部活动，可以是正式或非正式的，方式包括课堂培训、在线培训、计算机辅助培训、在岗培训（由其他项目团队成员提供）、辅导及训练。');
INSERT INTO `t_porcess_tools` VALUES ('98', '0', '个人和团队评估', '个人和团队评估工具能让项目经理和项目团队洞察成员的优势和劣势。', '');
INSERT INTO `t_porcess_tools` VALUES ('99', '2', '影响力', '在矩阵环境中，项目经理对团队成员通常没有或仅有很小的命令职权，所以他们适时影响相关方的能力，对保证项目成功非常关键。', '影响力主要体现在如下各方面：说服他人；清晰表达观点和立场；积极且有效的倾听；了解并综合考虑各种观点；收集相关信息，在维护相互信任的关系下，解决问题并达成一致意见。');
INSERT INTO `t_porcess_tools` VALUES ('100', '2', '激励', '激励为某人采取行动提供了理由。提高团队参与决策的能力并鼓励他们独立工作。', '');
INSERT INTO `t_porcess_tools` VALUES ('101', '2', '谈判', '谈判是为达成协议而进行的讨论', '团队成员之间的谈判旨在就项目需求达成共识。谈判有助于在团队成员之间建立融洽的相互信任的关系。');
INSERT INTO `t_porcess_tools` VALUES ('102', '2', '团队建设', '团队建设是通过举办各种活动，强化团队的社交关系，打造积极合作的工作环境。', '团队建设活动旨在帮助各团队成员更加有效地协同工作。非正式的沟通和活动有助于建立信任和良好的工作关系。项目过程中需要持续不断地开展团队建设。');
INSERT INTO `t_porcess_tools` VALUES ('103', '2', '制定决策', '管理团队中的决策包括谈判能力以及影响组织与项目管理团队的能力，而不是决策工具集所描述的一系列工具。', '进行有效决策需要：着眼于所要达到的目标；遵循决策流程；研究环境因素；分析可用信息；激发团队创造力；理解风险。');
INSERT INTO `t_porcess_tools` VALUES ('104', '2', '情商', '情商指识别、评估和管理个人情绪、他人情绪及团体情绪的能力。', '');
INSERT INTO `t_porcess_tools` VALUES ('106', '0', '沟通需求分析', '分析沟通需求，确定项目相关方的信息需求，包括所需信息的类型和格式，以及信息对相关方的价值。', '');
INSERT INTO `t_porcess_tools` VALUES ('108', '0', '沟通模型', '沟通模型可以是最基本的线性（发送方和接收方）沟通过程，也可以是增加了反馈元素（发送方、接收方和反馈）、更具互动性的沟通形式，甚至可以是融合了发送方或接收方的人性因素、试图考虑沟通复杂性的更加复杂的沟通模型。', '1. 基本的发送方和接收方沟通模型示例：编码、传递信息、解码。 2. 互动沟通模型示例：确认已收到；反馈/响应。');
INSERT INTO `t_porcess_tools` VALUES ('109', '0', '沟通方法', '项目相关方之间用于分享信息的沟通方法有几种。', '沟通方法有 3 种（沟通渠道总量 = n*(n-1)/2，其中 n 代表干系人的数量。）：\r\n1. 交互式沟通：两方或多方进行信息的沟通，相互知道内容，如会议、电话、QQ、视频会议等，沟通效率最高的方式；\r\n2. 推式沟通：确保信息发送，但是不确保信息的接收方接收和理解，如邮件、备忘录，适用于项目相关性比较大的人之间；\r\n3. 拉式沟通：用于信息量很大的，将信息发送在指定的内容，需要的人自己去获取，适用于项目相关人员之间的通知。');
INSERT INTO `t_porcess_tools` VALUES ('110', '2', '文化意识', '文化意识指理解个人、群体和组织之间的差异，并据此调整项目的沟通策略。', '');
INSERT INTO `t_porcess_tools` VALUES ('111', '2', '沟通风格评估', '规划沟通活动时，用于识别与相关方开展沟通的优选沟通方法、形式和内容的一种技术。', '');
INSERT INTO `t_porcess_tools` VALUES ('112', '5', '相关方参与度评估矩阵', '将当前与期望的相关方参与程度进行比较的一种矩阵。', '');
INSERT INTO `t_porcess_tools` VALUES ('114', '6', '沟通胜任力', '经过裁剪的沟通技能的组合，有助于明确关键信息的目的、建立有效关系、实现信息共享和采取领导行为。', '');
INSERT INTO `t_porcess_tools` VALUES ('115', '6', '反馈', '反馈是关于沟通、可交付成果或情况的反应信息。', '');
INSERT INTO `t_porcess_tools` VALUES ('116', '6', '非口头技能', '例如，通过示意、语调和面部表情等适当的肢体语言来表达意思。镜像模仿和眼神交流也是重要的技能。团队成员应该知道如何通过说什么和不说什么来表达自己的想法。', '');
INSERT INTO `t_porcess_tools` VALUES ('117', '6', '演示', '演示是信息和/或文档的正式交付。', '');
INSERT INTO `t_porcess_tools` VALUES ('118', '0', '项目报告发布', '项目报告发布是收集和发布项目信息的行为。项目信息应发布给众多相关方群体。应针对每种相关方来调整项目信息发布的适当层次、形式和细节。', '');
INSERT INTO `t_porcess_tools` VALUES ('119', '3', '相关方分析', '通过系统收集和分析各种定量与定性信息，来确定在整个项目中应该考虑哪些人的利益的一种技术。', '相关方分析会产生相关方清单和关于相关方的各种信息。相关方利害关系包括：兴趣、权利、所有权、知识和贡献。');
INSERT INTO `t_porcess_tools` VALUES ('120', '3', '假设条件和制约因素分析', '开展假设条件和制约因素分析，来探索假设条件和制约因素的有效性，确定其中哪些会引发项目风险。', '');
INSERT INTO `t_porcess_tools` VALUES ('121', '3', 'SWOT分析', '这是对项目的优势、劣势、机会和威胁 (SWOT) 进行逐个检查。', '');
INSERT INTO `t_porcess_tools` VALUES ('122', '0', '提示清单', '提示清单是关于可能引发单个项目风险以及可作为整体项目风险来源的风险类别的预设清单。', '');
INSERT INTO `t_porcess_tools` VALUES ('123', '3', '风险数据质量评估', '评估风险数据对风险管理的有用程度的一种技术。', '风险数据是开展定性风险分析的基础。风险数据质量评估旨在评价关于单个项目风险的数据的准确性和可靠性。');
INSERT INTO `t_porcess_tools` VALUES ('124', '3', '风险概率和影响评估', '风险概率评估考虑的是特定风险发生的可能性，而风险影响评估考虑的是风险对一项或多项项目目标的潜在影响。', '');
INSERT INTO `t_porcess_tools` VALUES ('125', '3', '其他风险参数评估', '为了方便未来分析和行动，在对单个项目风险进行优先级排序时，项目团队可能考虑（除概率和影响以外的）其他风险特征。', '此类特征可能包括：紧迫性、临近性、潜伏期、可管理性、可控性、可检测性、连通性、战略影响力和密切性。');
INSERT INTO `t_porcess_tools` VALUES ('126', '0', '风险分类', '项目风险可依据风险来源（如采用风险分解结构 [RBS]）、受影响的项目领域（如采用工作分解结构 [WBS]），以及其他实用类别（如项目阶段、项目预算、角色和职责）来分类，确定哪些项目领域最容易被不确定性影响；风险还可以根据共同的根本原因进行分类。', '应该在风险管理计划中规定可用于项目的风险分类方法。');
INSERT INTO `t_porcess_tools` VALUES ('127', '5', '概率和影响矩阵', '把每个风险发生的概率和一旦发生对项目目标的影响映射起来的一种表格。', '使用概率和影响矩阵，来为单个项目风险分配优先级别。');
INSERT INTO `t_porcess_tools` VALUES ('128', '0', '不确定性表现方式', '如果活动的持续时间、成本或资源需求是不确定的，就可以在模型中用概率分布来表示其数值的可能区间。', '单个项目风险可以用概率分布图表示，或者，也可以作为概率分支包括在定量分析模型中。');
INSERT INTO `t_porcess_tools` VALUES ('130', '3', '敏感性分析', '一种定量风险分析技术，将项目结果的变化与定量风险分析模型中输入的的变化建立关联，从而确定对项目结果产生最大潜在影响的单个项目风险或其他不确定性来源。', '敏感性分析的结果通常用龙卷风图来表示。');
INSERT INTO `t_porcess_tools` VALUES ('131', '3', '决策树分析', '一种图形和计算技术，用来评估与一个决策相关的多个可选方案在不确定情形下的可能后果。', '在决策树分析中，通过计算每条分支的预期货币价值，就可以选出最优的路径。');
INSERT INTO `t_porcess_tools` VALUES ('132', '3', '影响图', '对变量与结果之间的因果关系、事件时间顺序及其他关系的图形表示。', '影响图分析，可以得出类似于其他定量风险分析的结果，如 S 曲线图和龙卷风图。');
INSERT INTO `t_porcess_tools` VALUES ('133', '0', '威胁应对策略', '针对威胁，可以考虑下列五种备选策略：上报、规避、转移、减轻和接受。', '消极风险或威胁处理策略的区分：\r\n1. 上报：威胁不在项目范围内或提议的应对措施超过项目经理权限时使用；\r\n2. 规避：改变计划，完全消除；\r\n3. 转移：花钱把风险及责任转给第三方；\r\n4. 减轻：降低概率到可接受的范围内；\r\n5. 接受：不做任何处理。');
INSERT INTO `t_porcess_tools` VALUES ('134', '0', '机会应对策略', '针对机会，可以考虑下列五种备选策略：上报、开拓、分享、提高和接受。', '消极风险或威胁处理策略的区分：\r\n1. 上报：威胁不在项目范围内或提议的应对措施超过项目经理权限时使用；\r\n2. 开拓：努力确保机会出现；\r\n3. 分享：与第三方一起抓住机会，利益共享；\r\n4. 提高：提高发生的概率和影响；\r\n5. 接受：不做任何处理。');
INSERT INTO `t_porcess_tools` VALUES ('135', '0', '应急应对策略', '仅在特定事件发生时才采用的应对措施。', '采用此技术制定的风险应对计划，通常称为应急计划或弹回计划，其中包括已识别的、用于启动计划的触发事件。');
INSERT INTO `t_porcess_tools` VALUES ('136', '0', '整体项目风险应对策略', '用于应对单个项目风险的策略也适用于整体项目风险：规避、开拓、转移或分享、减轻或提高、接收。', '风险应对措施的规划和实施不应只针对单个项目风险，还应针对整体项目风险。');
INSERT INTO `t_porcess_tools` VALUES ('137', '3', '技术绩效分析', '把项目执行期间所取得的技术成果与取得相关技术成果的计划进行比较，实际结果偏离计划的程度可以代表威胁或机会的潜在影响。', '技术绩效测量指标可能包括：重量、处理时间、缺陷数量、储存容量等。');
INSERT INTO `t_porcess_tools` VALUES ('138', '1', '市场调研', '市场调研包括考察行业情况和具体卖方的能力。', '');
INSERT INTO `t_porcess_tools` VALUES ('139', '3', '自制或外购分析', '收集和整理有关产品需求的数据，对包括采购产品或内部制造产品在内的多个可选方案进行分析的过程。', '在自制或外购分析中，可以使用回收期、投资回报率（ROI）、内部报酬率 (IRR)、现金流贴现、净现值（NPV）、收益成本（BCA）或其他分析技术，来确定某种货物或服务是应该在项目内部自制，还是从外部购买。');
INSERT INTO `t_porcess_tools` VALUES ('140', '0', '供方选择分析', '在采购文件中写明评估方法，让投标人了解将会被如何评估。', '供方选择分析包括：最低成本、仅凭资质、基于质量或技术方案得分、基于质量和成本、独有资源、固定预算。');
INSERT INTO `t_porcess_tools` VALUES ('141', '0', '广告', '在媒介上发布招标公告。广告是就产品、服务或成果与用户或潜在用户进行的沟通。', '');
INSERT INTO `t_porcess_tools` VALUES ('142', '0', '投标人会议', '在准备投标书或建议书之前，与潜在卖方举行的会议，以便保证所有潜在卖方对本项采购都有清楚且一致的理解。又称承包商会议、供应商会议或投标前会议。', '');
INSERT INTO `t_porcess_tools` VALUES ('143', '3', '建议书评价技术', '为做出合同授予决定而用于评审供应商提交的建议书的各种技术。', '');
INSERT INTO `t_porcess_tools` VALUES ('144', '0', '索赔管理', '对合同索赔进行处理、裁决和沟通的过程。', '如果合同双方无法自行解决索赔问题，则可能不得不按合同中规定的程序，用替代争议解决方法（ADR）去处理。谈判是解决所有索赔和争议的首选方法。');
INSERT INTO `t_porcess_tools` VALUES ('149', '5', '相关方映射分析和表现', '一种利用不同方法对相关方进行分类的方法。', '相关方映射分析和表现包括：1. 权力利益方格、权力影响方格，或作用影响方格；2. 相关方立方体；3. 凸显模型；4. 影响方向（向上、向下、向外、横向）；5. 优先级排序。');
INSERT INTO `t_porcess_tools` VALUES ('150', '4', '优先级排序或分级', '具有最大利益和最高影响的相关方，通常应该排在优先级清单的最前面。', '');
INSERT INTO `t_porcess_tools` VALUES ('152', '0', '基本规则', '对项目团队成员的可接受行为的预期。', '根据团队章程中定义的基本规则，来明确项目团队成员和其他相关方应该采取什么行为去引导相关方参与。');
INSERT INTO `t_porcess_tools` VALUES ('153', '0', '预分派', '预分派指事先确定项目的实物或团队资源。', '');
INSERT INTO `t_porcess_tools` VALUES ('154', '1', '数据收集技术', '用于从各种渠道收集数据与信息。', '');
INSERT INTO `t_porcess_tools` VALUES ('155', '5', '数据表现技术', '用于显示用来传递数据和信息的图形方式或其他方法。', '');
INSERT INTO `t_porcess_tools` VALUES ('156', '6', '沟通技能', '用于在相关方之间传递信息。', '');
INSERT INTO `t_porcess_tools` VALUES ('157', '2', '人际关系与团队技能', '用于有效地领导团队成员和其他相关方并与之进行互动。', '');

-- ----------------------------
-- Table structure for `t_project_files`
-- ----------------------------
DROP TABLE IF EXISTS `t_project_files`;
CREATE TABLE `t_project_files` (
  `file_id` int(11) NOT NULL AUTO_INCREMENT,
  `file_category_id` int(11) NOT NULL,
  `file_name` varchar(64) NOT NULL,
  `file_info` varchar(2048) NOT NULL,
  `file_extra_info` varchar(256) NOT NULL,
  PRIMARY KEY (`file_id`),
  UNIQUE KEY `key` (`file_name`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_project_files
-- ----------------------------
INSERT INTO `t_project_files` VALUES ('1', '3', '活动属性', '', '');
INSERT INTO `t_project_files` VALUES ('2', '3', '活动清单', '', '');
INSERT INTO `t_project_files` VALUES ('3', '3', '假设日志', '', '');
INSERT INTO `t_project_files` VALUES ('4', '3', '估算依据', '', '');
INSERT INTO `t_project_files` VALUES ('5', '3', '变更日志', '', '');
INSERT INTO `t_project_files` VALUES ('6', '3', '成本估算', '', '');
INSERT INTO `t_project_files` VALUES ('7', '3', '成本预测', '', '');
INSERT INTO `t_project_files` VALUES ('8', '3', '持续时间估算', '', '');
INSERT INTO `t_project_files` VALUES ('9', '3', '问题日志', '', '');
INSERT INTO `t_project_files` VALUES ('10', '3', '经验教训登记册', '', '');
INSERT INTO `t_project_files` VALUES ('11', '3', '里程碑清单', '', '');
INSERT INTO `t_project_files` VALUES ('12', '3', '物质资源分配单', '', '');
INSERT INTO `t_project_files` VALUES ('13', '3', '项目日历', '', '');
INSERT INTO `t_project_files` VALUES ('14', '3', '项目沟通记录', '', '');
INSERT INTO `t_project_files` VALUES ('15', '3', '项目进度计划', '', '');
INSERT INTO `t_project_files` VALUES ('16', '3', '项目进度网络图', '', '');
INSERT INTO `t_project_files` VALUES ('17', '3', '项目范围说明书', '', '简单说就是“什么时候希望对方做什么实现什么”。\r\n\r\n范围说明书包括 4 点：\r\n	1.项目的范围；\r\n	2.主要可交付成果；\r\n	3.假设条件；\r\n	4.制约条件。\r\n也就是包括：\r\n	1.业务需求，为什么要做；\r\n	2.产品范围描述，做什么；\r\n	3.战略计划，对组织的作用。');
INSERT INTO `t_project_files` VALUES ('18', '3', '项目团队派工单', '', '');
INSERT INTO `t_project_files` VALUES ('19', '3', '质量控制测量结果', '', '');
INSERT INTO `t_project_files` VALUES ('20', '3', '质量测量指标', '', '');
INSERT INTO `t_project_files` VALUES ('21', '3', '质量报告', '', '');
INSERT INTO `t_project_files` VALUES ('22', '3', '需求文件', '', '');
INSERT INTO `t_project_files` VALUES ('23', '3', '需求跟踪矩阵', '', '是把产品需求从其来源连接到能满足需求的可交付成果的一种表格。其实就是需求的一个从提出到完成的链路。');
INSERT INTO `t_project_files` VALUES ('24', '3', '资源分解结构', '', '');
INSERT INTO `t_project_files` VALUES ('25', '3', '资源日历', '', '');
INSERT INTO `t_project_files` VALUES ('26', '3', '资源需求', '', '');
INSERT INTO `t_project_files` VALUES ('27', '3', '风险登记册', '', '');
INSERT INTO `t_project_files` VALUES ('28', '3', '风险报告', '', '');
INSERT INTO `t_project_files` VALUES ('29', '3', '进度数据', '', '');
INSERT INTO `t_project_files` VALUES ('30', '3', '进度预测', '', '');
INSERT INTO `t_project_files` VALUES ('31', '3', '相关方登记册', '', '');
INSERT INTO `t_project_files` VALUES ('32', '3', '团队章程', '', '');
INSERT INTO `t_project_files` VALUES ('33', '3', '测试与评估文件', '', '');

-- ----------------------------
-- Table structure for `t_project_manage_plan`
-- ----------------------------
DROP TABLE IF EXISTS `t_project_manage_plan`;
CREATE TABLE `t_project_manage_plan` (
  `plan_id` int(11) NOT NULL AUTO_INCREMENT,
  `file_category_id` int(11) NOT NULL,
  `plan_name` varchar(64) NOT NULL,
  `plan_category` varchar(64) NOT NULL,
  `plan_info` varchar(2048) NOT NULL,
  `plan_extra_info` varchar(256) NOT NULL,
  PRIMARY KEY (`plan_id`),
  UNIQUE KEY `key` (`plan_name`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_project_manage_plan
-- ----------------------------
INSERT INTO `t_project_manage_plan` VALUES ('1', '2', '范围管理计划', '9个项目管理子计划', '确立如何定义、制定、监督、控制和确认项目范围。', '');
INSERT INTO `t_project_manage_plan` VALUES ('2', '2', '需求管理计划', '3个辅助管理计划', '确定如何分析、记录和管理需求。', '');
INSERT INTO `t_project_manage_plan` VALUES ('3', '2', '进度管理计划', '9个项目管理子计划', '为编制、监督和控制项目进度建立准则并确定活动。', '');
INSERT INTO `t_project_manage_plan` VALUES ('4', '2', '成本管理计划', '9个项目管理子计划', '确定如何规划、安排和控制成本。', '');
INSERT INTO `t_project_manage_plan` VALUES ('5', '2', '质量管理计划', '9个项目管理子计划', '确定在项目中如何实施组织的质量政策、方法和标准。', '');
INSERT INTO `t_project_manage_plan` VALUES ('6', '2', '资源管理计划', '9个项目管理子计划', '指导如何对项目资源进行分类、分配、管理和释放。', '');
INSERT INTO `t_project_manage_plan` VALUES ('7', '2', '沟通管理计划', '9个项目管理子计划', '确定项目信息将如何、何时、由谁来进行管理和传播。', '');
INSERT INTO `t_project_manage_plan` VALUES ('8', '2', '风险管理计划', '9个项目管理子计划', '确定如何安排与实施风险管理活动。', '');
INSERT INTO `t_project_manage_plan` VALUES ('9', '2', '采购管理计划', '9个项目管理子计划', '确定项目团队将如何从执行组织外部获取货物和服务。', '');
INSERT INTO `t_project_manage_plan` VALUES ('10', '2', '相关方参与计划', '9个项目管理子计划', '确定如何根据相关方的需求、利益和影响让他们参与项目决策和执行。', '');
INSERT INTO `t_project_manage_plan` VALUES ('11', '2', '变更管理计划', '3个辅助管理计划', '描述在整个项目期间如何正式审批和采纳变更请求。', '');
INSERT INTO `t_project_manage_plan` VALUES ('12', '2', '配置管理计划', '3个辅助管理计划', '描述如何记录和更新项目的特定信息，以及该记录和更新哪些信息，以保持产品、服务或成果的一致性和（或）有效性。', '');
INSERT INTO `t_project_manage_plan` VALUES ('13', '2', '范围基准', '3大基准', '经过批准的范围说明书、工作分解结构 (WBS) 和相应的 WBS 词典，用作比较依据。', '');
INSERT INTO `t_project_manage_plan` VALUES ('14', '2', '进度基准', '3大基准', '经过批准的进度模型，用作与实际结果进行比较的依据。', '');
INSERT INTO `t_project_manage_plan` VALUES ('15', '2', '成本基准', '3大基准', '经过批准的、按时间段分配的项目预算，用作与实际结果进行比较的依据。', '');
INSERT INTO `t_project_manage_plan` VALUES ('16', '2', '绩效测量基准', '3个辅助管理计划文件', '经过整合的项目范围、进度和成本计划，用作项目执行的比较依据，以测量和管理项目绩效。', '');
INSERT INTO `t_project_manage_plan` VALUES ('17', '2', '项目生命周期描述', '3个辅助管理计划文件', '描述项目从开始到结束所经历的一系列阶段。', '');
INSERT INTO `t_project_manage_plan` VALUES ('18', '2', '开发方法', '3个辅助管理计划文件', '描述产品、服务或成果的开发方法，例如预测、迭代、敏捷或混合型模式', '');

-- ----------------------------
-- Table structure for `t_tool_category`
-- ----------------------------
DROP TABLE IF EXISTS `t_tool_category`;
CREATE TABLE `t_tool_category` (
  `tool_category_id` int(11) NOT NULL AUTO_INCREMENT,
  `tool_category_name` varchar(64) NOT NULL,
  `tool_category_info` varchar(2048) NOT NULL,
  `tool_category_extra_info` varchar(256) NOT NULL,
  PRIMARY KEY (`tool_category_id`),
  UNIQUE KEY `key` (`tool_category_name`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_tool_category
-- ----------------------------
INSERT INTO `t_tool_category` VALUES ('0', '', '', '');
INSERT INTO `t_tool_category` VALUES ('1', '数据收集技术', '', '');
INSERT INTO `t_tool_category` VALUES ('2', '人际关系与团队技能', '', '');
INSERT INTO `t_tool_category` VALUES ('3', '数据分析技术', '', '');
INSERT INTO `t_tool_category` VALUES ('4', '决策技术', '', '');
INSERT INTO `t_tool_category` VALUES ('5', '数据表现技术', '', '');
INSERT INTO `t_tool_category` VALUES ('6', '沟通技能', '', '');
