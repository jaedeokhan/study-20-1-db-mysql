-- CAEATE TABLE AS SELECT
-- city 테이블과 똑같은 city2 테이블 생성 
-- VIEW TABLE CREATE
CREATE TABLE city2 AS SELECT * FROM city;
SELECT * FROM city2;

-- CREATE DATABASE 
-- 새로운 데이터베이스를 생성
-- USE 문으로 새 데이터베이스를 사용
CREATE DATABASE jaedeok;
USE jaedeok;

-- CREATE TABLE MyTable
CREATE TABLE test (
   id INT(11) PRIMARY KEY NOT NULL,
   col1 INT(11) NULL,
   col2 FLOAT NULL,
   col3 VARCHAR(45) NULL
);
   
SELECT * FROM test; 

-- ALTER TABLE 
ALTER TABLE test
ADD col4 INT NULL;

SELECT * FROM test;

-- ALTER MODIFY
ALTER TABLE test
MODIFY col4 VARCHAR(20);

DESC test;

-- DROP TABLE



