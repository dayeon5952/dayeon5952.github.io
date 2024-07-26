---
title: "[정보처리기사] SQL 응용"
date: 2024-07-07 00:34:00 +09:00
categories: [정보처리기사]
tags: [정보처리기사, SQL 응용 ]
---

## SQL 응용

#### **DDL(Data Define Language, 데이터 정의어)**

- DB 구조, 데이터 형식, 접근 방식 등 **<span style="background-color:#fff5b1">DB를 구축하거나 수정할 목적으로 사용하는 언어</span>**
- DDL의 3가지 유형
<table>
<thead>
<tr>
<th class="text-center" style="white-space:pre;">명령어</th>
<th class="text-center" style="white-space:pre;">기능</th>
</tr>
</thead>
<tbody>
<tr>
<td style="white-space:normal;">CREATE</td>
<td style="white-space:normal;">SCHEMA, DOMAIN, TABLE, VIEW, INDEX를 정의함</td>
</tr>
<tr>
<td style="white-space:normal;">ALTER</td>
<td style="white-space:normal;">TABLE에 대한 정의를 변경하는 데사용함</td>
</tr>
<tr>
<td style="white-space:normal;">DROP</td>
<td style="white-space:normal;">SCHEMA, DOMAIN, TABLE, VIEW, INDEX를 삭제함</td>
</tr>
</tbody>
</table>

#### **CREATE INDEX**

- **<span style="background-color:#fff5b1">인덱스를 정의하는 명령문</span>**
- **표기 형식**

```
CREATE [UNIQUE] INDEX 인덱스명
ON 테이블명(속성명 [ASC | DESC][, 속성명 [ASC | DESC]])
[CLUSTER];
```

- UNIQUE
  * 사용된 경우 : 중복 값이 없는 속성으로 인덱스를 생성함
  * 생략된 경우 : 중복 값을 허용하는 속성으로 인덱스를 생성함
- 정렬 여부 지정
  * ASC : 오름차순 정렬
  * DESC : 내림차순 정렬
  * 생략된 경우 : 오름차순으로 정렬됨
- CLUSTER : 사용하면 인덱스가 클러스터드 인덱스로 설정됨

#### **ALTER TABLE**

- **<span style="background-color:#fff5b1">테이블에 대한 정의를 변경하는 명령문</span>**
- **표기 형식**

```
ALTER TABLE 테이블명 ADD 속성명 데이터_타입 [DEFAULT '기본값'];
ALTER TABLE 테이블명 ALTER 속성명 [SET DEFAULT '기본값'];
ALTER TABLE 테이블명 DROP COLUMN 속성명 [CASCADE];
```

- ADD : 새로운 속성(열)을 추가할 때 사용함
- ALTER : 특정 속성의 Default 값을 변경할 때 사용함
- DROP COLUMN : 특정 속성을 삭제할 때 사용함

#### **DROP**

- **<span style="background-color: #fff5b1">스키마, 도메인, 기본 테이블, 뷰 테이블, 인덱스, 제약 조건 등을 제거하는 명령문</span>**
- **표기 형식**

```
DROP SCHEMA 스키마명 [CASCADE | RESTRICT];
DROP DOMAIN 도메인명 [CASCADE | RESTRICT];
DROP TABLE 테이블명 [CASCADE | RESTRICT];
DROP VIEW 뷰명 [CASCADE | RESTRICT];
DROP INDEX 인덱스명 [CASCADE | RESTRICT];
DROP CONSTRAINT 제약조건명;
```

- CASCADE : 제거할 요소를 참조하느 다른 모든 개체를 함께 제거함
- RESTRICT : 다른 개체가 제거할 요소를 참조중일 때는 제거를 취소함

#### **DCL(Data Control Language, 데이터 제어어)**

