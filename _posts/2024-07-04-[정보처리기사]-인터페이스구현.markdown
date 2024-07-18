---
title: "[정보처리기사] 인터페이스 구현"
date: 2024-07-04 00:34:00 +09:00
categories: [정보처리기사]
tags: [정보처리기사, 인터페이스 구현, ]
---

## 인터페이스 구현

#### **요구사항 검증 방법**

- **요구사항 검토(Requirements Review)**
  * 요구사항 명세서의 오류 확인 및 표준 준수 여부 등의 결함 여부를 검토 담당자들이 수작업으로 분석하는 방법
  * **동료검토(Peer Review)** : 요구사항 명세서 작성자가 명세서 내용을 직접 설명하고 동료들이 이를 들으면서 결함을 발견하는 형태의 검토 방법
  * **워크스루(Walk Trough)** : 검토 회의 전에 요구사항 명세서를 미리 배포하여 사전 검토한 후에 짧은 검토 회의를 통해 결함을 발견하는 형태의 검토 방법
  * **인스펙션(Inspection)** : 요구사항 명세서 작성자를 제외한 다른 검토 전문가들이 요구사항 명세서를 확인하면서 결함을 발견하는 형태의 검토 방법
  * **프로토타이핑(Prototyping)** : 사용자의 요구사항을 정확히 파악하기 위해 실제 개발될 소프트웨어에 대한 견본품(Prototype)을 만들어 최종 결과물을 예측
  * **테스트 설계** : 요구사항은 테스트할 수 있도록 작성되어야 하며, 이를 위해 테스트 케이스를 생성하여 요구사항이 현실적으로 테스트 가능한지를 검토
  * **CASE 도구 활용** : 일관성 분석(Consistency Analysis)을 통해 요구사항 변경사항의 추적, 분석, 관리, 표준 준수 여부를 확인

#### **인터페이스 요구사항 검증의 주요 항목**

- **완전성(Completeness)** : 사용자의 모든 요구사항이 누락되지 않고 완전하게 반영되어 있는가?
- **일관성(Consistency)** : 요구사항이 모순되거나 충돌되는점 없이 일관성을 유지하고 있는가?
- **명확성(Unambiguity)** : 모든 참여자가 요구사항을 명확히 이해할 수 있는가?
- **기능성(Functionality)** : 요구사항이 '어떻게(How to)' 보다 '무엇을(What)'에 중점을 두고 있는가?
- **검증 가능성(Verifiability)** : 요구사항이 사용자의 요구를 모두 만족하고, 개발된 소프트웨어가 사용자의 요구 내용과 일치하는지를 검증할 수 있는가?
- **추적 가능성(Traceability)** : 요구사항 명세서와 설계서를 추적할 수 있는가?
- **변경 용이성(Easily Changeable)** : 요구사항 명세서의 변경이 쉽도록 작성되었는가?

#### **미들웨어(Middleware)**

- **<span style="background-color:#fff5b1">운영체제와 응용 프로그램,</span>** 또는 서버와 클라이언트 **<span style="background-color:#fff5b1">사이에서 다양한 서비스를 제공하는 소프트웨어</span>**
- 미들웨어는 표준화된 인터페이스를 제공함으로써 시스템 간의 데이터 교환에 일관성을 보장
- **미들웨어의 종류** : DB, RPC, MOM, TP-Monitor, ORB, WAS

#### **미들웨어의 종류**

- **DB(DataBase)**
  * 데이터베이스 벤더에서 제공하는 클라이언트에서 원격의 데이터베이스와 연결하는 미들웨어
  * DB를 사용하여 시스템을 구축하는 경우 보통 2-Tier 아키텍처라고 함
- **RPC(Remote Procedure Call, 원격 프로시저 호출)**<br/>
  응용 프로그램의 프로시저를 사용하여 원격 프로시저를 마치 로컬 프로시저처럼 호출하는 미들웨어
- **MOM(Message Oriented Middleware, 메시지 지향 미들웨어)**
  * 메시지 기반의 비동기형 메시지를 전달하는 미들웨어
  * 온라인 업무보다는 이기종 분산 데이터 시스템의 데이터 동기를 위해 많이 사용됨
