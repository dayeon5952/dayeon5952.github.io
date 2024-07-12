---
title: "[정보처리기사] 요구사항 확인 1"
date: 2024-06-28 00:34:00 +09:00
categories: [정보처리기사]
tags: [정보처리기사, 요구사항 확인]
---

## 요구사항 확인 1

#### **나선형 모형(Spiral Model, 점진적 모형)**

- 나선을 따라 돌듯이 **<span style="background-color:#fff5b1">여러 번의 소프트웨어 개발 과정을 거쳐 점진적으로</span>** 완벽한 최종 소프트웨어를 **<span style="background-color: #fff5b1">개발하는 모형</span>**
- 보헴(Boehm)이 제안
- **4가지 주요 활동**
![image](/post/나선형모형_1.png)

#### **폭포수 모형(Waterfall Model)**

- 이전 단계로 돌아갈 수 없다는 전제하에 **<span style="background-color:#fff5b1">각 단계를 확실히 매듭짓고</span>** 그 **<span style="background-color:#fff5b1">결과를</span>** 철저하게 **<span style="background-color:#fff5b1">검토하여 승인 과정을 거친 후에 다음 단계를 진행하는 개발 방법론</span>**
- 가장 오래되고 가장 폭넓게 사용된 전통적인 소프트웨어 생명 주기 모형
- 고전적 생명 주기 모형이라고도 함

#### **애자일(Agile) 모형**

- '민첩한', '기민한'이라는 의미로, 고객의 **<span style="background-color:#fff5b1">요구사항 변화에 유연하게 대응할 수 있도록 일정한 주기를 반복하면서 개발하는 모형</span>**
- 어느 특정 개발 방법론이 아니라 좋은 것을 빠르고 낭비 없게 만들기 위해 고객과의 소통에 초점을 맞춘 방법론을 통칭
- **대표적인 개발 모형**
  * 스크럼(Scrum)
  * XP(eXtreme Programming)
  * 칸반(Kanban)
  * Lean
  * 기능 중심 개발(FDD; Feature Driven Development)

#### **애자일 개발 4가지 핵심 가치**

- 프로세스와 도구보다는 개인과 상호작용에 더 가치를 둔다.
- 방대한 문서보다는 실행되는 SW에 더 가치를 둔다.
- 계약 협상보다는 고객과의 협업에 더 가치를 둔다.
- 계획을 따르기 보다는 변화에 반응하는 것에 더 가치를 둔다.

#### **소프트웨어 공학(SE; Software Engineering)**

- **<span style="background-color:#fff5b1">소프트웨어의 위기를 극복하기 위한 방안으로 연구된 학문</span>**
- 여러 가지 방법론과 도구, 관리 기법들을 통하여 소프트웨어의 품질과 생산성 향상을 목적으로 함
- **소프트웨어 공학의 기본 원칙**
  * 현대적인 프로그래밍 기술을 계속적으로 적용해야 한다.
  * 개발된 소프트웨어의 품질이 유지되도록 지속적으로 검증해야 한다.
  * 소프트웨어 개발 관련 사항 및 결과에 대한 명확한 기록을 유지해야 한다.

#### **XP(eXtreme Programming)**

- 수시로 발생하는 고객의 **<span style="background-color:#fff5b1">요구사항에 유연하게 대응하기 위해 고객의 참여와 개발 과정의 반복을 극대화하여 개발 생산성을 향상시키는 방법</span>**
- 짧고 반복적인 개발 주기, 단순한 설계, 고객의 적극적인 참여를 통해 소프트웨어를 빠르게 개발하는 것을 목적으로 함
- **XP의 5가지 핵심 가치**
  * 의사소통(Communication)
  * 단순성(Simplicity)
  * 용기(Courage)
  * 존중(Respect)
  * 피드백(Feedback)

#### **XP의 주요실천 방법(Prcatice)**

- **<span style="background-color:#fff5b1">Pair Programming(짝 프로그래밍)</span>**<br/>
  다른 사람과 함께 프로그래밍을 수행함으로써 개발에 대한 책임을 공동으로 나눠 갖는 환경을 조성
