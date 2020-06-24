# study-20-1-mysql
2020 0624 WED mysql 기본 사용법 
* MySQL 데이터베이스 한번에 끝내기 SQL Full Tutorial Course using MySQL Database - 이수안컴퓨터연구소 
* 위의 영상을 보고 SQL 사용법을 정리

### DDL , DML, DCL 
* DDL(Data Definition Language) => CREATE , DROP, UPDATE
* DML(Data Manipulation Language) => SELECT, INSERT, UPDATE, DELETE
* DCL(Data Control Language) => GRANT, REVOKE 등

### 1. DDL
#### 1.1 현재 서버에 어떤 DB가 있는지 보기

```sql
SHOW DATABASES;
```

#### 1.2 사용할 데이터베이스 지정

```sql
# USE database_name
USE HelloWorld;
```
 
#### 1.3 테이블 확인

```sql
SHOW TABLES;

# 현재 테이블의 상태를 확인.
SHOW TABLE STATUS;

# 원하는 테이블의 해당 목록을 검색
DESC table_name;
```

### 2. DML

#### 2.1 SELECT [속성] FROM [테이블] 
* <SELECT ...FROM>
* 요구하는 데이터를 가져오는 구문
* 일반적으로 가장 많이 사용되는 구문
* 데이터베이스 내 테이블에서 원하는 정보를 추출
* SELECT 구문 형식
```
SELECT select_expr
      |FROM table_references|
      |WHERE where_condition|
      |GROUP BY {col_name | expr | position}|
      |HAVING where_condition|
      |ORDER BY {col_name | expr | position}|
```

```sql
# 모든 속성 검색
SELECT * FROM tabel_name;

```

#### 2.2 기본적인 조건 WHERE 

#### 2.2.1 WHERE 관계 연산자의 사용
* OR 
* AND
* 조건 연산자(=, < , > , <=, >=, !=)
* 관계 연산자(NOT, AND, OR)
* 연산자의 조합으로 데이터를 효율적으로 춫ㄹ

```sql
SELECT *
FROM city
WHERE Popluation < 800000
AND Popluation > 700000;
```

#### 2.3 BETWEEN ... AND
연속적인 범위를 지정할 때 사용이 가능하다.

```sql
SELECT *
FROM city
WHERE Population BETWEEN 700000 AND 800000;
```

#### 2.4 IN
이산적인 값의 조건에서는 IN() 사용 가능

```sql
SELECT * 
FROM city
WHERE Name IN('Seoul', 'New York', 'Tokyo');
```

#### 2.5 LIKE
문자열의 내용 검색하기 위해 LIKE 연산자 사용
* 문자 뒤에 % 무엇이든 (%) 허용
* 한 글자와 매치하기 위해서는 '_' 를 사용

```sql
SELECT *
FROM city
WHERE CountryCode LIKE 'KO_';
```

```sql
SELECT *
FROM city
WHERE Name LIKE 'Tel %'
```

#### 2.6 서브 쿼리 (SubQuery)
쿼리 문 안에 또 쿼리문이 들어 있는 것

```sql
SELECT *
FROM city
WHERE CountryCode = ( SELECT Country Code
                      FROM city
		      WHERE Name='Seoul');
```

#### 2.7 ANY 
서브쿼리의 여러 개의 결과 중 한가지만 만족해도 가능
* SOME 은 ANY와 동일한 의미로 사용
* =ANY 구문은 IN과 동일한 의미

```sql
SELECT *
FROM city
WHERE Population > ANY (  SELECT Population
                          FROM city
                          WHERE District = 'New York');
```

```sql
SELECT *
FROM city
WHERE Population > SOME (  SELECT Population
                          FROM city
                          WHERE District = 'New York');
```

#### 2.7.1 ALL
서브쿼리의 여러 개의 결과를 모두 만족시켜야 함

```sql
SELECT *
FROM city
WHERE Population > ALL (  SELECT Population
                          FROM city
                          WHERE District = 'New York');
```

#### 2.8 ORDER BY 
* 결과가 출력되는 순서를 조절하는 구문
* 기본적으로 오름차순 정렬 => ASC
* 내림차순 정렬 => DESC

#### 2.8.1 ORDER BY 혼합 구문

```sql
SELECT * 
FROM city
ORDER BY CountryCode ASC, Population DESC
```


#### 2.9 





