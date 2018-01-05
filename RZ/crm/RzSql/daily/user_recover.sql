SELECT DATE_SUB(CURDATE(),INTERVAL 1 day) qdate,h.uid,sum(h.recover_account) recover_account
from
     (
					SELECT a.uid,a.recover_account
					from 05b_2list_recover a
					INNER JOIN rz_cg_queue_prod b on a.bid=b.bid
					where b.type=0
					and b.create_time <= CONCAT(DATE_SUB(CURDATE(),INTERVAL 1 day),' 23:59:59')
					and a.recover_times > CONCAT(DATE_SUB(CURDATE(),INTERVAL 1 day),' 23:59:59')
					and a.recover_status in (0,1,66)
					UNION ALL
					SELECT  a.user_id,a.repayment_amount
					from
					(
							SELECT a.* from new_wd.rz_borrow_collection_0 a INNER JOIN new_wd.rz_borrow_big b on a.big_borrow_id=b.id where a.`status` in (0,1,66) and b.product_id<>10020 and b.full_time <= CONCAT(DATE_SUB(CURDATE(),INTERVAL 1 day),' 23:59:59') and b.full_time <> "0000-00-00 00:00:00" and a.repayment_time > CONCAT(DATE_SUB(CURDATE(),INTERVAL 1 day),' 23:59:59')  UNION ALL
							SELECT a.* from new_wd.rz_borrow_collection_1 a INNER JOIN new_wd.rz_borrow_big b on a.big_borrow_id=b.id where a.`status` in (0,1,66) and b.product_id<>10020 and b.full_time <= CONCAT(DATE_SUB(CURDATE(),INTERVAL 1 day),' 23:59:59') and b.full_time <> "0000-00-00 00:00:00" and a.repayment_time > CONCAT(DATE_SUB(CURDATE(),INTERVAL 1 day),' 23:59:59') UNION ALL
							SELECT a.* from new_wd.rz_borrow_collection_2 a INNER JOIN new_wd.rz_borrow_big b on a.big_borrow_id=b.id where a.`status` in (0,1,66) and b.product_id<>10020 and b.full_time <= CONCAT(DATE_SUB(CURDATE(),INTERVAL 1 day),' 23:59:59') and b.full_time <> "0000-00-00 00:00:00" and a.repayment_time > CONCAT(DATE_SUB(CURDATE(),INTERVAL 1 day),' 23:59:59') UNION ALL
							SELECT a.* from new_wd.rz_borrow_collection_3 a INNER JOIN new_wd.rz_borrow_big b on a.big_borrow_id=b.id where a.`status` in (0,1,66) and b.product_id<>10020 and b.full_time <= CONCAT(DATE_SUB(CURDATE(),INTERVAL 1 day),' 23:59:59') and b.full_time <> "0000-00-00 00:00:00" and a.repayment_time > CONCAT(DATE_SUB(CURDATE(),INTERVAL 1 day),' 23:59:59') UNION ALL
							SELECT a.* from new_wd.rz_borrow_collection_4 a INNER JOIN new_wd.rz_borrow_big b on a.big_borrow_id=b.id where a.`status` in (0,1,66) and b.product_id<>10020 and b.full_time <= CONCAT(DATE_SUB(CURDATE(),INTERVAL 1 day),' 23:59:59') and b.full_time <> "0000-00-00 00:00:00" and a.repayment_time > CONCAT(DATE_SUB(CURDATE(),INTERVAL 1 day),' 23:59:59') UNION ALL
							SELECT a.* from new_wd.rz_borrow_collection_5 a INNER JOIN new_wd.rz_borrow_big b on a.big_borrow_id=b.id where a.`status` in (0,1,66) and b.product_id<>10020 and b.full_time <= CONCAT(DATE_SUB(CURDATE(),INTERVAL 1 day),' 23:59:59') and b.full_time <> "0000-00-00 00:00:00" and a.repayment_time > CONCAT(DATE_SUB(CURDATE(),INTERVAL 1 day),' 23:59:59') UNION ALL
							SELECT a.* from new_wd.rz_borrow_collection_6 a INNER JOIN new_wd.rz_borrow_big b on a.big_borrow_id=b.id where a.`status` in (0,1,66) and b.product_id<>10020 and b.full_time <= CONCAT(DATE_SUB(CURDATE(),INTERVAL 1 day),' 23:59:59') and b.full_time <> "0000-00-00 00:00:00" and a.repayment_time > CONCAT(DATE_SUB(CURDATE(),INTERVAL 1 day),' 23:59:59') UNION ALL
							SELECT a.* from new_wd.rz_borrow_collection_7 a INNER JOIN new_wd.rz_borrow_big b on a.big_borrow_id=b.id where a.`status` in (0,1,66) and b.product_id<>10020 and b.full_time <= CONCAT(DATE_SUB(CURDATE(),INTERVAL 1 day),' 23:59:59') and b.full_time <> "0000-00-00 00:00:00" and a.repayment_time > CONCAT(DATE_SUB(CURDATE(),INTERVAL 1 day),' 23:59:59') UNION ALL
							SELECT a.* from new_wd.rz_borrow_collection_8 a INNER JOIN new_wd.rz_borrow_big b on a.big_borrow_id=b.id where a.`status` in (0,1,66) and b.product_id<>10020 and b.full_time <= CONCAT(DATE_SUB(CURDATE(),INTERVAL 1 day),' 23:59:59') and b.full_time <> "0000-00-00 00:00:00" and a.repayment_time > CONCAT(DATE_SUB(CURDATE(),INTERVAL 1 day),' 23:59:59') UNION ALL
							SELECT a.* from new_wd.rz_borrow_collection_9 a INNER JOIN new_wd.rz_borrow_big b on a.big_borrow_id=b.id where a.`status` in (0,1,66) and b.product_id<>10020 and b.full_time <= CONCAT(DATE_SUB(CURDATE(),INTERVAL 1 day),' 23:59:59') and b.full_time <> "0000-00-00 00:00:00" and a.repayment_time > CONCAT(DATE_SUB(CURDATE(),INTERVAL 1 day),' 23:59:59') UNION ALL
							SELECT a.* from new_wd.rz_borrow_collection_10 a INNER JOIN new_wd.rz_borrow_big b on a.big_borrow_id=b.id where a.`status` in (0,1,66) and b.product_id<>10020 and b.full_time <= CONCAT(DATE_SUB(CURDATE(),INTERVAL 1 day),' 23:59:59') and b.full_time <> "0000-00-00 00:00:00" and a.repayment_time > CONCAT(DATE_SUB(CURDATE(),INTERVAL 1 day),' 23:59:59') UNION ALL
							SELECT a.* from new_wd.rz_borrow_collection_11 a INNER JOIN new_wd.rz_borrow_big b on a.big_borrow_id=b.id where a.`status` in (0,1,66) and b.product_id<>10020 and b.full_time <= CONCAT(DATE_SUB(CURDATE(),INTERVAL 1 day),' 23:59:59') and b.full_time <> "0000-00-00 00:00:00" and a.repayment_time > CONCAT(DATE_SUB(CURDATE(),INTERVAL 1 day),' 23:59:59') UNION ALL
							SELECT a.* from new_wd.rz_borrow_collection_12 a INNER JOIN new_wd.rz_borrow_big b on a.big_borrow_id=b.id where a.`status` in (0,1,66) and b.product_id<>10020 and b.full_time <= CONCAT(DATE_SUB(CURDATE(),INTERVAL 1 day),' 23:59:59') and b.full_time <> "0000-00-00 00:00:00" and a.repayment_time > CONCAT(DATE_SUB(CURDATE(),INTERVAL 1 day),' 23:59:59') UNION ALL
							SELECT a.* from new_wd.rz_borrow_collection_13 a INNER JOIN new_wd.rz_borrow_big b on a.big_borrow_id=b.id where a.`status` in (0,1,66) and b.product_id<>10020 and b.full_time <= CONCAT(DATE_SUB(CURDATE(),INTERVAL 1 day),' 23:59:59') and b.full_time <> "0000-00-00 00:00:00" and a.repayment_time > CONCAT(DATE_SUB(CURDATE(),INTERVAL 1 day),' 23:59:59') UNION ALL
							SELECT a.* from new_wd.rz_borrow_collection_14 a INNER JOIN new_wd.rz_borrow_big b on a.big_borrow_id=b.id where a.`status` in (0,1,66) and b.product_id<>10020 and b.full_time <= CONCAT(DATE_SUB(CURDATE(),INTERVAL 1 day),' 23:59:59') and b.full_time <> "0000-00-00 00:00:00" and a.repayment_time > CONCAT(DATE_SUB(CURDATE(),INTERVAL 1 day),' 23:59:59') UNION ALL
							SELECT a.* from new_wd.rz_borrow_collection_15 a INNER JOIN new_wd.rz_borrow_big b on a.big_borrow_id=b.id where a.`status` in (0,1,66) and b.product_id<>10020 and b.full_time <= CONCAT(DATE_SUB(CURDATE(),INTERVAL 1 day),' 23:59:59') and b.full_time <> "0000-00-00 00:00:00" and a.repayment_time > CONCAT(DATE_SUB(CURDATE(),INTERVAL 1 day),' 23:59:59') UNION ALL
							SELECT a.* from new_wd.rz_borrow_collection_16 a INNER JOIN new_wd.rz_borrow_big b on a.big_borrow_id=b.id where a.`status` in (0,1,66) and b.product_id<>10020 and b.full_time <= CONCAT(DATE_SUB(CURDATE(),INTERVAL 1 day),' 23:59:59') and b.full_time <> "0000-00-00 00:00:00" and a.repayment_time > CONCAT(DATE_SUB(CURDATE(),INTERVAL 1 day),' 23:59:59') UNION ALL
							SELECT a.* from new_wd.rz_borrow_collection_17 a INNER JOIN new_wd.rz_borrow_big b on a.big_borrow_id=b.id where a.`status` in (0,1,66) and b.product_id<>10020 and b.full_time <= CONCAT(DATE_SUB(CURDATE(),INTERVAL 1 day),' 23:59:59') and b.full_time <> "0000-00-00 00:00:00" and a.repayment_time > CONCAT(DATE_SUB(CURDATE(),INTERVAL 1 day),' 23:59:59') UNION ALL
							SELECT a.* from new_wd.rz_borrow_collection_18 a INNER JOIN new_wd.rz_borrow_big b on a.big_borrow_id=b.id where a.`status` in (0,1,66) and b.product_id<>10020 and b.full_time <= CONCAT(DATE_SUB(CURDATE(),INTERVAL 1 day),' 23:59:59') and b.full_time <> "0000-00-00 00:00:00" and a.repayment_time > CONCAT(DATE_SUB(CURDATE(),INTERVAL 1 day),' 23:59:59') UNION ALL
							SELECT a.* from new_wd.rz_borrow_collection_19 a INNER JOIN new_wd.rz_borrow_big b on a.big_borrow_id=b.id where a.`status` in (0,1,66) and b.product_id<>10020 and b.full_time <= CONCAT(DATE_SUB(CURDATE(),INTERVAL 1 day),' 23:59:59') and b.full_time <> "0000-00-00 00:00:00" and a.repayment_time > CONCAT(DATE_SUB(CURDATE(),INTERVAL 1 day),' 23:59:59') UNION ALL
							SELECT a.* from new_wd.rz_borrow_collection_20 a INNER JOIN new_wd.rz_borrow_big b on a.big_borrow_id=b.id where a.`status` in (0,1,66) and b.product_id<>10020 and b.full_time <= CONCAT(DATE_SUB(CURDATE(),INTERVAL 1 day),' 23:59:59') and b.full_time <> "0000-00-00 00:00:00" and a.repayment_time > CONCAT(DATE_SUB(CURDATE(),INTERVAL 1 day),' 23:59:59') UNION ALL
							SELECT a.* from new_wd.rz_borrow_collection_21 a INNER JOIN new_wd.rz_borrow_big b on a.big_borrow_id=b.id where a.`status` in (0,1,66) and b.product_id<>10020 and b.full_time <= CONCAT(DATE_SUB(CURDATE(),INTERVAL 1 day),' 23:59:59') and b.full_time <> "0000-00-00 00:00:00" and a.repayment_time > CONCAT(DATE_SUB(CURDATE(),INTERVAL 1 day),' 23:59:59') UNION ALL
							SELECT a.* from new_wd.rz_borrow_collection_22 a INNER JOIN new_wd.rz_borrow_big b on a.big_borrow_id=b.id where a.`status` in (0,1,66) and b.product_id<>10020 and b.full_time <= CONCAT(DATE_SUB(CURDATE(),INTERVAL 1 day),' 23:59:59') and b.full_time <> "0000-00-00 00:00:00" and a.repayment_time > CONCAT(DATE_SUB(CURDATE(),INTERVAL 1 day),' 23:59:59') UNION ALL
							SELECT a.* from new_wd.rz_borrow_collection_23 a INNER JOIN new_wd.rz_borrow_big b on a.big_borrow_id=b.id where a.`status` in (0,1,66) and b.product_id<>10020 and b.full_time <= CONCAT(DATE_SUB(CURDATE(),INTERVAL 1 day),' 23:59:59') and b.full_time <> "0000-00-00 00:00:00" and a.repayment_time > CONCAT(DATE_SUB(CURDATE(),INTERVAL 1 day),' 23:59:59') UNION ALL
							SELECT a.* from new_wd.rz_borrow_collection_24 a INNER JOIN new_wd.rz_borrow_big b on a.big_borrow_id=b.id where a.`status` in (0,1,66) and b.product_id<>10020 and b.full_time <= CONCAT(DATE_SUB(CURDATE(),INTERVAL 1 day),' 23:59:59') and b.full_time <> "0000-00-00 00:00:00" and a.repayment_time > CONCAT(DATE_SUB(CURDATE(),INTERVAL 1 day),' 23:59:59') UNION ALL
							SELECT a.* from new_wd.rz_borrow_collection_25 a INNER JOIN new_wd.rz_borrow_big b on a.big_borrow_id=b.id where a.`status` in (0,1,66) and b.product_id<>10020 and b.full_time <= CONCAT(DATE_SUB(CURDATE(),INTERVAL 1 day),' 23:59:59') and b.full_time <> "0000-00-00 00:00:00" and a.repayment_time > CONCAT(DATE_SUB(CURDATE(),INTERVAL 1 day),' 23:59:59') UNION ALL
							SELECT a.* from new_wd.rz_borrow_collection_26 a INNER JOIN new_wd.rz_borrow_big b on a.big_borrow_id=b.id where a.`status` in (0,1,66) and b.product_id<>10020 and b.full_time <= CONCAT(DATE_SUB(CURDATE(),INTERVAL 1 day),' 23:59:59') and b.full_time <> "0000-00-00 00:00:00" and a.repayment_time > CONCAT(DATE_SUB(CURDATE(),INTERVAL 1 day),' 23:59:59') UNION ALL
							SELECT a.* from new_wd.rz_borrow_collection_27 a INNER JOIN new_wd.rz_borrow_big b on a.big_borrow_id=b.id where a.`status` in (0,1,66) and b.product_id<>10020 and b.full_time <= CONCAT(DATE_SUB(CURDATE(),INTERVAL 1 day),' 23:59:59') and b.full_time <> "0000-00-00 00:00:00" and a.repayment_time > CONCAT(DATE_SUB(CURDATE(),INTERVAL 1 day),' 23:59:59') UNION ALL
							SELECT a.* from new_wd.rz_borrow_collection_28 a INNER JOIN new_wd.rz_borrow_big b on a.big_borrow_id=b.id where a.`status` in (0,1,66) and b.product_id<>10020 and b.full_time <= CONCAT(DATE_SUB(CURDATE(),INTERVAL 1 day),' 23:59:59') and b.full_time <> "0000-00-00 00:00:00" and a.repayment_time > CONCAT(DATE_SUB(CURDATE(),INTERVAL 1 day),' 23:59:59') UNION ALL
							SELECT a.* from new_wd.rz_borrow_collection_29 a INNER JOIN new_wd.rz_borrow_big b on a.big_borrow_id=b.id where a.`status` in (0,1,66) and b.product_id<>10020 and b.full_time <= CONCAT(DATE_SUB(CURDATE(),INTERVAL 1 day),' 23:59:59') and b.full_time <> "0000-00-00 00:00:00" and a.repayment_time > CONCAT(DATE_SUB(CURDATE(),INTERVAL 1 day),' 23:59:59') UNION ALL
							SELECT a.* from new_wd.rz_borrow_collection_30 a INNER JOIN new_wd.rz_borrow_big b on a.big_borrow_id=b.id where a.`status` in (0,1,66) and b.product_id<>10020 and b.full_time <= CONCAT(DATE_SUB(CURDATE(),INTERVAL 1 day),' 23:59:59') and b.full_time <> "0000-00-00 00:00:00" and a.repayment_time > CONCAT(DATE_SUB(CURDATE(),INTERVAL 1 day),' 23:59:59') UNION ALL
							SELECT a.* from new_wd.rz_borrow_collection_31 a INNER JOIN new_wd.rz_borrow_big b on a.big_borrow_id=b.id where a.`status` in (0,1,66) and b.product_id<>10020 and b.full_time <= CONCAT(DATE_SUB(CURDATE(),INTERVAL 1 day),' 23:59:59') and b.full_time <> "0000-00-00 00:00:00" and a.repayment_time > CONCAT(DATE_SUB(CURDATE(),INTERVAL 1 day),' 23:59:59')
					) a
					UNION ALL
					SELECT  a.user_id,a.repayment_amount
					from
					(
							SELECT a.* from new_wd.rz_borrow_collection_0 a INNER JOIN new_wd.rz_borrow_big b on a.big_borrow_id=b.id INNER JOIN new_wd.rz_borrow c on a.borrow_id=c.id where a.`status` in (0,1,66) and b.product_id=10020 and c.full_time <= CONCAT(DATE_SUB(CURDATE(),INTERVAL 1 day),' 23:59:59') and c.full_time <> "0000-00-00 00:00:00" and a.repayment_time > CONCAT(DATE_SUB(CURDATE(),INTERVAL 1 day),' 23:59:59') UNION ALL
							SELECT a.* from new_wd.rz_borrow_collection_1 a INNER JOIN new_wd.rz_borrow_big b on a.big_borrow_id=b.id INNER JOIN new_wd.rz_borrow c on a.borrow_id=c.id where a.`status` in (0,1,66) and b.product_id=10020 and c.full_time <= CONCAT(DATE_SUB(CURDATE(),INTERVAL 1 day),' 23:59:59') and c.full_time <> "0000-00-00 00:00:00" and a.repayment_time > CONCAT(DATE_SUB(CURDATE(),INTERVAL 1 day),' 23:59:59') UNION ALL
							SELECT a.* from new_wd.rz_borrow_collection_2 a INNER JOIN new_wd.rz_borrow_big b on a.big_borrow_id=b.id INNER JOIN new_wd.rz_borrow c on a.borrow_id=c.id where a.`status` in (0,1,66) and b.product_id=10020 and c.full_time <= CONCAT(DATE_SUB(CURDATE(),INTERVAL 1 day),' 23:59:59') and c.full_time <> "0000-00-00 00:00:00" and a.repayment_time > CONCAT(DATE_SUB(CURDATE(),INTERVAL 1 day),' 23:59:59') UNION ALL
							SELECT a.* from new_wd.rz_borrow_collection_3 a INNER JOIN new_wd.rz_borrow_big b on a.big_borrow_id=b.id INNER JOIN new_wd.rz_borrow c on a.borrow_id=c.id where a.`status` in (0,1,66) and b.product_id=10020 and c.full_time <= CONCAT(DATE_SUB(CURDATE(),INTERVAL 1 day),' 23:59:59') and c.full_time <> "0000-00-00 00:00:00" and a.repayment_time > CONCAT(DATE_SUB(CURDATE(),INTERVAL 1 day),' 23:59:59') UNION ALL
							SELECT a.* from new_wd.rz_borrow_collection_4 a INNER JOIN new_wd.rz_borrow_big b on a.big_borrow_id=b.id INNER JOIN new_wd.rz_borrow c on a.borrow_id=c.id where a.`status` in (0,1,66) and b.product_id=10020 and c.full_time <= CONCAT(DATE_SUB(CURDATE(),INTERVAL 1 day),' 23:59:59') and c.full_time <> "0000-00-00 00:00:00" and a.repayment_time > CONCAT(DATE_SUB(CURDATE(),INTERVAL 1 day),' 23:59:59') UNION ALL
							SELECT a.* from new_wd.rz_borrow_collection_5 a INNER JOIN new_wd.rz_borrow_big b on a.big_borrow_id=b.id INNER JOIN new_wd.rz_borrow c on a.borrow_id=c.id where a.`status` in (0,1,66) and b.product_id=10020 and c.full_time <= CONCAT(DATE_SUB(CURDATE(),INTERVAL 1 day),' 23:59:59') and c.full_time <> "0000-00-00 00:00:00" and a.repayment_time > CONCAT(DATE_SUB(CURDATE(),INTERVAL 1 day),' 23:59:59') UNION ALL
							SELECT a.* from new_wd.rz_borrow_collection_6 a INNER JOIN new_wd.rz_borrow_big b on a.big_borrow_id=b.id INNER JOIN new_wd.rz_borrow c on a.borrow_id=c.id where a.`status` in (0,1,66) and b.product_id=10020 and c.full_time <= CONCAT(DATE_SUB(CURDATE(),INTERVAL 1 day),' 23:59:59') and c.full_time <> "0000-00-00 00:00:00" and a.repayment_time > CONCAT(DATE_SUB(CURDATE(),INTERVAL 1 day),' 23:59:59') UNION ALL
							SELECT a.* from new_wd.rz_borrow_collection_7 a INNER JOIN new_wd.rz_borrow_big b on a.big_borrow_id=b.id INNER JOIN new_wd.rz_borrow c on a.borrow_id=c.id where a.`status` in (0,1,66) and b.product_id=10020 and c.full_time <= CONCAT(DATE_SUB(CURDATE(),INTERVAL 1 day),' 23:59:59') and c.full_time <> "0000-00-00 00:00:00" and a.repayment_time > CONCAT(DATE_SUB(CURDATE(),INTERVAL 1 day),' 23:59:59') UNION ALL
							SELECT a.* from new_wd.rz_borrow_collection_8 a INNER JOIN new_wd.rz_borrow_big b on a.big_borrow_id=b.id INNER JOIN new_wd.rz_borrow c on a.borrow_id=c.id where a.`status` in (0,1,66) and b.product_id=10020 and c.full_time <= CONCAT(DATE_SUB(CURDATE(),INTERVAL 1 day),' 23:59:59') and c.full_time <> "0000-00-00 00:00:00" and a.repayment_time > CONCAT(DATE_SUB(CURDATE(),INTERVAL 1 day),' 23:59:59') UNION ALL
							SELECT a.* from new_wd.rz_borrow_collection_9 a INNER JOIN new_wd.rz_borrow_big b on a.big_borrow_id=b.id INNER JOIN new_wd.rz_borrow c on a.borrow_id=c.id where a.`status` in (0,1,66) and b.product_id=10020 and c.full_time <= CONCAT(DATE_SUB(CURDATE(),INTERVAL 1 day),' 23:59:59') and c.full_time <> "0000-00-00 00:00:00" and a.repayment_time > CONCAT(DATE_SUB(CURDATE(),INTERVAL 1 day),' 23:59:59') UNION ALL
							SELECT a.* from new_wd.rz_borrow_collection_10 a INNER JOIN new_wd.rz_borrow_big b on a.big_borrow_id=b.id INNER JOIN new_wd.rz_borrow c on a.borrow_id=c.id where a.`status` in (0,1,66) and b.product_id=10020 and c.full_time <= CONCAT(DATE_SUB(CURDATE(),INTERVAL 1 day),' 23:59:59') and c.full_time <> "0000-00-00 00:00:00" and a.repayment_time > CONCAT(DATE_SUB(CURDATE(),INTERVAL 1 day),' 23:59:59') UNION ALL
							SELECT a.* from new_wd.rz_borrow_collection_11 a INNER JOIN new_wd.rz_borrow_big b on a.big_borrow_id=b.id INNER JOIN new_wd.rz_borrow c on a.borrow_id=c.id where a.`status` in (0,1,66) and b.product_id=10020 and c.full_time <= CONCAT(DATE_SUB(CURDATE(),INTERVAL 1 day),' 23:59:59') and c.full_time <> "0000-00-00 00:00:00" and a.repayment_time > CONCAT(DATE_SUB(CURDATE(),INTERVAL 1 day),' 23:59:59') UNION ALL
							SELECT a.* from new_wd.rz_borrow_collection_12 a INNER JOIN new_wd.rz_borrow_big b on a.big_borrow_id=b.id INNER JOIN new_wd.rz_borrow c on a.borrow_id=c.id where a.`status` in (0,1,66) and b.product_id=10020 and c.full_time <= CONCAT(DATE_SUB(CURDATE(),INTERVAL 1 day),' 23:59:59') and c.full_time <> "0000-00-00 00:00:00" and a.repayment_time > CONCAT(DATE_SUB(CURDATE(),INTERVAL 1 day),' 23:59:59') UNION ALL
							SELECT a.* from new_wd.rz_borrow_collection_13 a INNER JOIN new_wd.rz_borrow_big b on a.big_borrow_id=b.id INNER JOIN new_wd.rz_borrow c on a.borrow_id=c.id where a.`status` in (0,1,66) and b.product_id=10020 and c.full_time <= CONCAT(DATE_SUB(CURDATE(),INTERVAL 1 day),' 23:59:59') and c.full_time <> "0000-00-00 00:00:00" and a.repayment_time > CONCAT(DATE_SUB(CURDATE(),INTERVAL 1 day),' 23:59:59') UNION ALL
							SELECT a.* from new_wd.rz_borrow_collection_14 a INNER JOIN new_wd.rz_borrow_big b on a.big_borrow_id=b.id INNER JOIN new_wd.rz_borrow c on a.borrow_id=c.id where a.`status` in (0,1,66) and b.product_id=10020 and c.full_time <= CONCAT(DATE_SUB(CURDATE(),INTERVAL 1 day),' 23:59:59') and c.full_time <> "0000-00-00 00:00:00" and a.repayment_time > CONCAT(DATE_SUB(CURDATE(),INTERVAL 1 day),' 23:59:59') UNION ALL
							SELECT a.* from new_wd.rz_borrow_collection_15 a INNER JOIN new_wd.rz_borrow_big b on a.big_borrow_id=b.id INNER JOIN new_wd.rz_borrow c on a.borrow_id=c.id where a.`status` in (0,1,66) and b.product_id=10020 and c.full_time <= CONCAT(DATE_SUB(CURDATE(),INTERVAL 1 day),' 23:59:59') and c.full_time <> "0000-00-00 00:00:00" and a.repayment_time > CONCAT(DATE_SUB(CURDATE(),INTERVAL 1 day),' 23:59:59') UNION ALL
							SELECT a.* from new_wd.rz_borrow_collection_16 a INNER JOIN new_wd.rz_borrow_big b on a.big_borrow_id=b.id INNER JOIN new_wd.rz_borrow c on a.borrow_id=c.id where a.`status` in (0,1,66) and b.product_id=10020 and c.full_time <= CONCAT(DATE_SUB(CURDATE(),INTERVAL 1 day),' 23:59:59') and c.full_time <> "0000-00-00 00:00:00" and a.repayment_time > CONCAT(DATE_SUB(CURDATE(),INTERVAL 1 day),' 23:59:59') UNION ALL
							SELECT a.* from new_wd.rz_borrow_collection_17 a INNER JOIN new_wd.rz_borrow_big b on a.big_borrow_id=b.id INNER JOIN new_wd.rz_borrow c on a.borrow_id=c.id where a.`status` in (0,1,66) and b.product_id=10020 and c.full_time <= CONCAT(DATE_SUB(CURDATE(),INTERVAL 1 day),' 23:59:59') and c.full_time <> "0000-00-00 00:00:00" and a.repayment_time > CONCAT(DATE_SUB(CURDATE(),INTERVAL 1 day),' 23:59:59') UNION ALL
							SELECT a.* from new_wd.rz_borrow_collection_18 a INNER JOIN new_wd.rz_borrow_big b on a.big_borrow_id=b.id INNER JOIN new_wd.rz_borrow c on a.borrow_id=c.id where a.`status` in (0,1,66) and b.product_id=10020 and c.full_time <= CONCAT(DATE_SUB(CURDATE(),INTERVAL 1 day),' 23:59:59') and c.full_time <> "0000-00-00 00:00:00" and a.repayment_time > CONCAT(DATE_SUB(CURDATE(),INTERVAL 1 day),' 23:59:59') UNION ALL
							SELECT a.* from new_wd.rz_borrow_collection_19 a INNER JOIN new_wd.rz_borrow_big b on a.big_borrow_id=b.id INNER JOIN new_wd.rz_borrow c on a.borrow_id=c.id where a.`status` in (0,1,66) and b.product_id=10020 and c.full_time <= CONCAT(DATE_SUB(CURDATE(),INTERVAL 1 day),' 23:59:59') and c.full_time <> "0000-00-00 00:00:00" and a.repayment_time > CONCAT(DATE_SUB(CURDATE(),INTERVAL 1 day),' 23:59:59') UNION ALL
							SELECT a.* from new_wd.rz_borrow_collection_20 a INNER JOIN new_wd.rz_borrow_big b on a.big_borrow_id=b.id INNER JOIN new_wd.rz_borrow c on a.borrow_id=c.id where a.`status` in (0,1,66) and b.product_id=10020 and c.full_time <= CONCAT(DATE_SUB(CURDATE(),INTERVAL 1 day),' 23:59:59') and c.full_time <> "0000-00-00 00:00:00" and a.repayment_time > CONCAT(DATE_SUB(CURDATE(),INTERVAL 1 day),' 23:59:59') UNION ALL
							SELECT a.* from new_wd.rz_borrow_collection_21 a INNER JOIN new_wd.rz_borrow_big b on a.big_borrow_id=b.id INNER JOIN new_wd.rz_borrow c on a.borrow_id=c.id where a.`status` in (0,1,66) and b.product_id=10020 and c.full_time <= CONCAT(DATE_SUB(CURDATE(),INTERVAL 1 day),' 23:59:59') and c.full_time <> "0000-00-00 00:00:00" and a.repayment_time > CONCAT(DATE_SUB(CURDATE(),INTERVAL 1 day),' 23:59:59') UNION ALL
							SELECT a.* from new_wd.rz_borrow_collection_22 a INNER JOIN new_wd.rz_borrow_big b on a.big_borrow_id=b.id INNER JOIN new_wd.rz_borrow c on a.borrow_id=c.id where a.`status` in (0,1,66) and b.product_id=10020 and c.full_time <= CONCAT(DATE_SUB(CURDATE(),INTERVAL 1 day),' 23:59:59') and c.full_time <> "0000-00-00 00:00:00" and a.repayment_time > CONCAT(DATE_SUB(CURDATE(),INTERVAL 1 day),' 23:59:59') UNION ALL
							SELECT a.* from new_wd.rz_borrow_collection_23 a INNER JOIN new_wd.rz_borrow_big b on a.big_borrow_id=b.id INNER JOIN new_wd.rz_borrow c on a.borrow_id=c.id where a.`status` in (0,1,66) and b.product_id=10020 and c.full_time <= CONCAT(DATE_SUB(CURDATE(),INTERVAL 1 day),' 23:59:59') and c.full_time <> "0000-00-00 00:00:00" and a.repayment_time > CONCAT(DATE_SUB(CURDATE(),INTERVAL 1 day),' 23:59:59') UNION ALL
							SELECT a.* from new_wd.rz_borrow_collection_24 a INNER JOIN new_wd.rz_borrow_big b on a.big_borrow_id=b.id INNER JOIN new_wd.rz_borrow c on a.borrow_id=c.id where a.`status` in (0,1,66) and b.product_id=10020 and c.full_time <= CONCAT(DATE_SUB(CURDATE(),INTERVAL 1 day),' 23:59:59') and c.full_time <> "0000-00-00 00:00:00" and a.repayment_time > CONCAT(DATE_SUB(CURDATE(),INTERVAL 1 day),' 23:59:59') UNION ALL
							SELECT a.* from new_wd.rz_borrow_collection_25 a INNER JOIN new_wd.rz_borrow_big b on a.big_borrow_id=b.id INNER JOIN new_wd.rz_borrow c on a.borrow_id=c.id where a.`status` in (0,1,66) and b.product_id=10020 and c.full_time <= CONCAT(DATE_SUB(CURDATE(),INTERVAL 1 day),' 23:59:59') and c.full_time <> "0000-00-00 00:00:00" and a.repayment_time > CONCAT(DATE_SUB(CURDATE(),INTERVAL 1 day),' 23:59:59') UNION ALL
							SELECT a.* from new_wd.rz_borrow_collection_26 a INNER JOIN new_wd.rz_borrow_big b on a.big_borrow_id=b.id INNER JOIN new_wd.rz_borrow c on a.borrow_id=c.id where a.`status` in (0,1,66) and b.product_id=10020 and c.full_time <= CONCAT(DATE_SUB(CURDATE(),INTERVAL 1 day),' 23:59:59') and c.full_time <> "0000-00-00 00:00:00" and a.repayment_time > CONCAT(DATE_SUB(CURDATE(),INTERVAL 1 day),' 23:59:59') UNION ALL
							SELECT a.* from new_wd.rz_borrow_collection_27 a INNER JOIN new_wd.rz_borrow_big b on a.big_borrow_id=b.id INNER JOIN new_wd.rz_borrow c on a.borrow_id=c.id where a.`status` in (0,1,66) and b.product_id=10020 and c.full_time <= CONCAT(DATE_SUB(CURDATE(),INTERVAL 1 day),' 23:59:59') and c.full_time <> "0000-00-00 00:00:00" and a.repayment_time > CONCAT(DATE_SUB(CURDATE(),INTERVAL 1 day),' 23:59:59') UNION ALL
							SELECT a.* from new_wd.rz_borrow_collection_28 a INNER JOIN new_wd.rz_borrow_big b on a.big_borrow_id=b.id INNER JOIN new_wd.rz_borrow c on a.borrow_id=c.id where a.`status` in (0,1,66) and b.product_id=10020 and c.full_time <= CONCAT(DATE_SUB(CURDATE(),INTERVAL 1 day),' 23:59:59') and c.full_time <> "0000-00-00 00:00:00" and a.repayment_time > CONCAT(DATE_SUB(CURDATE(),INTERVAL 1 day),' 23:59:59') UNION ALL
							SELECT a.* from new_wd.rz_borrow_collection_29 a INNER JOIN new_wd.rz_borrow_big b on a.big_borrow_id=b.id INNER JOIN new_wd.rz_borrow c on a.borrow_id=c.id where a.`status` in (0,1,66) and b.product_id=10020 and c.full_time <= CONCAT(DATE_SUB(CURDATE(),INTERVAL 1 day),' 23:59:59') and c.full_time <> "0000-00-00 00:00:00" and a.repayment_time > CONCAT(DATE_SUB(CURDATE(),INTERVAL 1 day),' 23:59:59') UNION ALL
							SELECT a.* from new_wd.rz_borrow_collection_30 a INNER JOIN new_wd.rz_borrow_big b on a.big_borrow_id=b.id INNER JOIN new_wd.rz_borrow c on a.borrow_id=c.id where a.`status` in (0,1,66) and b.product_id=10020 and c.full_time <= CONCAT(DATE_SUB(CURDATE(),INTERVAL 1 day),' 23:59:59') and c.full_time <> "0000-00-00 00:00:00" and a.repayment_time > CONCAT(DATE_SUB(CURDATE(),INTERVAL 1 day),' 23:59:59') UNION ALL
							SELECT a.* from new_wd.rz_borrow_collection_31 a INNER JOIN new_wd.rz_borrow_big b on a.big_borrow_id=b.id INNER JOIN new_wd.rz_borrow c on a.borrow_id=c.id where a.`status` in (0,1,66) and b.product_id=10020 and c.full_time <= CONCAT(DATE_SUB(CURDATE(),INTERVAL 1 day),' 23:59:59') and c.full_time <> "0000-00-00 00:00:00" and a.repayment_time > CONCAT(DATE_SUB(CURDATE(),INTERVAL 1 day),' 23:59:59')
					) a
     ) h
INNER JOIN 01u_0info c on h.uid = c.uid
where c.uid_kefu not in (145854,73170,73195,73721,112103,244848,276009,304525,1,181135,757996,910859)
and h.uid not in (740,181,827,1008,1444,1451,1435,1452,6420,7127,11336,11350,11353,11871,12135,5528,18710,19104,19103,27632,6094,12668,14288)
GROUP BY h.uid