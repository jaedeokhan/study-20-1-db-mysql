# study-20-1-mysql
2020 0624 WED mysql 기본 사용법 
* MySQL 데이터베이스 한번에 끝내기 SQL Full Tutorial Course using MySQL Database - 이수안컴퓨터연구소 
* 위의 영상을 보고 SQL 사용법을 정리

## DDL , DML, DCL 
* DDL(Data Definition Language) => CREATE , DROP, UPDATE
* DML(Data Manipulation Language) => SELECT, INSERT, UPDATE, DELETE
* DCL(Data Control Language) => GRANT, REVOKE 등

### Part 1 : Lab => 실습
* LAB #02 : [LAB_02.sql](https://github.com/jaedeokhan/study-20-1-mysql/blob/master/labfile/LAB_02.sql)
   * 1. 한국에 있는 도시들 보기
   * 2. 미국에 있는 도시들 보기
   * 3. 한국에 있는 도시들 중에 인구 수가 1,000,000 이상인 도시 보기

* LAB #03 : [LAB_03.sql](https://github.com/jaedeokhan/study-20-1-mysql/blob/master/labfile/LAB_03.sql)
   * 1. 한국, 미국, 일본의 도시들 보기

* LAB #04 : [LAB_04.sql](https://github.com/jaedeokhan/study-20-1-mysql/blob/master/labfile/LAB_04.sql)
   * 1. 인구수로 내림차순하여 한국에 있는 도시 보기
   * 2. 국가 면적 크기로 내림차순하여 나라 보기(country table)

* LAB #05 : [LAB_05.sql](https://github.com/jaedeokhan/study-20-1-mysql/blob/master/labfile/LAB_05.sql)
   * 1. 도시는 몇개인가?
   * 2. 도시들의 평균 인구수

* LAB #06 : [LAB_06.sql](https://github.com/jaedeokhan/study-20-1-mysql/blob/master/labfile/LAB_06.sql)
   * 1. city, country, countrylanguage 테이블 3개를 JOIN 하기
 
* LAB #07 : [LAB_07.sql](https://github.com/jaedeokhan/study-20-1-mysql/blob/master/labfile/LAB_07.sql)
   * 1. city, country, countrylanguage 테이블을 JOIN하고, 한국에 대한 정보만 뷰 생성하기

### Part 2 : 이론 

### 1. DDL 

