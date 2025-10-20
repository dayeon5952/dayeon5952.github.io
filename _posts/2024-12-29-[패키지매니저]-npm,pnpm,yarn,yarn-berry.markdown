---
title: "[패키지매니저] npm, pnpm, yarn, yarn-berry"
date: 2024-12-29 17:00:7 +09:00
categories: [Frontend]
tags: [패키지매니저, npm, pnpm, yarn, yarn-berry]
---
## **Package Manager**

패키지 매니저는 개발에 필요한 다양한 패키지를 설치하고 수정하고 업데이트하는 등의 작업을 편리하게 도와주는 도구라고 할 수 있다.

자바스크립트로 프로젝트를 진행하다 보면 해당 프로젝트에 필요한 다양한 패키지들이 있고 이 패키지들을 설치하고 또 관리해야 하는 경우가 있는데, 이 패키지들을 의존성 있게 관리해 주는 것이 바로 패키지 매니저이다.

> 패키지 매니저는 **프로젝트에 사용되는 패키지를 쉽게 관리하고 설치해주는 하나의 도구**와 같다.

## **대표적인 Package Manager 3가지**

가장 많이 사용되는 패키지 매니저로는 `<span style="background-color: #fff5b1; font-weight: 700;">`npm, yarn, pnpm이 있다.

### **1️⃣ npm(Node Package Manager)**

**npm은 패키지 매니저의 시초**라고 할 수 있다. npm의 경우에는 프로젝트의 의존성을 수동으로 다운로드해야 했던 불편함을 개선한 패키지 매니저로 **node.js에 내장되어 있기 때문에 추가적인 설치가 필요하지 않다.** 즉, 별도의 설치가 필요 없다는 것이 npm의 큰 장점이기도 하다.

더불어서, npm에는 직접 개발한 모듈뿐만 아니라 **다른 사용자들이 만들어 놓은 다양한 모듈이 있기 때문에 이를 다운로드로 쉽게 사용할 수 있다는 특징**이 있다.

npm의 가장 큰 특징이자 단점은, 아무래도 npm이 패키지 매니저의 시초와 같기 때문에 오랜 시간 아주 많은 사용자들이 사용을 해와서 **생태계가 굉장히 풍부하다는 점**이다.

다만, 앞서 말했듯이 **npm의 경우 패키지들을 서로 의존하도록 하기 때문에 만약 하나의 문제가 발생한다면 다른 것들에도 문제가 발생할 수 있다는 단점**이 있다. 따라서, 이 부분을 관리하기 위해서는 package.json이 필요하다.

**[사용 방법]**

<!-- 코드 블럭 width 100% -->

<div style="width:100%; font-size: .85rem; padding: 1em; word-break: break-word; border-radius: 4px; background-color: var(--inline-code-bg); color: var(--highlighter-rouge-color); margin: 0.5em 0px; font-family: var(--bs-font-monospace);">npm init</div>

해당 명령어를 입력하여 npm을 사용할 수 있는 초기 환경을 설정해주면 된다.

> ``npm install 주소`` : 특정 저장소 내 패키지 설치. 주로 github을 이와 같이 설치`<br/>`
> ``npm install package_name -g`` : 글로벌 설치. 로컬의 다른 프로젝트도 이 패키지 사용 가능`<br/>`
> ``npm update`` : 설치한 패키지들 업데이트`<br/>`
> ``npm dedupe`` : 중복 설치된 패키지들 정리해주는 명령어`<br/>`

### **2️⃣ pnpm(performant npm)**

pnpm은 2017년에 Zoltan Kochan이라는 개발자가 내놓은 패키지 매니저로 "performant npm"의 약자이기도 하다.

즉, 효율적인 npm이라는 의미인데 말 그대로 **효율성이라는 장점이자 특징을 가진 패키지 매니저**이다.

pnpm의 경우에는 프로젝트별로 node_modules에 매번 패키지를 설치했던 것과는 달리 **global 저장소에 패키지에 한 번만 저장함으로써 저장 공간을 절약할 수 있다는 아주 큰 장점**을 가지고 있다. 즉, pnpm을 사용한다면 똑같은 라이브러리를 중복해서 설치할 필요가 없다는 의미이다.

다만, 주의할 점은 특정 패키지를 한 번만 설치하기 때문에 프로젝트별로 연결을 해놓으면 호환 문제가 발생할 수 있다. 따라서 프로젝트끼리 호환 문제가 발생하지 않도록 버전 관리를 반드시 해줄 필요가 있다.

