---
title: "[정보처리기사] 소프트웨어 개발 보안 구축"
date: 2024-07-08 00:34:00 +09:00
categories: [정보처리기사]
tags: [정보처리기사, 소프트웨어 개발 보안 구축]
---

## 소프트웨어 개발 보안 구축

#### **Secure SDLC**

- 보안상 안전한 소프트웨어를 개발하기 위해 **<span style="background-color:#fff5b1">SDLC에 보안 강화를 위한 프로세스를 포함한 것</span>**을 의미
- **Secure SDLC의 방법론**
  * CLASP : SDLC의 초기 단계에서 보안을 강화하기 위해 개발된 방법론
  * SDL : 마이크로소프트 사에서 안전한 소프트웨어 개발을 위해 기존의 SDLC를 개선한 방법론
  * Seven Touchpoints: 소프트웨어 보안의 모범사례를 SDLC에 통합한 방법론


#### **소프트웨어 개발 보안 요소**

소프트웨어 개발에 있어 충족시켜야 할 요소 및 요건을 의미하며, 기밀성, 무결성, 가용성을 보안의 3대 요소라 함

- **기밀성(Confidentiality)**
  * 시스템 내의 정보와 자원은 인가된 사용자에게만 접근이 허용됨
  * 정보가 전송 중에 노출되더라도 데이터를 읽을 수 없음
- **무결성(Integrity)**<br/>
  시스템 내의 정보는 오직 인가된 사용자만 수정할 수 있음
- **가용성(Availability)**<br/>
  인가받은 사용자는 시스템 내의 정보와 자원을 언제라도 사용할 수 있음
- **인증(Authentication)**
  * 시스템 내의 정보와 자원을 사용하려는 사용자가 합법적인 사용자인지를 확인하는 모든 행위
  * **대표적 방법** : 패스워드, 인증용 카드, 지문 검사 등
  * **부인 방지(NonRepudiation)** <br/>
  데이터를 송·수신한 자가 송·수신 사실을 부인할 수 없도록 송·수신 증거를 제공

#### **시큐어 코딩(Secure Coding)**

- 구현 단계에서 발생할 수 있는 보안 취약점들을 최소화하기 위해 **<span style="background-color: #fff5b1">보안 요소들을 고려하며 코딩하는 것</span>**을 의미
- 보안 취약점을 사전 대응하여 안정성과 신뢰성을 확보
- 보안 정책을 바탕으로 시큐어 코딩 가이드를 작성하고, 개발 참여자에게는 시큐어 코딩 교육을 실시

#### **SQL 삽입(Injection)**

- 웹 응용 프로그램에 **<span style="background-color:#fff5b1">SQL을 삽입하여</span>** 내부 데이터베이스(DB) 서버의 **<span style="background-color:#fff5b1">데이터를 유출 및 변조하고, 관리자 인증을 우회하는 보안 약점</span>**
- 동적 쿼리에 사용되는 입력 데이터에 예약어 및 특수문자가 입력되지 않게 필터링 되도록 설정하여 방지할 수 있음

#### **크로스사이트 스크립팅(XSS)**

- 웹페이지에 **<span style="background-color:#fff5b1">악의적인 스크립를 삽입하여</span>** 방문자들의 **<span style="background-color:#fff5b1">정보를 탈취하거나, 비정상적인 기능 수행을 유발하는 보안 약점</span>**
- HTML 태그의 사용을 제한하거나 스크립트에 삽입되지 않도록 '<', '>', '&' 등의 문자를 다른 문자로 치환함으로써 방지할 수 있음

#### **메모리 버퍼 오버플로**

- 연속된 메모리 공간을 사용하는 프로그램에서 **<span style="background-color:#fff5b1">할당된 메모리의 범위를 넘어선 위치에서 자료를 읽거나 쓰려고 할 때 발생하는 보안 약점</span>**
- 메모리 버퍼를 사용할 경우 적절한 버퍼의 크기를 설정하고, 설정된 범위의 메모리 내에서 올바르게 읽거나 쓸 수 있도록 함으로써 방지할 수 있음

