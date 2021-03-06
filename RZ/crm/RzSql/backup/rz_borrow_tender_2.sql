insert into rz_borrow_tender_2 (`id`,
`user_id`,
`parent_id`,
`borrow_id`,
`big_borrow_id`,
`status`,
`money`,
`real_amount`,
`repayment_account`,
`interest`,
`repayment_yes_amount`,
`repayment_yes_interest`,
`wait_amount`,
`wait_interest`,
`is_big`,
`tender_type`,
`add_ip`,
`trx_id`,
`flow`,
`protocol_file_src`,
`undertake_file_src`,
`create_time`,
`update_time`,
`deleted`
) select `id`,
`user_id`,
`parent_id`,
`borrow_id`,
`big_borrow_id`,
`status`,
`money`,
`real_amount`,
`repayment_account`,
`interest`,
`repayment_yes_amount`,
`repayment_yes_interest`,
`wait_amount`,
`wait_interest`,
`is_big`,
`tender_type`,
`add_ip`,
`trx_id`,
`flow`,
`protocol_file_src`,
`undertake_file_src`,
`create_time`,
`update_time`,
`deleted`
 from new_wd.rz_borrow_tender_2
where create_time > DATE_FORMAT(DATE_SUB(curdate(),INTERVAL 2 DAY),"%Y-%m-%d 23:59:59") and create_time <= DATE_FORMAT(DATE_SUB(curdate(),INTERVAL 1 DAY),"%Y-%m-%d 23:59:59");