- **<span style="background-color:#fff5b1">Collective Ownership(공통 코드 소유)</span>**<br/>
  개발 코드에 대한 권한과 책임을 공동으로 소유
- **<span style="background-color:#fff5b1">Test-Driven Development(테스트 주도 개발)</span>**<br/>
  * 개발자가 실제 코드를 작성하기 전에 테스트 케이스를 먼저 작성하므로 자신이 무엇을 해야할지를 정확히 파악
  * 테스트가 지속적으로 진행될 수 있도록 자동화된 테스팅 도구(구조, 프레임워크)를 사용
- **<span style="background-color:#fff5b1">Whole Team(전체 팀)</span>**<br/>
  개발에 참여하는 모든 구성원(고객 포함)들은 각자 자신의 역할이 있고 그 역할에 대한 책임을 가져야 함
- **<span style="background-color:#fff5b1">Continuous Integration(계속적인 통합)</span>**<br/>
  모듈 단위로 나눠서 개발된 코드들은 하나의 작업이 마무리될 때마다 지속적으로 통합됨
- **<span style="background-color:#fff5b1">Refactoring(리팩토링)</span>**<br/>
  * 프로그램 기능의 변경 없이 시스템을 재구성
  * **목적** : 프로그램을 쉽게 이해하고 쉽게 수정하여 빠르게 개발할 수 있도록 하기 위함임
- **<span style="background-color:#fff5b1">Small Releases(소규모 릴리즈)</span>**<br/>
  릴리즈 기간을 짧게 반복함으로써 고객의 요구 변화에 신속히 대응할 수 있음

#### **데이터베이스 관리 시스템(DBMS; DataBase Management System)**

- **<span style="background-color:#fff5b1">사용자와 데이터베이스 사이에서</span>** 사용자의 요구에 따라 **<span style="background-color:#fff5b1">정보를 생성해 주고, 데이터베이스를 관리해 주는 소프트웨어</span>**
- **DBMS 관련 요구사항 식별 시 고려사항**
  * 가용성
  * 성능
  * 기술 지원
  * 상호 호환성
  * 구축 비용

#### **기능 요구사항(Functional Requirements)**

- 시스템이 무엇을 하는지, 어떤 기능을 하는지 등의 기능이나 수행과 관련된 요구사항
- 시스템의 입력이나 출력으로 무엇이 포함되어야 하는지에 대한 사항
- 시스템이 어떤 데이터를 저장하거나 연산을 수행해야 하는지에 대한 사항
- 시스템이 반드시 수행해야 하는 기능
- 사용자가 시스템을 통해 제공받기를 원하는 기능

#### **비기능 요구사항(Non-functional Requirements)**

- 품질이나 제약사항과 관련된 요구사항
- 시스템 장비 구성 요구사항
- 성능 요구사항
- 인터페이스 요구사항
- 데이터를 구축하기 위해 필요한 요구사항
- 테스트 요구사항
- 보안 요구사항
- **품질 요구사항** : 가용성, 정합성, 상호 호환성, 대응성, 이식성, 확장성, 보안성 등
- 제약사항
- 프로젝트 관리 요구사항
- 프로젝트 자원 요구사항

#### **요구사항 개발 프로세스**

- 요구사항 개발 프로세스는 개발 대상에 대한 요구사항을 체계적으로 도출하고 분석한 후 명세서에 정리한 다음 확인 및 검증하는 일련의 구조화된 활동
- 요구사항 개발 프로세스가 진행되기 전에 타당성 조사(Feasibility Study)가 선행되어야 함
- 요구사항 개발은 요구공학(Requirement Engineering)의 한 요소
![image](/post/요구사항개발프로세스.png)