#### **보안 기능 관련 용어**

- 보안 점검 내용 중 '보안 기능'은 소프트웨어 개발의 구현 단계에서 코딩하는 기능인 인증, 접근 제어, 기밀성, 암호화 등을 올바르게 구현하기 위한 보안 점검 항목들
- **HTTPS(Hypertext Transfer Protocol Secure)** : 웹브라우저와 서버 간의 안전한 통신을 위해 HTTP와 암호 통신 규약을 결합한 것
- **SSL(Secure Sockets Layer)** : 데이터를 송·수신하는 두 컴퓨터 사이, 종단 간, 즉 TCP/IP 계층과 애플리케이션 계층(HTTP, TELNET, FTP 등) 사이에 위치하여 인증, 암호화, 무결성을 보장하는 업계 표준 프로토콜
- **하드코딩(Hard-coding)** : 데이터를 코드 내부에 직접 입력하여 프로그래밍하는 방식

#### **하드코드된 암호화 키**

- 암호화된 키도 하드코드된 경우 유출 시 역계산 또는 무차별 대입 공격에 의해 탈취될 수 있음
- 상수 형태이 암호화키를 사용하지 않고, 암호화 키 생성 모듈 또는 보안이 보장된 외부 공간을 이용함으로써 방지할 수 있음

#### **스택 가드(Stack Guard)**

- 널 포인터 역참조와 같이 **<span style="background-color:#fff5b1">주소가 저장되는 스택에서 발생하는 보안 약점을 막는 기술</span>** 중 하나
- 메모리상에서 프로그램의 복귀 주소와 변수 사이에 특정 값을 저장한 후 그 값이 변경되었을 경우 오버플로우 상태로 판단하여 프로그램 실행을 중단함을써 잘못된 복귀 주소의 호출을 막음

#### **접근 제어자**

- 프로그래밍 언어에서 특정 개첼르 선언할 때 **<span style="background-color:#fff5b1">외부로부터의 접근을 제한하기 위해 사용되는 예약어</span>**
- 접근 제어자의 종류(접근 가능 : ○, 접근 불가능 : X)
<table>
<thead>
<tr>
<th class="text-center" style="white-space: pre;">접근<br/>제어자</th>
<th class="text-center" style="white-space: pre;">클래스<br/>내부</th>
<th class="text-center" style="white-space: pre;">패키지<br/>내부</th>
<th class="text-center" style="white-space: pre;">하위<br/>클래스</th>
<th class="text-center" style="white-space: pre;">패키지<br/>외부</th>
</tr>
</thead>
<tbody>
<tr>
<td style="white-space:pre;">Public</td>
<td class="text-center" style="white-space:pre;">○</td>
<td class="text-center" style="white-space:pre;">○</td>
<td class="text-center" style="white-space:pre;">○</td>
<td class="text-center" style="white-space:pre;">○</td>
</tr>
<tr>
<td style="white-space:pre;">Protected</td>
<td class="text-center" style="white-space:pre;">○</td>
<td class="text-center" style="white-space:pre;">○</td>
<td class="text-center" style="white-space:pre;">○</td>
<td class="text-center" style="white-space:pre;">X</td>
</tr>
<tr>
<td style="white-space:pre;">Default</td>
<td class="text-center" style="white-space:pre;">○</td>
<td class="text-center" style="white-space:pre;">○</td>
<td class="text-center" style="white-space:pre;">X</td>
<td class="text-center" style="white-space:pre;">X</td>
</tr>
<tr>
<td style="white-space:pre;">Private</td>
<td class="text-center" style="white-space:pre;">○</td>
<td class="text-center" style="white-space:pre;">X</td>
<td class="text-center" style="white-space:pre;">X</td>
<td class="text-center" style="white-space:pre;">X</td>
</tr>
</tbody>
</table>

#### **개인키 암호화(Private Key Encryption) 기법**