- **<span style="background-color:#fff5b1">데이터의 보안, 무결성, 회복, 병행 제어 등을 정의하는 데 사용하는 언어</span>**
- 데이터베이스 관리자(DBA)가 데이터 관리를 목적으로 사용
- DCL의 종류
<table>
<thead>
<tr>
<th class="text-center" style="white-space:pre;">명령어</th>
<th class="text-center" style="white-space:pre;">기능</th>
</tr>
</thead>
<tbody>
<tr>
<td style="white-space:normal;">COMMIT</td>
<td style="white-space:normal;">명령에 의해 수행된 결과를 실제 물리적 디스크로 저장하고, 데이터베이스 조작 작업이 정상적으로 완료되었음을 관리자에게 알려줌</td>
</tr>
<tr>
<td style="white-space:normal;">ROLLBACK</td>
<td style="white-space:normal;">데이터베이스 조작 작업이 비정상적으로 종료되었을 때 원래의 상태로 복구함</td>
</tr>
<tr>
<td style="white-space:normal;">GRANT</td>
<td style="white-space:normal;">데이터베이스 사용자에게 사용 권한을 부여함</td>
</tr>
<tr>
<td style="white-space:normal;">REVOKE</td>
<td style="white-space:normal;">데이터베이스 사용자의 사용 권한을 취소함</td>
</tr>
</tbody>
</table>

#### **GRANT/REVOKE**

- 데이터베이스 관리자가 데이터베이스 사용자에게 권한을 부여하거나 취소하기 위한 명령어
- GRANT : 권한 부여를 위한 명령어
- REVOKE : 권한 취소를 위한 명령어
- 테이블 및 속성에 대한 권한 부여 및 취소

```
GRANT 권한_리스트 ON 개체 TO 사용자 [WITH GRANT OPTION];
REVOKE [GRANT OPTION FOR] 권한_리스트 ON 개체 FROM 사용자 [CASCADE];
```

- 권한 종류 : ALL, SELECT, INSERT, DELETE, UPDATE 등
- WITH GRANT OPTION : 부여받은 권한을 다른 사용자에게 다시 부여할 수 있는 권한을 부여함
- GRANT OPTION FOR : 다른 사용자에게 권한을 부여할 수 있는 권한을 취소함
- CASCADE : 권한 취소 시 권한을 부여받았던 사용자가 다른 사용자에게 부여한 권한도 연쇄적으로 취소함

#### **ROLLBACK**

- **<span style="background-color:#fff5b1">변경되었으나 아직 COMMIT되지 않은 모든 내용들을 취소하고 데이터베이스를 이전 상태로 되돌리는 명령어</span>**
- 트랜잭션 전체가 성공적으로 끝나지 못하면 일부 변경된 내용만 데이터베이스에 반영되는 비일관성(Inconsistency) 상태가 될 수 있기 때문에 일부분만 완료된 트랜잭션은 롤백(Rollback)되어야 함

#### **DML(Data Manipulation Language, 데이터 조작어)**

- 데이터베이스 사용자가 <span style="background-color:#fff5b1">저장된 데이터를 실질적으로 관리하는데 사용되는 언어</span>**
- 데이터베이스 사용자와 데이터베이스 관리 시스템 간의 인터페이스를 제공
- DML의 유형
<table>
<thead>
<tr>
<th class="text-center" style="white-space:pre;">명령어</th>
<th class="text-center" style="white-space:pre;">기능</th>
</tr>
</thead>
<tbody>
<tr>
<td style="white-space: normal;">SELECT</td>
<td style="white-space: normal;">테이블에서 튜플을 검색함</td>
</tr>
<tr>
<td style="white-space: normal;">INSERT</td>
<td style="white-space: normal;">테이블에 새로운 튜플을 삽입함</td>
</tr>
<tr>
<td style="white-space: normal;">DELETE</td>
<td style="white-space: normal;">테이블에서 튜플을 삭제함</td>
</tr>
<tr>
<td style="white-space: normal;">UPDATE</td>
<td style="white-space: normal;">테이블에서 튜플의 내용을 갱신함</td>
</tr>
</tbody>
</table>