#### **요구사항 명세 기법**

 <table>
  <thead>
  <tr>
  <th class="text-center" >구분</th>
  <th class="text-center" style="white-space: normal;">정형 명세 기법</th>
  <th class="text-center" style="white-space: normal;">비정형 명세 기법</th>
  </tr>
  </thead>
  <tbody>
  <tr>
  <td class="text-center" >기법</td>
  <td style="white-space: normal;">수학적 원리 기반, 모델 기반</td>
  <td style="white-space: normal;">상태/기능/객체 중심</td>
  </tr>
  <tr>
  <td class="text-center" >작성<br/>방법</td>
  <td style="white-space: normal;">수학적 기호, 정형화된 표기법</td>
  <td style="white-space: normal;">일반 명사, 동사 등의 자연어를 기반으로 서술 또는 다이어그램으로 작성</td>
  </tr>
  <tr>
  <td class="text-center" >특징</td>
  <td style="white-space: normal;">
  <ul>
  <li>요구사항을 정확하고 간결하게 표현할 수 있음</li>
  <li>요구사항에 대한 결과가 작성자에 관계없이 일관성이 있으므로 완전성 검증이 가능함</li>
  <li>표기법이 어려워 사용자가 이해하기 어려움</li>
  </ul>
  </td>
  <td style="white-space: normal;">
  <ul>
  <li>자연어의 사용으로 인해 요구사항에 대한 결과가 작성자에 따라 다를 수 있어 일관성이 떨어지고, 해석이 달라질 수 있음</li>
  <li>내용의 이해가 쉬어 의사소통이 용이함</li>
  </ul>
  </td>
  </tr>
  <tr>
  <td class="text-center" >종류</td>
  <td style="white-space: normal;">VDM, Z, Petri-net, CSP 등</td>
  <td style="white-space: normal;">FSM, Decision Table, ER모델링, State Chart(SADT) 등</td>
  </tr>
  </tbody>
 </table>

#### **요구사항 분석(Requirement Analysis)**

- 소프트웨어 개발의 실제적인 첫 단계로, **<span style="background-color:#fff5b1">개발 대상에 대한 사용자의 요구사항을 이해하고 문서화하는 활동</span>**
- 사용자의 요구의 타당성을 조사하고 비용과 일정에 대한 제약을 설정
- 사용자의 요구를 정확하게 추출하여 목표를 정함

#### **자료 흐름도(DFD; Data Flow Diagram)**

- 요구사항 분석에서 **<span style="background-color:#fff5b1">자료의 흐름 및 변환 과정과 기능을 도형 중심으로 기술하는 방법</span>**
- 자료 흐름 그래프, 버블 차트라고도 함
- 자료 흐름과 처리를 중심으로 하는 구조적 분석 기법에 이용

#### **자료 흐름도의 구성 요소**

<table>
<thead>
<tr>
<th class="text-center">기호</th>
<th class="text-center">의미</th>
</tr>
</thead>
<tbody>
<tr>
<td >프로세스<br/>(Process)</td>
<td style="white-space: normal;">자료를 변환시키는 시스템의 한 부분(처리 과정)을 나타내며 처리, 기능, 변환, 버블이라고도 함</td>
</tr>
<tr>
<td >자료 흐름<br/>(Data Flow)</td>
<td style="white-space: normal;">자료의 이동(흐름)이나 연관관계를 나타냄</td>
</tr>
<tr>
<td>자료 저장소<br/>(Data Store)</td>
<td style="white-space: normal;">시스템에서의 자료 저장소(파일, 데이터베이스)를 나타냄</td>
</tr>
<tr>
<td>단말<br/>(Terminator)</td>
<td style="white-space: normal;">시스템과 교신하는 외부 개체로, 입력 데이터가 만들어지고 출력 데이터를 받음</td>
</tr>
</tbody>
</table>

#### **자료 사전(DD; Data Dictionary)**

