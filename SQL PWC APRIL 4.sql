SELECT * FROM SOURCES

SELECT * FROM TARGETS




--INFERENCE--

--3 IS NEW  IN SOURCE TABLE--
--4 IS MISMATCH IN TARGET TABLE--
--5 IS NEW IN TARGET TABLE--

WITH CTE AS
(
SELECT * FROM SOURCES s
FULL OUTER JOIN TARGETS t on s.sid=t.tid
),
CTE1 AS(
SELECT sid,tid,
CASE
WHEN sid is NOT NULL and tid is NULL then 'New in Source'
WHEN sid is NULL and tid is NOT NULL then 'New in Target'
WHEN sid=tid and sname<>tname then 'Mismatched'
else 'OK'
END as Review
from CTE 
)
SELECT COALESCE(sid,tid)as id,Review
FROM CTE1
where review<>'OK'