- **<span style="background-color:#fff5b1">동일한 키로 데이터를 암호화하고 복호화하는 암호화 기법</span>**
- 대칭 암호 기법 또는 단일키 암호화 기법이라고도 함
- 암호화와 복호화 속도가 빠름
- 관리해야 할 키의 수가 많음
- 개인키 암호화 기법의 종류에는 스트림 암호화 방식과 블록 암호화 방식이 있음
<table>
<tr>
<th style="white-space:pre;">스트림 암호화<br/>방식</th>
<td style="white-space:normal;">
<ul>
<li>평문과 동일한 길이의 스트림을 생성하여 비트 단위로 암호화 하는 방식</li>
<li>종류 : LFSR, RC4</li>
</ul>
</td>
</tr>
<tr>
<th style="white-space:pre;">블록 암호화<br/>방식</th>
<td style="white-space:normal;">
<ul>
<li>한 번에 하나의 데이터 블록을 암호화 하는 방식</li>
<li>종류 : DES, SEED, AES, ARIA</li>
</ul>
</td>
</tr>
</table>

#### **공개키 암호화(Public Key Encryption) 기법**

- 데이터를 **<span style="background-color:#fff5b1">암호화할 때 사용하는 공개키(Public Key)는 사용자에게 공개하고, 복호화할 때의 비밀키(Secret Key)는 관리자가 비밀리에 관리하는 암호화 기법</span>**
- 비대칭 암호 기법이라고도 함
- 암호화와 복호화 속도가 느림
- 관리해야 할 키의 수가 적음
- 대표적으로 RSA(Rivest Shamir Adleman) 기법이 있음

#### **DES(Data Encryption Standard)**

- 1975년 미국 NBS에서 발표한 개인키 암호화 알고리즘
- 블록 크기는 64비트, 키 길이는 56비트이며 16회의 라운드를 수행
- DES를 3번 적용하여 보안을 더욱 강화한 3DES(Triple DES)가 있음

#### **AES(Advanced Encryption Standard)**

- 2001년 미국 표준 기술 연구소(NIST)에서 발표한 개인키 암호화 알고리즘
- DES의 한계를 느낀 NIST에서 공모한 후 발표
- 블록의 크기는 128비트이며, 키 길이에 따라 AES-128, AES-192, AES-256으로 분류됨

#### **RSA(Rivest Shamir Adleman)**

- 1978년 MIT의 라이베이스(Rivest), 샤미르(Shamir), 애들먼(Adelman)에 의해 제안된 공개키 암호화 알고리즘
- 큰 숫자를 소인수분해 하기 어렵다는 것에 기반하여 만들어짐

#### **해시(Hash)**

- 임의의 길이의 **<span style="background-color:#fff5b1">입력 데이터나 메시지를 고정된 길이의 값이나 키로 변환하는 것</span>**을 의미
- 해시 알고리즘으 해시 함수라고 부르며, 해시 함수로 변환된 값이나 키를 해시값 또는 해시키라고 부름
- **종류** : SHA 시리즈, HAVAL, MD4, MD5, N-NASH, SNEFRU 등

#### **MD5(Message Digest algorithm 5)**

- 1991년 R.Rivest가 MD4를 대체하기 위해 고안한 암호화 해시 함수
- 블록 크기가 512비트이며, 키 길이는 128비트

#### **TKIP(Temporal Key Integrity Protocol)**

- 기존의 무선 랜 보안 프로토콜인 **<span style="background-color:#fff5b1">WEP의 취약성을 보완한 데이터 보안 프로토콜</span>**
- 암호 알고리즘의 입력 키 길이를 128비트로 늘리고 패킷당 키 할당, 키값 재설정 등의 키 관리 방식을 개선함

#### **보안 프레임워크(Security Framework)**

- **<span style="background-color:#fff5b1">안전한 정보 시스템 환경을 유지하고 보안 수준을 향상시키기 위한 체계</span>**
- ISO 27001은 정보보안 관리를 위한 국제 표준으로, 일종의 보안 인증이자 가장 대표적인 보안 프레임워크
- ISO 27001은 영국의 BSI(British Standards Institute)가 제정한 BS 7799를 기반으로 구성됨