- **<span style="background-color:#fff5b1">자료 흐름도에 있는 자료를 더 자세히 정의하고 기록한 것</span>**
- 데이터를 설명하는 데이터로, 데이터의 데이터 또는 메타 데이터(Meta Data)라고도 함
- **자료 사전에서 사용되는 표기 기호**
<table>
<thead>
<tr>
<th class="text-center">기호</th>
<th class="text-center">의미</th>
</tr>
</thead>
<tbody>
<tr>
<td style="white-space: normal;">=</td>
<td style="white-space: normal;"><strong>자료의 정의</strong> : ~로 구성되어 있다(is composed of)</td>
</tr>
<tr>
<td style="white-space: normal;">+</td>
<td style="white-space: normal;"><strong>자료의 연결</strong> : 그리고(and)</td>
</tr>
<tr>
<td style="white-space: normal;">()</td>
<td style="white-space: normal;"><strong>자료의 생략</strong> : 생략 가능한 자료(Optional)</td>
</tr>
<tr>
<td style="white-space: normal;">[]</td>
<td style="white-space: normal;"><strong>자료의 선택</strong> : 또는(or)</td>
</tr>
<tr>
<td style="white-space: normal;">{}</td>
<td style="white-space: normal;"><strong>자료의 반복</strong> : Iteration of</td>
</tr>
<tr>
<td style="white-space: normal;">* *</td>
<td style="white-space: normal;"><strong>자료의 설명</strong> : 주석(Comment)</td>
</tr>
</tbody>
</table>

#### **SADT**

- **<span style="background-color:#fff5b1">시스템 정의, 소프트웨어 요구사항 분석, 시스템/소프트웨어 설계를 위한 도구</span>**
- SoftTech 사에서 개발
- 구조적 요구 분석을 하기 위해 블록 다이어그램을 채택한 자동화 도구

#### **HIPO(Hierarchy Input Process Output)**

- 시스템의 분석 및 설계, 또는 문서화에 사용되는 기법으로, **<span style="background-color:#fff5b1">시스템 실행 과정인 입력, 처리, 출력의 기능을 표현한 것</span>**
- 하향식 소프트웨어 개발을 위한 문서화 도구
- 시스템의 기능을 여러 개의 고유 모듈로 분할하여 이들 간의 인터페이스를 계층 구조로 표현한 것을 HIPO Chart라고 함

#### **UML(Unified Modeling Language)**

- 시스템 분석, 설계, 구현 등 **<span style="background-color:#fff5b1">시스템 개발 과정에서</span>** 시스템 개발자와 고객 또는 개발자 상호 간의 **<span style="background-color:#fff5b1">의사소통이 원활하게 이루어지도록 표준화한 대표적인 객체지향 모델링 언어</span>**
- Rumbaugh(OMT), Booch, Jacobson 등의 객체지향 방법론의 장점을 통합
- **UML의 구성 요소**
  * 사물(Things)
  * 관계(Relationships)
  * 다이어그램(Diagram)

#### **집합(Aggregation) 관계**

- **<span style="background-color:#fff5b1">하나의 사물이 다른 사물에 포함되어 있는 관계</span>**
- 포함하는 쪽(전체, Whole)과 포함되는 쪽(부분, Part)은 서로 독립적
- 포함되는 쪽(부분, Part)에서 포함하는 쪽(전체, Whole)으로 속이 빈 마름모를 연결하여 표현

#### **일반화(Generalization) 관계**

- **<span style="background-color:#fff5b1">하나의 사물이 다른 사물에 비해 더 일반적이거나 구체적인 관계</span>**
- 보다 일반적인 개념을 상위(부모), 보다 구체적인 개념을 하위(자식)
- 구체적(하위)인 사물에서 일반적(상위)인 사물 쪽으로 속이 빈 화살표를 연결하여 표현

#### **의존(Dependency) 관계**

- 연관 관계와 같이 사물 사이에 서로 연관은 있으나 필요에 의해 **<span style="background-color:#fff5b1">서로에게 영향을 주는 짧은 시간 동안만 연관을 유지하는 관계</span>**
- 하나의 사물과 다른 사물이 소유 관계는 아니지만 사물의 변화가 다른 사물에도 영향을 미치는 관계
- 일반적으로 한 클래스가 다른 클래스를 오퍼레이션의 매개 변수로 사용하는 경우에 나타나는 관계
- 영향을 주는 사물(이용자)이 영향을 받는 사물(제공자)쪽으로 점선 화살표를 연결하여 표현