#### **삽입문(INSERT INTO~)**

기본 테이블에 새로운 튜플을 삽입할 때 사용

**일반 형식**

```
INSERT INTO 테이블명([속성명1, 속성명2, ···])
VALUES (데이터1, 데이터2, ···);
```

- 대응하는 속성과 데이터는 개수와 데이터 유형이 일치해야 함
- 기본 테이블의 모든 속성을 사용할 때는 속성명을 생략할 수 있음
- SELECT문을 사용하여 다른 테이블의 검색 결과를 삽입할 수 있음

#### **삭제문(DELETE FROM~)**

기본 테이블에 있는 튜플들 중에서 특정 튜플(행)을 삭제할 때 사용

**일반 형식**

```
DELETE FROM 테이블명 [WHERE 조건];
```

- 모든 레코드를 삭제할 때는 WHERE절을 생략
- 모든 레코드를 삭제하더라도 테이블 구조는 남아 있기 때문에 디스크에서 테이블을 완전히 제거하는 DROP과는 다름

#### **갱신문(UPDATE~ SET~)**

기본 테이블에 있는 튜플들 중에서 특정 튜플의 내용을 변경할 때 사용

**일반 형식**

```
UPDATE 테이블명
SET 속성명 = 데이터[, 속성명=데이터, ···]
[WHERE 조건];
```

#### **SELECT**

**일반 형식**

```
SELECT [PREDICATE] [테이블명,]속성명 [AS 별칭][, [테이블명,] 속성명, ···]
FROM 테이블명[, 테이블명, ···]
[WHERE 조건]
[GROUP BY 속성명, 속성명, ···]
[HAVING 조건]
[ORDER BY 속성명 [ASC | DESC]];
```

- SELECT절
  * PREDICATE : 검색할 튜플 수를 제한하는 명령어를 기술함<br/>
    ▶ DISTINCT : 중복된 튜플이 있으면 그 중 첫 번째 한 개만 표시함
  * 속성명 : 검색하여 불러올 속성(열) 또는 속성을 이용한 수식을 지정함
  * AS : 속성이나 연산의 이름을 다른 이름으로 표시하기 위해 사용함
- FROM절 : 검색할 데이터가 들어있는 테이블 이름을 기술함
- WHERE절 : 검색할 조건을 기술함
- GROUP BY절 : 특정 속성을 기준으로 그룹화하여 검색할 때 사용. 일반적으로 GROUP BY절은 그룹 함수와 함께 사용
- HAVING절 : GROUP BY와 함께 사용되며, 그룹에 대한 조건을 지정함
- ORDER BY절 : 데이터를 정렬하여 검색할 때 사용함
  * 속성명 : 정렬의 기준이 되는 속성명을 기술함
  * [ASC \| DESC] : 정렬 방식으로, 'ASC'는 오름차순, 'DESC'는 내림차순임. 생략하면 오름차순으로 지정

#### **기본 검색**

SELECT 절에 원하는 속성을 지정하여 검색

#### **조건 지정 검색**

- WHERE 절에 다음 연산자들을 이용한 조건을 지정하여 조건에 만족하는 튜플만 검색
- **비교연산자**
<table class="text-center">
<tr>
<th style="white-space:pre;">연산</th>
<td style="white-space:pre;">=</td>
<td style="white-space:pre;">< ></td>
<td style="white-space:pre;">></td>
<td style="white-space:pre;"><</td>
<td style="white-space:pre;">>=</td>
<td style="white-space:pre;"><=</td>
</tr>
<tr>
<th style="white-space:pre;">의미</th>
<td style="white-space:pre;">같다</td>
<td style="white-space:pre;">같지<br/>않다</td>
<td style="white-space:pre;">크다</td>
<td style="white-space:pre;">작다</td>
<td style="white-space:pre;">크거나<br/>같다</td>
<td style="white-space:pre;">작거나<br/>같다</td>
</tr>
</table>