#### 1.1 SHOW, DESC 
 * [1_DDL.sql](https://github.com/jaedeokhan/study-20-1-mysql/blob/master/sqlfile/1_DDL.sql)
 * 현재 서버에 어떤 DB가 있는지 보기
 * 데이터베이스 선택 사용
 * 현재 데이터베이스 테이블의 상태 보기
 * city, country, countrylanguage 테이블에 무슨 열이 있는지 확인

### 2. DML

#### 2.1 SELECT
* (*) 사용, WHERE, 조건, 관계 연산자, BETWEEN...AND
* [2_DML_SELECT.sql](https://github.com/jaedeokhan/study-20-1-mysql/blob/master/sqlfile/2_DML_SELECT.sql)


#### 2.1.1 LIKE
* LIKE 문자열의 내용 검색하기 위해 LIKE 연산 사용
* '%', '_' 
* [2_1_DML_LIKE.sql](https://github.com/jaedeokhan/study-20-1-mysql/blob/master/sqlfile/2_1_DML_LIKE.sql)

#### 2.3 SUB_QUERY 
* 속성 ANY, SOME, ALL
* ANY 와 SOME은 동일하게 하나라도 일치하면 되고, ALL은 모두 만족해야한다.
* [2_2_DML_SUB_QUERY.sql](https://github.com/jaedeokhan/study-20-1-mysql/blob/master/sqlfile/2_2_DML_SUB_QUERY.sql)

#### 2.4 ORDEY BY
* 속성을 기준으로 정렬, 기본값은 ASC
* ORDER BY [ASC | DESC]
* [2_3_DML_ORDER_BY.sql](https://github.com/jaedeokhan/study-20-1-mysql/blob/master/sqlfile/2_3_DML_ORDER_BY.sql)

#### 2.5 GROUP BY
* 그룹으로 묶어주는 역할, 집계 함수 사용(AVG(), MAX() 등)
* [2_5_DML_GROUP_BY.sql](https://github.com/jaedeokhan/study-20-1-mysql/blob/master/sqlfile/2_5_DML_GROUP_BY.sql)

#### 2.6 GROUP BY => HAVING, ROLLUP
* HAVING 은 GROUP BY의 조건 연산 사용위해 필요
* ROLLUP 은 중간합계가 필요한 경우 사용
* [2_6_DML__HAVING_ROLLUP.sql](https://github.com/jaedeokhan/study-20-1-mysql/blob/master/sqlfile/2_6_DML__HAVING_ROLLUP.sql)

#### 2.7 JOIN 
* JOIN은 데이터베이스 내의 여러 테이블에서 가져온 레코드를 조합해서 하나의 테이블이나 결과 집합으로 표현
* [2_7_DML_JOIN.sql](https://github.com/jaedeokhan/study-20-1-mysql/blob/master/sqlfile/2_7_DML_JOIN.sql)

#### 2.8 MYSQL 내장 함수
* 문자열 함수 : LENGTH(), CONCAT(), LOCATE(), LEFT(), RIGHT(), LOWER(), UPPER(), REPLACE(), TRIM(), FORMAT()
* 수학 함수 : FLOOR(), CEIL(), ROUND(), SQRT(), POS(), EXP(), LOG(), SIN(), COS(), TAN(), ABS(), RAND()
* 날짜와 시간 함수 : NOW(), CURDATE(), CURTIME(), DATE(), MONTH(), DAY(), HOUR(), MINUTE(), SECOND(), MONTHNAME(), DAYNAME(), DAYOFWEEK(), DAYOFMONTH(), DAYOFYEAR(), DATE_FORMAT()
* [2_8_DML_BUILT_IN_FUNCTION.sql](https://github.com/jaedeokhan/study-20-1-mysql/blob/master/sqlfile/2_8_DML_BUILT_IN_FUNCTION.sql)

### 3. DDL 


#### 3.1.1 CREATE TABLE, CREATE DATABASE , ALTER TABLE ADD, ALTER TABLE MODIFY
* 테이블 생성, 데이터베이스 생성
* 테이블의 컬럼을 ADD
* 테이블의 컬럼을 MODIFY
* [3_DDL_CREATE_ALTER.sql](https://github.com/jaedeokhan/study-20-1-mysql/blob/master/sqlfile/3_DDL_CREATE_ALTER.sql)

#### 3.1.2 VIEW
* CREATE VIEW 생성, ALTER VIEW  변경, DROP VIEW 삭제
* [3_1_DDL_CREATE_VIEW.sql](https://github.com/jaedeokhan/study-20-1-mysql/blob/master/sqlfile/3_1_DDL_CREATE_VIEW.sql)

#### 3.2 INDEX, FULLTEXT
* CREATE INDEX, UNIQUE INDEX
* FULLTEXT INDEX : 일반적인 인덱스와는 달리 매우 빠르게 테이블의 모든 텍스트 컬럼을 검색
* [3_1_DDL_INDEX_CREATE_ALTER.sql](https://github.com/jaedeokhan/study-20-1-mysql/blob/master/sqlfile/3_1_DDL_INDEX_CREATE_ALTER.sql)


#### 3.3 INSERT
* DDL 에서 INSERT 구문, SELECT해서 INSERT하기
* [3_3_DDL_INSERT.sql](https://github.com/jaedeokhan/study-20-1-mysql/blob/master/sqlfile/3_3_DDL_INSERT.sql)

#### 3.4 UPDATE
* DDL 에서 UPDATE 구문 사용 
* [3_5_DDL_UPDATE.sql](https://github.com/jaedeokhan/study-20-1-mysql/blob/master/sqlfile/3_5_DDL_UPDATE.sql)

#### 3.5 DELETE, TRUNCATE, DROP
* DELETE 로 TABLE 내용 삭제, TRUNCATE로 모두 테이블 내용 모두 삭제, DROP으로 데이터 베이스 삭제
* [3_6_DDL_DELETE_TRUNCATE_DROP.sql](https://github.com/jaedeokhan/study-20-1-mysql/blob/master/sqlfile/3_6_DDL_DELETE_TRUNCATE_DROP.sql)


