SELECT DATE_SUB(CURDATE(),INTERVAL 1 day) qdate
from rz_user.rz_user
GROUP BY DATE_SUB(CURDATE(),INTERVAL 1 day)