#### **침임 탐지 시스템(IDS; Intrusion Detection System)**

- **<span style="background-color:#fff5b1">컴퓨터 시스템의 비정상적인 사용, 오용, 남용 등을 실시간으로 탐지하는 시스템</span>**
- **오용 탐지(Misuse Detection)** : 미리 입력해 둔 공격 패턴이 감지되면 이를 알려줌
- **이상 탐지(Anomaly Detection)** : 평균적인 시스템의 상태를 기준으로 비정상적인 행위나 자원의 사용이 감지되면 이를 알려줌

#### **웹 방화벽(Web Firewall)**

- 일반 방화벽이 탐지하기 못하는 SQL 삽입 공격, Cross-Site Scripting(XSS) 등의 **<span style="background-color:#fff5b1">웹 기반 공격을 방어할 목적으로 만들어진 웹 서버에 특화된 방화벽</span>**
- 웹 관련 공격을 감시하고 공격이 웹 서버에 도달하기 전에 이를 차단해줌

#### **VPN(Virtual Private Network, 가상 사설 통신망)**

- 인터넷 등 통신 사업자의 **<span style="background-color:#fff5b1">공중 네트워크와 암호화 기술을 이용하여 사용자가 마치 자신의 전용 회선을 사용하는 것처럼 해주는 보안 솔루션</span>**
- 암호화된 규격을 통해 인터넷망을 전용선의 사설망을 구축한 것처럼 이용하므로 비용 부담을 줄일 수 있음

#### **AAA(=3A)**

- 다음 3가지 기능을 기반으로 사용자의 컴퓨터 자원 접근에 대한 처리와 서비스를 제공하는 기반 구조(Infrastructure) 또는 규격을 의미
- **인증(Authentication)** : 접근하는 사용자의 신원을 검증하는 기능
- **인가(Authorization)** : 신원이 검증된 사용자에게 특정된 권한과 서비스를 허용하는 기능
- **과금(Accounting)** : 사용자가 어떤 종류의 서비스를 이용했고, 얼마만큼의 자원을 사용했는지 기록 및 보관하는 기능

#### **정보보호 관리 체계(ISMS; Information Security Management System)**

- **<span style="background-color:#fff5b1">정보 자산을 안전하게 보호하기 위한 보호 절차와 대책</span>**
- 조직에 맞는 정보보호 정책을 수립하고, 위험에 상시 대응하는 여러 보안 대책을 통합 관리·운용
- 우리나라에서는 정보보호 관리 체계를 평가하고 인증하는 사업을 한국인터넷진흥원(KISA)에서 운영하고 있음

#### **SMURFING(스머핑)**

- **<span style="background-color:#fff5b1">IP나 ICMP의 특성을 악용하여 엄청난 양의 데이터를 한 사이트에 집중적으로 보냄으로써 네트워크를 불능 상태로 만드는 공격 방법</span>**
- 공격을 무력화하는 방법 중 하나는 각 네트워크 라우터에서 브로드캐스트 주소를 사용할 수 없게 미리 설정해 놓는 것

#### **LAND Attack(Local Area Network Denial Attack)**

- **<span style="background-color:#fff5b1">패킷을 전송할 때 송신 IP 주소와 수신 IP 주소를 모두 공격 대상의 IP 주소로 하여</span>** 공격 대상에게 전송하는 것으로, 이 패킷을 받은 공격 대상은 송신 IP 주소가 자신이므로 자신에게 응답을 수행하게 되는데, 이러한 패킷이 계속해서 전송될 경우 **<span style="background-color:#fff5b1">자신에 대해 무한히 응답하게 하는 공격 방법</span>**

#### **DDoS(Distributed Denial of Service, 분산 서비스 거부) 공격**