**[사용 방법]**

npm을 통해 먼저 설치를 해야 한다. pnpm CLI는 ``pnpm``와 ``pnpm.exe``의 두 가지 패키지를 제공한다.

<!-- 코드 블럭 width 100% -->

<div style="width:100%; font-size: .85rem; padding: 1em; word-break: break-word; border-radius: 4px; background-color: var(--inline-code-bg); color: var(--highlighter-rouge-color); margin: 0.5em 0px; font-family: var(--bs-font-monospace);">npm install -g pnpm</div>
or
<!-- 코드 블럭 width 100% -->
<div style="width:100%; font-size: .85rem; padding: 1em; word-break: break-word; border-radius: 4px; background-color: var(--inline-code-bg); color: var(--highlighter-rouge-color); margin: 0.5em 0px; font-family: var(--bs-font-monospace);">npm install -g @pnpm/exe</div>

> ``pnpm install`` : 전체 설치`<br/>`
> ``pnpm add <'pkg'>`` : 패키지 설치`<br/>`
> ``pnpm <'cmd'>`` : pnpm start, pnpm dev 등 cmd 명령어 사용

### **3️⃣ yarn(Yet Another Resource Negotiator)**

yarn은 기존의 npm의 단점을 보완하면서 등장한 패키지 매니저로, 2017년에 페이스북 개발자들과 구글 개발자들이 함께 내놓은 패키지 매니저이다.

사실상 npm과 큰 차이점도 없고 프로세스도 거의 동일하지만, **아주 큰 차이점은 보안**이다.

npm은 보안의 문제가 큰 단점이었는데 **yarn에서는 npm의 취약점이었던 보안 문제를 해결해서 보다 안정성을 보장하고 있다는 아주 큰 장점**을 가지고 있다.

더불어서, **yarn의 또 다른 장점으로는 빠른 속도**이다. 여러 개의 패키지를 순차적으로 설치를 하는 것이 아니라 병렬적으로 설치를 해주기 때문에 속도 측면에서도 npm보다 개선된 모습을 보여주고 있다.

이러한 이유로 최근에는 npm보다 yarn을 더 많이 사용하고 있는 추세이고, 실제로 사용하다보면 yarn의 빠른 속도에 맛 들여서 계속 yarn을 사용할 수 밖에 없을 것이다.

추가적으로, yarn berry라는 상위 버전을 통해서 여러 개발과 개선이 이루어지고 있는데 아직까지는 yarn berry보다는 yarn을 더 많이 사용하고 있는 것 같다.

**[사용 방법]**

yarn의 경우 npm과는 달리 별도의 설치가 필요하기 때문에 npm을 통해 먼저 설치를 해야 한다.

<!-- 코드 블럭 width 100% -->

<div style="width:100%; font-size: .85rem; padding: 1em; word-break: break-word; border-radius: 4px; background-color: var(--inline-code-bg); color: var(--highlighter-rouge-color); margin: 0.5em 0px; font-family: var(--bs-font-monospace);">npm install -g yarn</div>
컴퓨터 모두에서 yarn을 사용할 수 있도록 global 키워드를 사용해서 설치를 해준다. 설치 후에는 <span style="background-color:#fff5b1; font-weight: 700;">yarn, yarn init</span> 명령어를 통해서 yarn 폴더를 생성한 후 설정을 해주면 된다.

> ``yarn add 주소`` : 특정 저장소 내 패키지 설치. 주로 github을 이와 같이 설치`<br/>`
> ``yarn global add package_name`` : 글로벌 설치. 로컬의 다른 프로젝트도 이 패키지 사용 가능`<br/>`
> ``yarn upgrade`` : 설치한 패키지들 업데이트`<br/>`
> ``yarn dedupe`` : 중복 설치된 패키지들 정리해주는 명령어

### **Yarn Berry**

Yarn Berry는 Node.js를 위한 새로운 패키지 관리 시스템으로, 2020년에 페이스북에서 발표한 yarn의 두 번째 버전이다. `<span style="background-color:#fff5b1; font-weight:700;">`Plug'n'Play(PnP) 라고 불리는 새로운 패키지 관리 방식이다.

기존의 npm의 문제점인 비효율적인 의존성 검색, 환경에 따라 달라지는 동작, 비효율적인 설치, 유령 의존성(Phantom Dependency)을 해결하기 위한 새로운 패키지 매니저이다.

