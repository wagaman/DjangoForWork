insert into rz_borrow
(`id`,
`user_id`,
`parent_id`,
`uname`,
`aid`,
`name`,
`product_id`,
`status`,
`esc_status`,
`period`,
`amount`,
`amount_yes`,
`scales`,
`apr`,
`ex_apr`,
`style`,
`borrow_time_type`,
`time_limit`,
`pwd`,
`recommend`,
`lowest_account`,
`most_account`,
`lowest_single_limit`,
`most_single_limit`,
`threshold`,
`exp_date`,
`repayment_account`,
`repayment_interest`,
`repayment_yes_account`,
`repayment_yes_interest`,
`full_time`,
`add_time`,
`add_ip`,
`old_amount`,
`award`,
`part_amount`,
`funds`,
`con_number`,
`borrow_manage_rate`,
`expiration_time`,
`manage_fee`,
`put_start_time`,
`category`,
`invest_count`,
`trx_id`,
`version`,
`app_sort`,
`pc_sort`,
`wap`,
`web`,
`app`,
`old`,
`verify_uid`,
`verify_time`,
`verify_desc`,
`skrkh`,
`skrkhg`,
`skrxm`,
`skrkhlx`,
`create_time`,
`update_time`,
`source`,
`deleted`
)  select `id`,
`user_id`,
`parent_id`,
`uname`,
`aid`,
`name`,
`product_id`,
`status`,
`esc_status`,
`period`,
`amount`,
`amount_yes`,
`scales`,
`apr`,
`ex_apr`,
`style`,
`borrow_time_type`,
`time_limit`,
`pwd`,
`recommend`,
`lowest_account`,
`most_account`,
`lowest_single_limit`,
`most_single_limit`,
`threshold`,
`exp_date`,
`repayment_account`,
`repayment_interest`,
`repayment_yes_account`,
`repayment_yes_interest`,
`full_time`,
`add_time`,
`add_ip`,
`old_amount`,
`award`,
`part_amount`,
`funds`,
`con_number`,
`borrow_manage_rate`,
`expiration_time`,
`manage_fee`,
`put_start_time`,
`category`,
`invest_count`,
`trx_id`,
`version`,
`app_sort`,
`pc_sort`,
`wap`,
`web`,
`app`,
`old`,
`verify_uid`,
`verify_time`,
`verify_desc`,
`skrkh`,
`skrkhg`,
`skrxm`,
`skrkhlx`,
`create_time`,
`update_time`,
`source`,
`deleted` from new_wd.rz_borrow
where create_time > DATE_FORMAT(DATE_SUB(curdate(),INTERVAL 2 DAY),"%Y-%m-%d 23:59:59") and create_time <= DATE_FORMAT(DATE_SUB(curdate(),INTERVAL 1 DAY),"%Y-%m-%d 23:59:59");