- **<span style="background-color:#fff5b1">여러 곳에 분산된 공격 지점에서 한 곳의 서버에 대해 서비스 거부 공격을 수행하는 것</span>**
- 네트워크에서 취약점이 있는 호스트들을 탐색한 후 이들 호스트들에 분산 서비스 공격용 툴을 설치하여 에이전트(Agent)로 만든 후 DDoS 공격에 이용

#### **분산 서비스 공격용 툴**

에이전트(Agent)의 역할을 수행하도록 설계된 프로그램으로 데몬(Daemon)이라고 부르며, 다음과 같은 종류가 있음

<table>
<tr>
<th style="white-space: pre;">Trin00</th>
<td style="white-space: normal;">가장 초기 형태의 데몬으로, 주로 UDP Flooding 공격을 수행함</td>
</tr>
<tr>
<th style="white-space: pre;">TNT(Tribe<br/>Flood Network)</th>
<td style="white-space: normal;">UDP Flooding 뿐만 아니라 TCP SYN Flood 공격, ICMP 응답 요청, 스머핑 공격 등을 수행함</td>
</tr>
<tr>
<th style="white-space: pre;">TFN2K</th>
<td style="white-space: normal;">TFN의 확장판임</td>
</tr>
<tr>
<th style="white-space: pre;">Stacheldraht</th>
<td style="white-space: normal;">
<ul>
<li>이전 툴들의 기능을 유지하면서, 공격자, 마스터, 에이전트가 쉽게 노출되지 않도록 암호화된 통신을 수행함</li>
<li>툴이 자동으로 업데이트됨</li>
</ul>
</td>
</tr>
</table>

#### **세선 하이재킹(Session Hijacking)**

- **<span style="background-color:#fff5b1">상호 인증 과정을 거친 후 접속해 있는 서버와 </span>** 서로 접속되어 **<span style="background-color:#fff5b1">클라이언트 사이의 세션 정보를 가로채는 공격 기법</span>**, 접속을 위한 인증 정보 없이도 가로챈 세션을 이용해 공격자가 원래의 클라이언트인 것처럼 위장하여 서버의 자원이나 데이터를 무단으로 사용함
- TCP 3-WAY-HANDSHAKE 과정에 끼어듦으로써 클라이언트와 서버 간의 동기화된 시쿼스 번호를 가로채 서버에 무단으로 접근하는 TCP 세션 하이재킹이 대표적인 예

#### **ARP 스푸핑(ARP Spoofing)**

- ARP의 취약점을 이용한 공격 기법으로, **<span style="background-color:#fff5b1">자신의 물리적 주소(MAC)를 공격대상의 것으로 변조하여</span>** 공격 대상에게 도달해야 하는 **<span style="background-color:#fff5b1">데이터 패킷을 가로채거나 방해하는 기법</span>**<br/>
※ **ARP(Address Resolution Protocol)** : 호스트의 IP 주소를 호스트와 연결된 네트워크 접속 장치의 물리적 주소(MAC Address)로 변환해주는 프로토콜

#### **스니핑(Sniffing)**

- **<span style="background-color:#fff5b1">네트워크의 중간에서 남의 패킷 정보를 도청</span>**하는 해킹 유형의 하나로, 수동적 공격에 해당

#### **워터링 홀(Watering Hole)**

- 목표 대상이 자주 방분하는 **<span style="background-color:#fff5b1">웹 사이트를 사전에 감염시켜</span>** 대상이 해당 **<span style="background-color:#fff5b1">사이트에 방문했을 때 악성 코드에 감염되게 하는</span>** 웹 기반 **<span style="background-color:#fff5b1">공격</span>**
- 감염된 PC를 기반으로 대상이 속한 조직의 중요 시스템에 접근하거나 불능으로 만드는 등의 영향력을 행사할 수 있음

### **키로거 공격(Key Logger Attack)**

- **<span style="background-color:#fff5b1">컴퓨터 사용자의 키보드 움직임을 탐지해</span>** ID, 패스워드, 계좌번호, 카드번호 등과 같은 개인의 중요한 **<span style="background-color:#fff5b1">정보를 몰래 빼가는 해킹 공격</span>**

