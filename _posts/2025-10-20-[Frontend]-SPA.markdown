---
title: "[Frontend] SPA(Single Page Application) vs MPA(Multiple Page Application)"
date: 2025-10-20 13:40:27 +09:00
categories: [Frontend]
tags: [SPA, MPA]
---
## **SPA(Single Page Application)**

### **개념**

- 모던 웹의 패러다임
- 한 개(Single)의 Page로 구성된 Application
- 서버로부터 완전한 새로운 페이지를 불러오지 않고 현재의 페이지를 동적으로 다시 작성함으로써 사용자와 소통하는 웹 애플리케이션이나 웹사이트를 말함
- SPA의 핵심 가치는 사용자 경험(UX) 향상에 있으며 부가적으로 애플리케이션 속도의 향상도 기대할 수 있엉서 모바일 퍼스트(Mobil First) 전략에 부함

### **작동 방식**

- SPA는 웹 애플리케이션에 필요한 모든 정적 리소스를 최초 접근 시 단 한 번만 다운로드함.
- 이후 새로운 페이지 요청 시, 페이지 갱신에 필요한 데이터만을 JSON으로 전달받아 페이지를 갱신함. 기존 페이지의 내부를 수정해서 보여주는 방식
- SPA는 일반적으로 CSR(Client Side Rendering) 방식으로 렌더링한다고 말함

### **장점**

- **속도 및 응답시간** <br>
  속도는 전반적인 사용자 경험을 향상시키는데 중요한 요소로, 전체 페이지를 다시 렌더링하지 않고 변경되는 부분만을 갱신하므로 새로고침이 발생하지 않아 네이티브 앱과 유사한 사용자 경험을 제공할 수 있음
- **모바일 친화적** <br>
  모바일 앱도 SPA와 동일한 아키텍처에서 개발되므로 모바일 개발을 염두해두면 동일한 백엔드 코드를 재사용하도록 할 수 있음
- **개발 간소화** <br>
  서버에서 페이지를 렌더링하기 위해 코드를 작성할 필요가 없음. SPA보다 "현대적인" 것으로 간주되면 오늘날의 민첩한 개발 요구 사항에 적함
- **로컬 스토리지 캐시** <br>
  SPA는 모든 로컬 스토리지를 효과적으로 캐시할 수 있음. 애플리케이션은 하나이 요청만 보내고 모든 데이터를 저장한 다음 이 데이터를 사용할 수 있으며 오프라인에서도 작동함

### **단점**

- **초기 구동 속도** <br>
  SPA는 웹 애플리케이션에 필요한 모든 정적 리소스를 최초 접근 시 단 한 번 다운로드하기 때문에 초기 구동 속도가 상대적으로 느림
- **SEO(검색엔진 최적화) 이슈** <br>
  SPA는 JavaScript로 구축됨(CSR 방식). JavaScript를 읽지 못하는 검색엔진에 대해서 크롤링이 되지 않아 색인이 되지 않는 문제가 발생할 수 있음
- **보안 문제** <br>
  XSS(교차 사이트 스크립팅)로 인해 공격자가 다른 사용자가 웹 응용 프로그램에 클라이언트 측 스크립트를 삽입할 수 있는 위험이 있음

#### **예시**

- Gmail
- Google Map
- GitHub
- Facebook

## **MPA(Multiple Page Application)**

### **개념**

- 웹 앱을 개발하는 전통적인 방법
- 여러 개(Multiple)의 Page로 구성된 Application

### **작동 방식**

- 새로운 페이지를 요청할 때마다 서버에서 렌더링된 정적 리소스(HTML, CSS, JavaScript)가 다운로드됨
- 페이지를 이동하거나 새로고침하면 전체 페이지를 다시 렌더링함
- MPA는 SSR(Server Side Rendering) 방식으로 렌더링함

### **장점**

- **SEO 친화적** <br>
  MPA를 사용하여 여러 페잉지를 생성할 수 있기 때문에 훨씬 더 많은 수의 키워드를 타겟팅할 수 있음. 이렇게 하면 Google에서 얻을 수 있는 유기적 트래픽의 양이 자동으로 향상됨. 더 많은 페이지로 인해 여러 HTML 파일이 존재하는데, HTML 다운로드하여 페이지를 크롤링하기 때문에 검색 엔진이 작동하는 방식에 더 적합함
- **확장성** <br>
  다중 페이지로 원하는 만큼 페이지를 추가할 수 있음.(ex. Amazon 플랫폼에서 사용할 수 있는 제품의 수는 원하는 만큼 콘텐츠를 추가)

### **단점**

- **페이지 이동 시 느린 속도** <br>
  사용자가 새로운 페이지를 이동하면 전체 페이지를 다시 렌더링하기 때문에 HTML, CSS, JS와 같은 리소스들이 새로 고쳐져서 속도에 영향을 받음.
- **복잡한 개발** <br>
  개발자는 클라이언트 측과 서버 측 모두에 프레임워크를 사용해야 함. 그 결과 애플리케이션 개발 시간이 더 길어짐.
- **보안 및 유지보수** <br>
  개발자는 모든 페이지가 안전한지 확인해야하는데 페이지가 많아서 지속적으로 유지보수 하는 것이 어려움

#### **예시**
- Amazon <br>
  세계 최대 전자상거래 웹사이트 Amazon은 MPA이며 제품이나 카테고리를 보려고 할 때 페이지가 동일하게 유지되도록 요구하지 않음. 따라서 매우 큰 전자상거래 사이트를 구축할 생각이라면 MPA 아키텍처를 선택해야 함. MPA는 연속적인 접근이 필요하지 않은 복잡한 웹사이트에 가장 적합함.

![image](post/SPA와MPA.jpeg)

> #### **💡 참고**
> [SPA(Single Page Application)](https://docs.tosspayments.com/resources/glossary/spa) <br>
> [프론트엔드 개발에서의 SPA와 MPA의 차이점 및 선택 기준](https://f-lab.kr/insight/spa-vs-mpa-in-frontend-development?gad_source=1&gad_campaignid=22368870602&gbraid=0AAAAACGgUFe37oYLrUl9ICj-Iun_L6U1m&gclid=CjwKCAjwmNLHBhA4EiwA3ts3mSTmEHe915sty40msv_cgmaLxaxCDNmrQN8YJ_jRDXIQXzeBnK-KrhoCHgEQAvD_BwE) <br>
> [SPA vs MPA 개념, 장단점](https://velog.io/@yejine2/SPASingle-Page-Application-VS-MPA)
>