- **논리 연산자** : NOT, AND, OR
- **LIKE 연산자** : 대표 문자를 이용해 지정된 속성의 값이 문자 패턴과 일치하는 튜플을 검색하기 위해 사용됨
<table class="text-center">
<tr>
<th style="white-space:pre;">대표 문자</th>
<td style="white-space:pre;">%</td>
<td style="white-space:pre;">_</td>
<td style="white-space:pre;">#</td>
</tr>
<tr>
<th style="white-space:pre;">의미</th>
<td style="white-space:pre;">모든 문자를<br/>대표함</td>
<td style="white-space:pre;">문자 하나를<br/>대표함</td>
<td style="white-space:pre;">숫자 하나를<br/>대표함</td>
</tr>
</table>

- **IN 연산자** : 필드의 값이 IN 연산자의 수로 지정된 값과 같은 레코드만 검색하며, OR 연산을 수행한 결과와 같음

#### **정렬 검색**

ORDER BY 절에 특정 속성을 지정하여 지정된 속성으로 자료를 정렬하여 검색

#### **하위 질의**

조건절에 주어진 질의를 먼저 수행하여 그 검색 결과를 조건절의 피연산자로 사용함

#### **그룹 함수**

GROUP BY절에 지정된 그룹별로 속성의 값을 집계할 때 사용됨
<table>
<thead>
<tr>
<th class="text-center" style="white-space: pre;">명령어</th>
<th class="text-center" style="white-space: pre;"> 기능</th>
</tr>
</thead>
<tbody>
<tr>
<td style="white-space: normal;">COUNT(속성명)</td>
<td style="white-space: normal;">그룹별 튜플 수를 구하는 함수</td>
</tr>
<tr>
<td style="white-space: normal;">SUM(속성명)</td>
<td style="white-space: normal;">그룹별 합계를 구하는 함수</td>
</tr>
<tr>
<td style="white-space: normal;">AVG(속성명)</td>
<td style="white-space: normal;">그룹별 평균을 구하는 함수</td>
</tr>
<tr>
<td style="white-space: normal;">MAX(속성명)</td>
<td style="white-space: normal;">그룹별 최대값을 구하는 함수</td>
</tr>
<tr>
<td style="white-space: normal;">MIN(속성명)</td>
<td style="white-space: normal;">그룹별 최소값을 구하는 함수</td>
</tr>
<tr>
<td style="white-space: normal;">STDDEV(속성)</td>
<td style="white-space: normal;">그룹별 표준편차를 구하는 함수</td>
</tr>
<tr>
<td style="white-space: normal;">VARIANCE(속성명)</td>
<td style="white-space: normal;">그룹별 분산을 구하는 함수</td>
</tr>
</tbody>
</table>

#### **그룹 지정 검색**

GROUP BY절에 지정한 속성을 기준으로 자료를 그룹화하여 검색

#### **집합 연산자를 이용한 통합 질의**

집한 연산자를 사용하여 2개 이상의 테이블의 데이터를 하나로 통합
**표기 형식**

```
SELECT 속성명1, 속성명2, ···
FROM 테이블명
UNION | UNION ALL | INTERSECT | EXCEPT
SELECT 속성명1, 속성명2, ···
FROM 테이블명
[ORDER BY 속성명 [ASC | DESC]];
```