- **TP-Monitor(Transaction Processing Monitor, 트랜잭션 처리 모니터)**
  * 온라인 트랜잭션 업무에서 트랜잭션을 처리 및 감시하는 미들웨어
  * 항공기나 철도 예약 업무 등 사용자 수가 증가해도 빠른 응답 속도를 유지해야 하는 업무에 주로 사용됨
- **ORB(Object Request Broker, 객체 요청 브로커)**
  * 코바(CORBA) 표준 스펙을 구현한 객체 지향 미들웨어
  * 최근에는 TP-Monitor의 장점인 트랜잭션 처리와 모니터링 등을 추가로 구현한 제품도 있음
- **WAS(Web Application Server)**
  * 사용자의 요구에 따라 변하는 동적인 콘텐츠를 처리하기 위한 미들웨어
  * 클라이언트/서버 환경보다는 웹 환경을 구현하기 위한 미들웨어
  * HTTP 세션 처리를 위한 웹 서버 기능뿐만 아니라 미션-크리티컬한 기업 업무까지 JAVA, EJB 컴포넌트 기반으로 구현이 가능

#### **EAI(Enterprise Application Integration)**

**<span style="background-color:#fff5b1">기업 내 각종 애플리케이션 및 플랫폼 간</span>**의 정보 전달, 연계, 통합 등 **<span style="background-color:#fff5b1">상호 연동이 가능하게 해주는 솔루션</span>**

- **Point-to-Point**
  * 가장 기본적인 애플리케이션 통합 방식
  * 애플리케이션을 1:1로 연결
  * 변경 및 재사용이 어려움
- **Hub & Spoke**
  * 단일 접점인 허브 시스템을 통해 데이터를 전송하는 중앙 집중형 방식
  * 확장 및 유지보수가 용이
  * 허브 장애 발생 시 시스템 전체에 영향을 미침
- **Message Bus(ESB 방식)**
  * 애플리케이션 사이에 미들웨어를 두어 처리하는 방식
  * 확장성이 뛰어나며 대용량 처리가 가능
- **Bus Hybrid**
  * Hub & Spoke와 Message Bus의 혼합 방식
  * 그룹 내에서 Hub & Spoke 방식을, 그룹 간에는 Message Bus 방식을 사용
  * 필요한 경우 한 가지 방식으로 EAI 구현이 가능
  * 데이터 병목 현상을 최소화할 수 있음
![image](post/EAI종류.png)

#### **JSON(JavaScript Object Notation)**

- 웹과 컴퓨터 프로그램에서 용량이 적은 데이터를 교환하기 위해 **<span style="background-color:#fff5b1">데이터 객체를 속성·값이 쌍(Attribute-Value Pairs) 형태로 표현하는 개방형 표준 포맷</span>**
- 비동기 처리에 사용되는 AJAX에서 XML을 대체하여 사용되고 있음

#### **AJAX(Asynchronous JavaScript and XML)**

- 자바스크립트(JavaScript)를 사용하여 **<span style="background-color:#fff5b1">클라이어튼와 서버 간에 XML 데이터를 주고 받는 비동기 통신 기술</span>**
- 전체 페이지를 새로 고치지 않고도 웹 페이지 일부 영역만을 업데이트할 수 있음

#### **인터페이스 보안 기능 적용**

- 인터페이스 보안은 인터페이스의 보안성 향상을 위해 **<span style="background-color:#fff5b1">인터페이스의 보안 취약점을 분석한 후 적절한 보안 기능을 적용</span>**
- 인터페이스 보안 기능은 일반적으로 네트워크, 애플리케이션, 데이터베이스 영역에 적용
<table>
<tr>
<th style="white-space: pre;">네트워크<br/>영역</th>
<td style="white-space: normal;">
<ul>
<li>인터페이스 송·수신 간 스니피(Sniffing) 등을 이용한 데이터 탈취 및 변조 위협을 방지하기 위해 네트워크 트래픽에 대한 암호화를 설정</li>
<li>암호화는 인터페이스 아키텍처에 따라 IPSec, SSL, S-HTTP 등의 다양한 방식으로 적용함</li>
</ul>
</td>
</tr>
<tr>
<th style="white-space: pre;">애플리케이션<br/>영역</th>
<td style="white-space: normal;">소프트웨어 개발 보안 가이드를 참조하여 애플리케이션 코드 상의 보안 취약점을 보안하는 방향으로 애플리케이션 보안 기능을 적용함</td>
</tr>
<tr>
<th style="white-space: pre;">데이터베이스<br/>영역</th>
<td style="white-space: normal;">데이터베이스, 스키카, 엔티티의 접근 권한과 프로시저(Procedure), 트리거(Trigger) 등 데이터베이스 동작 객체의 보안 취약점에 보안 기능을 적용</td>
</tr>
</table>