#### **랜섬웨어(Ransomware)**

인터넷 사용자의 컴퓨터에 잠임해 **<span style="background-color:#fff5b1">내부 문서나 파일 등을 암호화해 사용자가 열지 못하게 하는 프로그램</span>**으로, 암호 해독용 프로그램의 전달을 조건으로 사용자에게 돈을 요구하기도 함

#### **백도어(Back Door, Trap Door)**

- **<span style="background-color:#fff5b1">시스템 설계자가</span>** 서비스 기술자나 유지 보수 프로그램 작성자의 **<span style="background-color:#fff5b1">액세스 편의를 위해 시스템 보안을 제거하여 만들어놓은 비밀 통로</span>**로, 컴퓨터 범죄에 악용되기도 함
- **백도어 탐지 방법** : 무결성 검사, 열린 포트 확인, 로그 분석, SetUID 파일 검사 등

#### **기타 정보 보안 관련 용어 1**

- **스미싱(Smishing)**<br/>
문자 메시지(SMS)를 이용해 사용자의 개인 신용 정보를 빼내는 수법
- **스피어 피싱(Spear Phishing)**<br/>
사회 공학의 한 기법으로, 특정 대상을 선정한 후 그 대상에게 일반적인 이메일로 위장한 메일을 지속적으로 발송하여, 발송 메일의 본문 링크나 첨부된 파일을 클릭하도록 유도해 사용자의 개인 정보를 탈취하는 공격
- **APT(Advanced Persistent Threats, 지능형 지속 위협)**<br/>
다양한 IT 기술과 방식들을 이용해 조직적으로 특정 기업이나 조직 네트워크에 침투해 활동 거점을 마련한 뒤 때를 기다리면서 보안을 무력화시키고 정보를 수집한 다음 외부로 빼돌리는 형태의 공격
- **무작위 대입 공격(Brute Force Attack)**<br/>
암호화된 문서의 암호키를 찾아내기 위해 적용 가능한 모든 값을 대입하여 공격하는 방식
- **큐싱(Qshing)**<br/>
QR코드(Quick Response Code)를 토해 악성 앱의 다운로드를 유도하거나 악성 프로그램을 설치하도록 하는 금융사기 기법의 하나로, QR코드와 개인정보 및 금융정보를 낚는다(Fishing)는 의미의 합성 신조어
- **WEP(Wired Equivalent Privacy, 유선급 프라이버시)**<br/>
유선 랜(LAN)에서 기대할 수 있는 것과 같은 보안과 프라이버시 수준의 무선 랜(WLAN)의 보안 프로토콜
- **WPA2(Wi-Fi Protected Access 2)**<br/>
WEP의 취약성에 대한 대안으로 발표된 무선랜 보안 기술 규격으로, IEEE 802.11i 표준을 수용하지 못했던 WPA를 개선한 버전
- **EDR(Endpoint Detection & Response)**<br/>
엔드포인트 영역에 대한 지속적인 모니터링을 통해 행위 기반 위협 탐지 및 분석, 대응 기능을 제공하는 솔루션
- **TMS(Threat Management System)**<br/>
전사적 IT인프라에 대한 위협정보들을 수집·분석·경보·관리하는 정보보호 통합 관리 시스템으로, 실시간으로 공신력 있는 대외 정보보호기관이 위폅정보들을 들을 수집·분석하여 정보보호관리자에게 말한다.
- **DTLS(Datagram Transport Layer Security)**<br/>
전송 계층 프로토콜인 UDP 기반으로 통신을 수행하는 경우 SSL/TLS와 유사한 보안 기능을 제공하는 프로토콜
- **크리덴셜 스터핑(Credential Stuffing)**<br/>
무차별 대입 공격의 일종으로 공격자가 미리 확보해 놓은 로그인 자격 증명을 다른 계정에 무작위로 대입해 사용자 계정을 탈취하는 공격 방식
- **POODLE(Padding Oracle On Downgraded Legacy)**<br/>
TLS 연결을 SSL 3.0으로 낮춰 SSL 3.0의 취약점을 이용하여 암호문을 해독하는 공격 기법
- **DDE(Dynamic Data Exchange)**<br/>
마이크로소프트 오피스와 애플리케이션 사이에서 데이터를 전달하는 프로토콜, 엑셀 등 오피스 프로그램에서 DDE가 활성화될 시 일반 문서로 위장한 악성 코드가 전파될 수 있음