#### **실체화(Realization) 관계**

- **<span style="background-color:#fff5b1">사물이 할 수 있거나 해야하는 기능으로, 서로를 그룹화 할 수 있는 관계</span>**
- 한 객체가 다른 객체에게 오퍼레이션을 수행하도록 지정하는 의미적 관계
- 사물에서 기능 쪽으로 속이 빈 점선 화살표를 연결하여 표현

#### **구조적 다이어그램의 종류**

- **<span style="background-color:#fff5b1">클래스 다이어그램(Class Diagram)</span>**<br/>
  클래스와 클래스가 가지는 속성, 클래스 사이의 관계를 표현
- **<span style="background-color:#fff5b1">객체 다이어그램(Object Diagram)</span>**
  * 클래스에 속한 사물(객체)들, 즉 인스턴스(Instance)를 특정 시점의 객체와 객체 사이의 관계로 표현
  * 럼바우(Rumbaugh) 객체지향 분석 기법에서 객체 모델링에 활용
- **<span style="background-color:#fff5b1">컴포넌트 다이어그램(Component Diagram)</span>**<br/>
  * 실제 구현 모듈인 컴포넌트 간의 관계나 컴포넌트 간의 인터페이스를 표현
  * 구현 단계에서 사용
- **<span style="background-color:#fff5b1">배치 다이어그램(Deployment Diagram)</span>**<br/>
  * 결과물, 프로세스, 컴포넌트 등 물리적 요소들의 위치를 표현
  * 구현 단계에서 사용
- **<span style="background-color:#fff5b1">복합체 구조 다이어그램(Composite Structure Diagram)</span>**<br/>
  클래스나 컴포넌트가 복합 구조를 갖는 경우 그 내부 구조를 표현
- **<span style="background-color:#fff5b1">패키지 다이어그램(Package Diagram)</span>**<br/>
  유스케이스나 클래스 등의 모델 요소들을 그룹화한 패키지들의 관계를 표현

#### **행위 다이어그램의 종류**

- **<span style="background-color:#fff5b1">유스케이스 다이어그램(Use Case Diagram)</span>**
  * 사용자의 요구를 분석하는 것으로, 기능 모델링 작업에 사용
  * 사용자(Actor)와 사용 사례(Use Case)로 구성
- **<span style="background-color:#fff5b1">시퀀스 다이어그램(Sequence Diagram)</span>**<br/>
  상호작용하는 시스템이나 객체들이 주고받는 메시지를 표현
- **<span style="background-color:#fff5b1">커뮤니케이션 다이어그램(Communication Diagram)</span>**<br/>
  동작에 참여하는 객체들이 주고받는 메시지와 객체들 간의 연관 관계를 표현
- **<span style="background-color:#fff5b1">상태 다이어그램(State Diagram)</span>**
  * 하나의 객체가 자신이 속한 클래스의 상태 변화 혹은 다른 객체와의 상호작용에 따라 상태가 어떻게 변화하는지를 표현
  * 럼바우(Rumbaugh) 객체지향 분석 기법에서 동적 모델링에 활용
- **<span style="background-color:#fff5b1">활동 다이어그램(Activity Diagram)</span>**<br/>
- 시스템이 어떤 기능을 수행하는지 객체의 처리 로직이나 조건에 따라 처리의 흐름을 순서에 따라 표현
- **<span style="background-color:#fff5b1">상호작용 개요 다이어그램(Interaction Overview Diagram)</span>**<br/>
  상호작용 다이어그램 간의 제어 흐름을 표현
- **<span style="background-color:#fff5b1">타이밍 다이어그램(Timing Diagram)</span>**<br/>
  객체 상태 변화와 시간 제약을 명시적으로 표현

#### **스테레오 타입(Stereotype)**

- **<span style="background-color:#fff5b1">UML에서 표현하는 기본 기능 외에 추가적인 기능을 표현하는 것</span>**
- 길러멧(Guilemet)이라고 부르는 겹화살괄호(≪≫) 사이에 표현할 형태를 기술