#### **IPSec/SSL/S-HTTP**

- **IPsec(IP Security)** : 네트워크 계층에서 IP 패킷 단위의 데이터 변조 방지 및 은닉 기능을 제공하는 프로토콜
- **SSL(Secure Sockets Layer)** : TCP/IP 계층과 애플리케이션 계층 사이에서 인증, 암호화, 무결성을 보장하는 프로토콜
- **S-HTTP(Secure Hypertext Transfer Protocol)** : 클라이언트와 서버 간에 전송되는 모든 메시지를 암호화 하는 프로토콜

#### **데이터 무결성 검사 도구**

- 데이터 무결성 검사 도구는 인터페이스 보안 취약점을 분석하는데 사용되는 도구
- 데이터 무결성 검사 도구는 시스템 파일의 변경 유무를 확인하고, 파일이 변경되었을 경우 이를 관리자에게 알려줌
- **종류** : Tripwrie, AIDE, Samhain, Claymore,Slipwire, Fcheck 등

#### **인터페이스 구현 검증 도구**

인터페이스 구현을 검증하기 위해서는 인터페이스 단위 기능과 시나리오 등을 기반으로 하는 통합 테스트가 필요하며, 통합 테스트를 수행하기 위해 사용하는 테스트 자동화 도구는 다음과 같음

- **xUnit**
  * 같은 테스트 코드를 어려 번 작성하지 않게 도와주며, 테스트마다 예상 결과를 기억할 필요가 없게 하는 자동화된 해법을 제공하는 단위 테스트 프레임워크
  * Smalltalk에 처음 적용되어 SUnit이라는 이름이었으나, Java용의 JUnit, C++용의 CppUnit, .NET용의 NUnit 등 다양한 언어에 적용되면서 xUnit으로 통칭됨
- **STAF**
  * 서비스 호출 및 컴포넌트 재사용 등 다양한 환경을 지원하는 테스트 프레임워크
  * 크로스 플랫폼이나 분산 소프트웨어에서 테스트 환경을 조성할 수 있도록 지원
  * 분산 소프트웨어의 경우 각 분산 환경에 설치된 데몬(Daemon)이 프로그램 테스트에 대한 응답을 대신하며, 테스트가 완료되면 이를 통합하고 자동화하여 프로그램을 완성
- **FitNesse**<br/>
웹 기반 테스트 케이스 설계, 실행, 결과 확인 등을 지원하는 테스트 프레임워크
- **NTAF**<br/>
FitNesse의 장점인 협업 기능과 STAF의 장점인 재사용 및 확장성을 통합한 NHN(Naver)의 테스트 자동화 프레임워크
- **Selenium**<br/>
다양한 브라우저 및 개발 언어를 지원하는 웹 애플리케이션 테스트 프레임워크
- **watir**<br/>
인터프리터 방식의 객체 지향 스크립트 언어니 Ruby를 사용하는 애플리케이션 테스트 프레임워크

#### **APM(Application Performance Management/Monitoring)**

- **<span style="background-color:#fff5b1">애플리케이션의 성능 관리</span>**를 위해 접속자, 자원 현황, 트랜잭션 수행 내역, 장애 진단 등 **<span style="background-color:#fff5b1">다양한 모니터링 기능을 제공하는 도구</span>**
- APM은 리소스 방식과 엔드투엔드(End-to-End)의 두 가지 유형
<table>
<tr>
<th style="white-space:pre;">리소스 방식</th>
<td style="white-space:normal;">Nagios, Zabbix, Cacti 등</td>
</tr>
<tr>
<th style="white-space:pre;">엔드투엔드 방식</th>
<td style="white-space:normal;">VisualVM, 제니퍼, 스카우터 등</td>
</tr>
</table>