#### **기타 정보 보안 관련 용어 2**

- **좀비(Zombie) PC**<br/>
악성코드에 감염되어 다른 프로그램이나 컴퓨터를 조종하도록 만들어진 컴퓨터, C&C(Command & Control) 서버의 제어를 받아 주로 DDoS 공격 등에 이용됨
- **C&C 서버**<br/>
해커가 원격지에서 감염된 좀비 PC에 명령을 내리고 악성코드를 제어하기 위한 용도로 사용하는 서버
- **봇넷(Botnet)**<br/>
악성 프로그램에 감염되어 악의적인 의도로 사용될 수 있는 다수의 컴퓨터들이 네트워크로 연결된 형태
- **웜(Worm)**<br/>
네트워크를 통해 연속적으로 자신을 복제하여 시스템의 부하를 높임으로써 결국 시스템을 다운시키는 바이러스의 일종, 분산 서비스 거부 공격, 버퍼 오버플로 공격, 슬래머 등이 웜 공격의 한 형태
- **제로 데이 공격(Zero Day Attack)**<br/>
보안 취약점이 발견되었을 때 발견된 취약점의 존재 자체가 널리 공표되기도 전에 해당 취약점을 통하여 이루어지는 보안 공격, 공격의 신속성을 의미
- **트로이 목마(Trojan Horse)**<br/>
정상적인 기능을 하는 프로그램으로 위장하여 프로그램 내에 숨어 있다가 해당 프로그램이 동작할 때 활성화되어 부작용을 일으키지만 자기 복제 능력은 없음
- **CC(Common Criteria) 인증**<br/>
국가마다 서로 다른 정보보호시스템 평가기준을 연동하고 평가결과를 상호 인증하기 위해 제정된 정보보안 평가기준으로, ISO/IEC 15408에 등록된 국제 표준
- **멀버타이징(Malvertising)**<br/>
악성 소프트웨어를 뜻하는 멀웨어(Malware)와 광고(Advertising)의 합성어로, 온라인 광고를 통해 악성코드를 유포시키는 행위
- **정보공유분석센터(ISAC; Information Sharing & Analysis Center)**<br/>
취약점 및 침해요인과 그 대응방안에 관한 정보를 제공하며, 침해사고가 발생하는 경우 실시간 경보·분석체계를 운영하고, 금융·통신 등 분야별 정보통신기반시설을 보호하기 위한 업무를 수행하는 곳
- **업무연속성계획(BCP; Business Continuity Planning)**<br/>
각종 재해, 장애, 재난으로부터 위기관리를 기반으로 재해복구, 업무복구 및 재개, 비상계획 등의 비즈니스 연속성을 보장하기 위한 계획, RTO, RPO, 우선순위를 설정하기 위해 업무 영향 분석(BIA)를 수행
- **데이터 디들링(Data Diddling)**<br/>
처리할 자료를 다른 자료와 바꿔서 처리하는 것으로, 입력값이나 출력값을 부정한 의도로 수정하여 잘못된 결과가 나오도록 유도하는 방식
- **비트로커(BitLocker)**<br/>
Windows 7부터 지원되기 시작한 Windows 전용의 볼륨 암호화 기능으로, TPM(Trusted Platform Module)과 AES-128 알고리즘을 사용
- **공급망 공격(Supply Chain Attack)**<br/>
소프트웨어 공급망에 침투하여 악성코드를 배포하는 공격으로, SW 빌드 및 배포 과정에 악성코드를 삽입하여 이용자들을 공격
