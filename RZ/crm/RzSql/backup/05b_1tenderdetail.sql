# 05b_1tenderdetail
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
select
id																							`id`,
borrow_id																				`bid` ,
user_id																					`uid`,
if(`status` in (0,1,2,3,4,5,6),'0','1')				  `status`,
money																						`account_tender` ,
real_amount																			`account` ,
'0.00'																					`already_pay`,
real_amount																			`bid_cur_money`,
'0'																							`is_auto` ,
create_time																			`addtime`,
add_ip																					`addip`,
' ' 																						`tender_auto_bianhao`,
create_time																			`successtime` ,
create_time																			`time_h`,
'1'																						  `per` ,
'0'																							`pid`,
'0'																							`cid`,
'0'																							`ucid`,
'1'																							`zqzr`,
''																							`t_c_no`,
'0'																							`t_t_s`,
''																							`voteclt`,
'0'																							`lcid`,
'-1.00'																					`at_1`,
'-1.00'																					`at_2`,
'-1.00'																					`at_4`,
'-1.00'																					`at_5`,
redpacket_id																		`hbid`,
'0.00'																					`aprplus`,
coupon_id																				`jxid`,
'0'																				    	`toubiao_time`
from rz_borrow.rz_borrow_tender
where create_time > DATE_FORMAT(DATE_SUB(curdate(),INTERVAL 1 DAY),"%Y-%m-%d 23:30:00") and create_time <= DATE_FORMAT(curdate(),"%Y-%m-%d 23:30:00");