- 두 개의 SELECT문에 기술한 속성들은 개수와 데이터 유형이 서로 동일해야 함
- **집합 연산자의 종류(통합 질의의 종류)**
<table>
<thead>
<tr>
<th class="text-center" style="white-space:pre;">집합 연산자</th>
<th class="text-center" style="white-space:pre;">설명</th>
<th class="text-center" style="white-space:pre;">집합<br/>종류</th>
</tr>
</thead>
<tbody>
<tr>
<td style="white-space: normal;">UNION</td>
<td style="white-space: normal;">
<ul>
<li>두 SELECT문의 조회 결과를 통합하여 모두 출력함</li>
<li>중복된 행은 한 번만 출력함</li>
</ul>
</td>
<td style="white-space: normal;">합집합</td>
</tr>
<tr>
<td style="white-space: normal;">UNION ALL</td>
<td style="white-space: normal;">
<ul>
<li>두 SELECT문의 조회 결과를 통합하여 모두 출력함</li>
<li>중복된 행도 그대로 출력함</li>
</ul>
</td>
<td style="white-space: normal;">합집합</td>
</tr>
<tr>
<td style="white-space: normal;">INTERSECT</td>
<td style="white-space: normal;">두 SELECT문의 조회 결과 중 공통된 2행만 출력함</td>
<td style="white-space: normal;">교집합</td>
</tr>
<tr>
<td style="white-space: normal;">EXCEPT</td>
<td style="white-space: normal;">첫 번째 SELECT문의 조회 결과에서 두 번째 SELECT문의 조회 결과를 제외한 행을 출력함</td>
<td style="white-space: normal;">차집합</td>
</tr>
</tbody>
</table>

#### **EQUI JOIN**

- JOIN 대상 테이블에서 공통 속성을 기준으로 '='(equal) 비교에 의해 같은 값을 가지는 행을 연결하여 결과를 생성하는 INNER JOIN 방법
- EQUI JOIN에서 JOIN 조건이 '='일 때 동일한 속성이 두 번 나타나게 되는데, 이 중 중복된 속성을 제거하여 같은 속성을 한 번만 표기하는 방법을 NATURAL JOIN이라고 해
- EQUI JOIN에서 연결고리가 공통 속성을 JOIN 속성이라고 함
- **WHERE절을 이용한 EQUI JOIN의 표기 형식**

```
SELECT [테이블명1.]속성명, [테이블명2.]속성명, ···
FROM 테이블명1, 테이블명2, ···
WHERE 테이블명1.속성명 = 테이블명2.속셩명;
```

- **NATURAL JOIN절을 이용한 EQUI JOIN의 표기 형식**

```
SELECT [테이블명1.]속성명, [테이블명2.]속성명, ···
FROM 테이블명1 NATURAL JOIN 테이블명2;
```

- **JOIN ~ USING절을 이용한 EQUI JOIN의 표기 형식**

```
SELECT [테이블명1.]속성명, [테이블명2.]속성명, ···
FROM 테이블명1 JOIN 테이블명2 USING(속성명);
```

#### **OUTER JOIN**

- LEFT OUTER JOIN : INNER JOIN의 결과를 구한 후, 우측 항 릴레이션의 어떤 튜플과도 맞지 않는 좌측 항의 릴레이션에 있는 튜플들에 NULL 값을 붙여서 INNER JOIN의 결과에 추가함
- 표기 형식

```
SELECT [테이블명1.]속성명, [테이블명2.]속성명, ···
FROM 테이블명 LEFT OUTER JOIN 테이블명2
ON 테이블명1.속성명 = 테이블명2.속성명;
```

- RIGHT OUTER JOIN : INNER JOIN의 결과를 구한 후, 좌측 항 릴레이션의 어떤 튜플과도 맞지 않는 우측 항의 릴레이션에 있는 튜플들에 NULL 값을 붙여서 INNER JOIN의 결과에 추가함
- 표기 형식

```
SELECT [테이블명1.]속성명, [테이블명2.]속성명, ···
FROM 테이블명1 RIGHT OUTER JOIN 테이블명2
ON 테이블명1.속성명 = 테이블명2.속성명;
```

#### **트리거(Trigger)**

- 데이터베이스 시스템에서 데이터의 삽입(Insert), 갱신(Update), 삭제(Delete) 등의 **<span style="background-color:#fff5b1">이벤트(Event)가 발생할 때 관련 작업이 자동으로 수행되게 하는 절차형 SQL</span>**
- 데이터베이스에 저장되며, 데이터 변경 및 무결성 유지, 로그 메시지 출력 등의 목적으로 사용
