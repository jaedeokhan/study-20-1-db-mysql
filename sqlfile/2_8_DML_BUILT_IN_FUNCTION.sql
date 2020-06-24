-- MYSQL 내장함수
-- 사용자의 편의를 위해 다양한 기능의 내장 함수가 존재한다.
-- 대표적인 내장 함수의 종류
-- * 문자열 함수
-- * 수학 함수
-- * 날짜와 시간 함수

-- LENGTH() 전달받은 문자열의 길이를 반환
SELECT LENGTH('안녕하세요. 문자열 길이 테스트입니다.');

-- CONCAT() 전달받은 문자열을 모두 결합하여 하나의 문자열로 반환
SELECT CONCAT('Hello ', 'World', ' MySQL');

-- 전달받은 문자열 중 하나라도 NULL이 존재하면 NULL을 반환
SELECT CONCAT('Hello ', 'World', ' MySQL'),
CONCAT(NULL, 'JAVA');

-- LOCATE()  문자열 내에서 찾는 문자열이 처음으로 나타나는 위치를 찾아서
-- 해당 위치를 반환
-- 찾는 문자열이 문자열 내에 존재하지 않으면 0을 반환
-- MySQL 에서는 문자열의 시작 인덱스를 1부터 계산
SELECT LOCATE('hELLO', 'asdflajsdfASDFhELLO');

-- LEFT() : 문자열의 왼쪽부터 지정한 개수만큼 문자를 반환
SELECT LEFT('abc hello world abc', 5);

-- RIGHT() : 문자열의 오른쪽부터 지정한 개수만큼의 문자를 반환
SELECT RIGHT('abc hello world abc', 5);

-- LOWER() : 문자열의 문자를 모두 소문자로 변경
SELECT LOWER('ASDFASDFasdfasdfAFASFDasdfasdf');

-- UPPER() : 문자열의 문자를 모두 대문자로 변경
SELECT UPPER('ASFASFadfasdfASDFASDFasdfasfd');

-- REPLACE() : 문자열에서 특정 문자열을 대체 문자열로 교체
SELECT REPLACE('MSSQL', 'MS', 'MY');

-- TRIM() 
-- 문자열의 앞이나 뒤, 또는 양쪽 모두에 있는 특정 문자를 제거
-- TRIM() 함수에서 사용할 수 있는 지정자
-- BOTH : 전달받은 문자열 양 끝에 존재하는 특정 문자를 제거(기본 설정)
-- LEADING : 전달받은 문자열 앞에 존재하는 특정 문자를 제거
-- TRAILING : 전달받은 문자열 뒤에 존재하는 특정 문자를 제거
-- 만약 지정자로 명시하지 않으면, 자동으로 BOTH 로 설정
-- 제거할 문자를 명시하지 않으면, 자동으로 공백을 제거
SELECT TRIM('           MYSQL              '),
TRIM(LEADING '#' FROM '###MYSQL##'),
TRIM(TRAILING '#' FROM '###MYSQL###');

-- FORMAT()
-- 숫자 타입의 데이터를 세 자리마다 쉼표(,) 를 사용하는 '#,###,###.##' 형식으로 변환
-- 반환되는 데이터의 형식은 문자열 타입
-- 두 번째 인수는 반올림할 소수 부분의 자릿 수
SELECT FORMAT(112341234123413.24123414, 3);
SELECT FORMAT(112341234123413.24123414, 6);

-- FLOOR() : 내림
-- CEIL()  : 올림
-- ROUND() : 반올림 
SELECT FLOOR(10.95), CEIL(10.95), ROUND(10.95);

-- SQRT() : 양의 제곱근
-- POS() : 첫 번째 인수로는 밑수를 전달하고, 두 번째 인수로는 지수를 전달하여 거듭제곱을 계산
-- EXP() : 인수로 지수를 전달받아, e의 거듭제곱을 계산
-- LOG() : 자연 로그 값을 계산
SELECT SQRT(4), POW(2, 3), EXP(3), LOG(3);

-- SIN(), COS(), TAN()
SELECT SIN(PI() /2), COS(PI()), TAN(PI()/ 4);

-- ABS() : 절대값을 반환
-- RAND() : 0.0보다 크거나 같고 1.0보다 작은 하나의 실수를 무작위로 생성
SELECT ABS(-1), RAND(), ROUND(RAND() * 100, 0);

-- NOW() : 현재 날짜와 시간을 반환, 반환되는 값은 'YYYY-MM-DD HH:MM:SS' 또는 YYYYMMDDHHMMSS 형태로 반환
-- NOW() = CURDATE() + CURTIME()
-- CURDATE() : 현재 날짜를 반환, 이때 반환 되는 값은 'YYYY-MM-DD'또는 YYYYMMDD형태로 반환
-- CURTIME() : 현재 시각을 반환, 이때 반환 되는 값은 'HH:MM:SS' 또는 HHMMSS 형태로 반환
SELECT NOW(), CURDATE(), CURTIME();

-- DATE(), MONTH() == 0-12 , DAY() == 0-31, HOUR()
SELECT 
NOW(),
DATE(NOW()),
MONTH(NOW()),
DAY(NOW()),
HOUR(NOW()),
MINUTE(NOW()),
SECOND(NOW());

-- MONTHNAME(), DAYNAME()
SELECT
NOW(),
MONTHNAME(NOW()),
DAYNAME(NOW());


-- DAYOFWEEK() : 일자가 해당 주에서 몇 번째 날인지 반환 1-7사이의 값, 일요일=1, 토요일=7
-- DAYOFMONTH() : 일자가 해당 월에서 몇 번째 날인지를 반환 0-31 사이의 값 반환
-- DAYOFYEAR() : 일자가 해당 연도에서 몇 번째 날인지를 반환, 1부터 366사이의 값을 반환
SELECT
NOW(),
DAYOFWEEK(NOW()),
DAYOFMONTH(NOW()),
DAYOFYEAR(NOW());

-- DATE_FORMAT() : 전달받은 형식에 맞춰 날짜와 시간 정보를 문자열로 반환
SELECT
DATE_FORMAT(NOW(), '%D %y %a %d %m %n %j');

