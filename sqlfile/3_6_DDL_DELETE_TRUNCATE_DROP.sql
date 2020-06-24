-- DELETE
-- 행 단위로 데이터를 삭제하는 ㄱ무ㅜㄴ
-- DELETE FROM 테이블 WHERE 조건;
-- 데어터는 지워지지만 테이블 용량은 줄어들지 않음 => rollback이 가능하다.
-- 원하는 데이터만 지울 수 있음
-- 삭제 후 잘못 삭제한 것을 되돌릴 수 있음

DELETE FROM test
WHERE id  = 1;

SELECT * FROM test;

-- TRUNCATE 
-- 용량이 줄어 들고, 인덱스 등도 모두 삭제
-- 테이블은 삭제하지도 않고, 데이터만 삭제
-- 한꺼번에 다 지워야 함
-- 삭제 후 절대 되돌릴 수 없음
TRUNCATE TABLE test;

SELECT * FROM test;

-- DROP TABLE 
-- 테이블 전체를 삭제, 공간, 객체를 삭제
-- 삭제 후 절대 되돌릴 수 없음
DROP TABLE my_table;
DROP DATABASE my_database;