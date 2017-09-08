CREATE TABLE `05b_1tenderdetail` (
	`pk_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `id` int(11) unsigned NOT NULL,
  `bid` int(15) NOT NULL DEFAULT '0' COMMENT '标的id',
  `uid` int(11) NOT NULL DEFAULT '0' COMMENT '用户名称',
  `status` int(2) NOT NULL DEFAULT '0' COMMENT '状态 3表示复审成功 4表示复审拒绝',
  `account_tender` decimal(11,2) NOT NULL DEFAULT '0.00' COMMENT '投资金额',
  `account` decimal(11,2) NOT NULL DEFAULT '0.00' COMMENT '实际投资金额',
  `already_pay` decimal(12,2) NOT NULL DEFAULT '0.00' COMMENT '已经到账金额',
  `bid_cur_money` decimal(12,2) NOT NULL DEFAULT '0.00' COMMENT '此标当前已经累计投资了多少钱',
  `is_auto` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否自动投标',
  `addtime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `addip` varchar(50) NOT NULL DEFAULT ' ',
  `tender_auto_bianhao` varchar(50) NOT NULL DEFAULT ' ' COMMENT '自动投标编号',
  `successtime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '最后操作时间',
  `time_h` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `per` int(11) NOT NULL DEFAULT '0' COMMENT '预投标 1表示最终完成 0 是预投标用户还没完成资金转换的,-1 表示可以删除[队列回调函数里确认无用了]',
  `pid` bigint(20) NOT NULL DEFAULT '0',
  `cid` int(11) NOT NULL DEFAULT '0' COMMENT '所属站点',
  `ucid` int(11) NOT NULL DEFAULT '0' COMMENT '用户所属cid',
  `zqzr` int(11) NOT NULL DEFAULT '1' COMMENT '网站债券转让合同标记',
  `t_c_no` varchar(50) NOT NULL DEFAULT '' COMMENT '第三方流水号 托管系统使用',
  `t_t_s` int(11) NOT NULL DEFAULT '0' COMMENT '第三方转账状态',
  `voteclt` varchar(20) NOT NULL DEFAULT '' COMMENT '投标客户端 [自动，pc，iphone，安卓]',
  `lcid` int(11) NOT NULL DEFAULT '0' COMMENT '理财计划项目ID,0表示直接投',
  `at_1` decimal(12,2) NOT NULL DEFAULT '-1.00',
  `at_2` decimal(12,2) NOT NULL DEFAULT '-1.00',
  `at_4` decimal(12,2) NOT NULL DEFAULT '-1.00',
  `at_5` decimal(12,2) NOT NULL DEFAULT '-1.00' COMMENT '在途金额',
  `hbid` varchar(20) NOT NULL DEFAULT '' COMMENT '使用的红包ID',
  `aprplus` decimal(12,2) NOT NULL DEFAULT '0.00' COMMENT '加息幅度',
  `jxid` int(11) NOT NULL DEFAULT '0' COMMENT '使用加息券ID',
  `toubiao_time` int(22) DEFAULT '0' COMMENT '用户第几次投标',
  PRIMARY KEY (`pk_id`),
  KEY `uid` (`uid`,`bid`),
  KEY `bid` (`bid`,`time_h`)
) ENGINE=InnoDB AUTO_INCREMENT=728179 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='投资';



insert into 05b_1tenderdetail
(   `id`,
  `bid` ,
  `uid`,
  `status`,
  `account_tender` ,
  `account` ,
  `already_pay`,
  `bid_cur_money`,
  `is_auto` ,
  `addtime`,
  `addip`,
  `tender_auto_bianhao`,
  `successtime` ,
  `time_h`,
  `per` ,
  `pid`,
  `cid`,
  `ucid`,
  `zqzr`,
  `t_c_no`,
  `t_t_s`,
  `voteclt`,
  `lcid`,
  `at_1`,
  `at_2`,
  `at_4`,
  `at_5`,
  `hbid`,
  `aprplus`,
  `jxid`,
  `toubiao_time`)
select `id`,
  `bid` ,
  `uid`,
  `status`,
  `account_tender` ,
  `account` ,
  `already_pay`,
  `bid_cur_money`,
  `is_auto` ,
  `addtime`,
  `addip`,
  `tender_auto_bianhao`,
  `successtime` ,
  `time_h`,
  `per` ,
  `pid`,
  `cid`,
  `ucid`,
  `zqzr`,
  `t_c_no`,
  `t_t_s`,
  `voteclt`,
  `lcid`,
  `at_1`,
  `at_2`,
  `at_4`,
  `at_5`,
  `hbid`,
  `aprplus`,
  `jxid`,
  `toubiao_time`
from wd.05b_1tenderdetail
WHERE time_h <= DATE_FORMAT(DATE_SUB(curdate(),INTERVAL 1 DAY),"%Y-%m-%d 23:30:00");


