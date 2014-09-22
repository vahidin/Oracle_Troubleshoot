SELECT A.SID, A.USERNAME, a.sql_address,A.SQL_HASH_VALUE ,B.SQL_TEXT
FROM V$session A JOIN V$SQLAREA B
ON A.SQL_ADDRESS = B.ADDRESS
AND A.SQL_HASH_VALUE = B.HASH_VALUE
AND A.SID = &users_sid
/