**Plug'n'Play(PnP)**는 **패키지를 프로젝트의 ``node_modules`` 디렉토리에 저장하지 않는다.** 패키지들에 대한 의존성 정보는 **.zip** 파일로 압축되어 ``.yarn/cache`` 폴더에 저장하고, 이를 찾기 위한 정보를 ``.pnp.cjs`` 파일에 기록한다.

``.pnp.cjs``를 이용함으로써 별도의 디스크 I/O 작업 없이도 패키지의 위치를 정확히 알 수 있기 때문에 시간도 단축되고, 중복 설치를 방지하며, ``node_modules``를 만들고 패키지들을 호이스팅시킬 필요가 없다.

장점으로는 **zero-install**로 ``git clone`` 이후 **별도의 설치 필요 없이** (**``yarn install`` 명령어 없이**) 바로 사용할 수 있게 되었고, 브랜치 변경 시에도 해당 브랜치에 이미 필요한 의존성 패키지가 존재하므로 ``yarn install`` 없이 프로젝트 실행이 가능하고 **CI**에서 의존성 설치하는 시간을 절약할 수 있다. 또한, 각 패키지가 zip 아카이브로 압축되어 있으므로, 스토리지 용량을 크게 아낄 수 있고, 의존성을 구성하는 파일의 수가 많지 않으므로 변경 사항을 감지하거나 전체 의존성을 삭제하는 작업이 빠르다.

**[사용 방법]**

yarn 설치 후 버전 변경을 해야 한다.

<div style="width:100%; font-size: .85rem; padding: 1em; word-break: break-word; border-radius: 4px; background-color: var(--inline-code-bg); color: var(--highlighter-rouge-color); margin: 0.5em 0px; font-family: var(--bs-font-monospace);">npm install -g yarn</div>
<div style="width:100%; font-size: .85rem; padding: 1em; word-break: break-word; border-radius: 4px; background-color: var(--inline-code-bg); color: var(--highlighter-rouge-color); margin: 0.5em 0px; font-family: var(--bs-font-monospace);">cd ../path/to/some-package</div>
<div style="width:100%; font-size: .85rem; padding: 1em; word-break: break-word; border-radius: 4px; background-color: var(--inline-code-bg); color: var(--highlighter-rouge-color); margin: 0.5em 0px; font-family: var(--bs-font-monospace);">yarn set version berry</div>

버전 변경 후 ``node_modules``와 ``package.lock.json`` 삭제를 해야한다.

<div style="width:100%; font-size: .85rem; padding: 1em; word-break: break-word; border-radius: 4px; background-color: var(--inline-code-bg); color: var(--highlighter-rouge-color); margin: 0.5em 0px; font-family: var(--bs-font-monospace);">rm -rf node_modules</div>
<div style="width:100%; font-size: .85rem; padding: 1em; word-break: break-word; border-radius: 4px; background-color: var(--inline-code-bg); color: var(--highlighter-rouge-color); margin: 0.5em 0px; font-family: var(--bs-font-monospace);">rm -rf package.lock.json</div>

``.yarnrc.yml`` 파일에서 ``node:Linker: node-modules``를 삭제하고 다시 ``yarn install`` 후 ``.gitignore`` 설정을 해야한다.

```text
.yarn/*
!.yarn/cache
!.yarn/patches
!.yarn/plugins
!.yarn/releases
!.yarn/sdks
!.yarn/versions
```

> **유령 의존성**`<br/>`
> 중복해서 설치되는 ``node_modules``를 아끼기 위해 호이스팅 기법을 사용한다.`<br/>`
> 그로 인해 직접 의존하고 있지 않은 라이브러리를 ``require()``할 수 있는 현상

## **어떤 패키지 매니저를 사용해야할지**

위에서 살펴본 패키지 매니저의 경우 현재 사용해도 큰 문제가 없을 정도로 안정적인 상태이기 때문에 개인의 취향 혹은 프로젝트의 특성에 따라서 선택해서 사용해도 큰 문제가 없다.

다만, 사용 추세를 보면 npm과 yarn을 가장 많이 사용하고 있고 yarn이 등장했을 때 보안의 이슈로 인해 npm 사용을 지양하기도 했지만 npm도 꾸준히 보안 개선을 해왔기 때문에 npm을 사용하는 것도 괜찮다고 한다.

따라서, 다양한 패키지 매니저들을 직접 사용해보고 본인에게 맞는 것을 선택해서 사용하면 될 것 같다.
