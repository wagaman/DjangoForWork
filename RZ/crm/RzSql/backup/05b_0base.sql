# 05b_0base
insert into 05b_0base(`bid`,`status`,`curstate`,`stoptrans`,`diya_type`,`cid`,`uid` ,`aid`,`name` ,`flag` ,`account`,`account_diya` ,`account_diyafanhuan`,`account_zjf`,`bid_bzj`,`borrow_style` ,
`borrow_period`,`pflag`,`borrow_apr`,`borrow_webapr`,`borrow_contents`,`borrow_valid_time`,`borrower_apr`,`tender_account_min` ,`tender_account_max`,`limit_money`,`repay_each_time`,`cash_status`,`verify_userid`,
`verify_remark`,`reverify_userid`,`reverify_remark` ,`verify_username`,`reverify_username`,`days`,`time_h`,`is_xudai`,`repay_account`,`borrow_yongtu`,`repay_account_capital`,`repay_account_interest`,`repay_account_other`,
`verify_time`,`reverify_time`,`borrow_jiangli`,`tend_jiangli_type`,`app_jiangli`,`uid_add`,`uname_add`,`uid_zj`,`uname_zj`,`money_zj`,`dj_type`,`dj_sq`,`lxglf`,`note`,`is_old`,`imeis`,`bnum` ,`yewuyuan` ,`yewuid`,
`classify`,`bnumht`,`isapp` ,`doflag`,`workflow_step` ,`infonum`,`min_period`,`useruid`,`isAssign` , `border`,`hetong_tpl_id`,`pre_track_warning`,`sent_ancun`,`save_ancun`, `border_web` ,`tender_account_d` ,
`repay_interest_plus`,`thhtbh`,`esc_status`
)
select
id											`bid`,
status									`status`,
'0'											`curstate`,
'0'											`stoptrans`,
'0'											`diya_type`,
'0'											`cid`,
user_id									`uid` ,
aid											`aid`,
name										`name` ,
product_id							`flag` ,
amount									`account`,
'0.00'									`account_diya`,
'-1.00'									`account_diyafanhuan`,
'0.00'									`account_zjf`,
'0.00'									`bid_bzj`,
style										`borrow_style` ,
time_limit							`borrow_period`,
borrow_time_type				`pflag`,
apr											`borrow_apr`,
'0.00'									`borrow_webapr`,
''											`borrow_contents`,
exp_date								`borrow_valid_time`,
apr											`borrower_apr`,
lowest_account					`tender_account_min` ,
most_account						`tender_account_max`,
''											`limit_money`,
''											`repay_each_time`,
'0'											`cash_status`,
verify_uid							`verify_userid`,
verify_desc							`verify_remark`,
'0' 										`reverify_userid`,
''											`reverify_remark` ,
''											`verify_username`,
''											`reverify_username`,
borrow_time_type				`days`,
create_time							`time_h`,
'0'											`is_xudai`,
'0.00'									`repay_account`,
''											`borrow_yongtu`,
repayment_account				`repay_account_capital`,
'0.00'									`repay_account_interest`,
'0.00'									`repay_account_other`,
verify_time							`verify_time`,
full_time								`reverify_time`,
'0.00'									`borrow_jiangli`,
'0'											`tend_jiangli_type`,
'0.00' 									`app_jiangli`,
verify_uid							`uid_add`,
''											`uname_add`,
'0'											`uid_zj`,
''											`uname_zj`,
'0.00'									`money_zj`,
'0'											`dj_type`,
'0.00'									`dj_sq`,
manage_fee							`lxglf`,
''											`note`,
'0'											`is_old`,
''											`imeis`,
'0'											`bnum` ,
''											`yewuyuan` ,
'0'											`yewuid`,
product_id							`classify`,
''											`bnumht`,
'0'											`isapp` ,
''											`doflag`,
'0'											`workflow_step` ,
'0'											`infonum`,
'0'											`min_period`,
'0'											`useruid`,
'0'											`isAssign` ,
'5'											`border`,
'0'											`hetong_tpl_id`,
'0'											`pre_track_warning`,
'0'											`sent_ancun`,
''											`save_ancun`,
'5'											`border_web` ,
'0.00'						   		`tender_account_d` ,
'0.00'									`repay_interest_plus`,
con_number							`thhtbh`,
'0'											`esc_status`
from rz_borrow.rz_borrow
where create_time > DATE_FORMAT(DATE_SUB(curdate(),INTERVAL 1 DAY),"%Y-%m-%d 23:30:00") and create_time <= DATE_FORMAT(curdate(),"%Y-%m-%d 23:30:00");