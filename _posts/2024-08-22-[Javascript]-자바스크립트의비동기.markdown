---
title: "[Javascript] 자바스크립트의 비동기"
date: 2024-08-22 23:12:08 +09:00
categories: [Javascript]
tags: [Javascript, 자바스크립트, 비동기, 동기]
---

## **자바스크립트의 동기와 비동기**

### **동기(Synchronous)**

어떤 작업을 실행할 때 그 작업이 끝나기를 기다리는 방식을 의미한다. 즉, 작업이 완료될 때까지 다음 코드의 실행을 멈추고 기달는 것이다. 이러한 방식은 작업의 순서를 보장하고, 작업이 끝날 때까지 결과를 기다리는 것이 가능하다.

### **비동기(asynchronous)**

어떤 작업을 실행할 때 그 작업이 완료되지 않더라도 다음 코드를 실행하는 방식을 의미한다. 즉, 작업이 완료되지 않았더라도 결과를 기다리지 않고 다음 코드를 실행하는 것이다. 이러한 방식은 작업이 오래 걸리는 경우 시간을 절약하고, 병렬적인 작업 처리가 가능하다.

동기 방식으로 파일을 읽는다면 파일을 읽기 시작한 이후에 다음 코드를 실행하지 않고 파일이 읽혀지기를 기다린다. 반면에 비동기 방식으로 파일을 읽는다면 파일을 읽는 작업이 실해오디는 동안 다른 작업을 수행할 수 있다.

## **자바스크립트에서의 비동기 처리**

자바스크립트는 *싱글 스레드(Single Thread)* 기반의 프로그래밍 언어이다. 하나의 스레드에서 모든 작업을 처리하도록 되어 있기 때문에, 한 번에 하나의 작업만 처리할 수 있다. 그래서 자바스크립트에서 동기 방식으로 처리하게 되면, 이전 작업이 완료될 때까지 다음 작업을 처리할 수 없다. 이러한 문제점을 해결하기 위해 자바스크립트에서는 비동기 처리가 필요하다.

```javascript
function test() {
  for (let i = 0; i < 10000; i++){
    console.log(1);
  }
  console.log(2);
}
```
- 콘솔에 2가 찍히려면 1만 번의 1이 찍힐 때까지 기다려야 한다.

비동기 처리를 통해 자바스크립트는 하나의 스레드에서도 병렬적으로 여러 작업을 처리할 수 있다. 예를 들어, 네트워크 통신을 비동기 방식으로 처리하면, 서버로부터 데이터를 받아오는 동안에도 다른 작업을 처리할 수 있으며, 데이터를 받아오는 작업이 완료되면 해당 작업을 처리할 수 있다.

### **비동기 처리가 필요한 이유**

- **웹 페이지의 반응성 향상** : 사용자가 요청한 작업이 완료될 때까지 기다리는 것은 사용자 경험을 저해시킨다. 따라서, 비동기 처리를 통해 사용자의 요청에 빠르게 반응할 수 있도록 해야 한다.
- **네트워크 통신** : 웹 애플리케이션에서는 서버와의 데이터 통신이 필요하다. 동기적인 처리를 하게 되면 응답을 기다리는 동안 다른 작업을 수행할 수 없기 때문에 웹 페이지의 반응성이 떨어질 수 있다. 따라서, 동기적으로 데이터를 받아오는 것이 웹 페이지의 성능을 향상시키는데 도움이 된다.
- **병렬 처리** : 비동기 처리를 통해 여러 작업을 동시에 처리할 수 있다. 이를 통해 시간이 오래 걸리는 작업을 병렬적으로 처리할 수 있으며, 결과적으로 전체 작업 시간을 단축시킨다.
- **에러 처리** : 비동기적으로 처리할 때 에러가 발생하면, 해당 에러를 쉽게 처리할 수 있다. 에러 발생 시, 에러를 처리할 수 있는 콜백 함수를 실행하거나, 에러를 캐치하여 처리할 수 있어 프로그램의 안정성을 높일 수 있다.

### **Promise**

#### **Promise API**

- Promise API는 비동기 API 중 하나이다.
- 태스크 큐가 아닌 잡 큐(Job queue, 혹은 microtask queue)를 사용한다.
- 잡 큐는 태스크 큐보다 우선순위가 높다.

```javascript
setTimeout(()=> {
  console.log("타임아웃 1");
}, 0);

Promise.resolve().then(()=> console.log("프로미스1"));

setTimeout(()=> {
  console.log("타임아웃 2");
}, 0);

Promise.resolve().then(()=> console.log("프로미스2"));

// 프로미스1 프로미스2
// 타임아웃1 타임아웃2

// 프로미스의 처리가 더 빠른 것을 알 수 있다.
```

#### **Promise**

- 비동기 작업을 표현하는 자바스크립트 객체
- 비동기 작업의 진행, 성공, 실패 상태를 표현한다.
- 비동기 처리의 순서를 표현할 수 있다.

new Promise(callback)을 사용하거나 fetch()같은 promise를 반환하는 비동기 API를 사용할 수 있다.

##### **Promise의 상태**

pending(진행) 상태 -> settled (성공=resolved, fulfilled 혹은 실패=rejected) 상태

#### **Promise 생성자**

- new Promise(callback)
- callback 함수는 (resolve, reject) 두 인자를 받는다.
- Promise가 성공했을 때 resolve를 호출한다.
- Promise가 실패했을 때 reject를 호출한다.

```javascript
let promise = new Promise((resolve, reject)=> {
  if(Math.random() < 0.5) {
    return reject("실패") // 0.5보다 작으면 '실패' 반환
  }
  resolve(10) // 성공 시 10을 반환
})
```

#### **Promise 메서드**

- then() 메서드에 성공했을 때 실행할 콜백 함수를 인자로 넘긴다.
- catch() 메서드에 실패했을 때 실행할 콜백 함수를 인자로 넘긴다.
- finally() 메서드는 성공/실패 여부와 상관없이 모두 실행할 콜백 함수를 인자로 넘긴다.
- then(callback1, callback2)로 callback1의 자리에 성공 시 콜백, callback2의 자리에 실패 시 콜백을 인자로 넘길 수 있다.

```javascript
promise
.then(data => {
  console.log("성공: ", data)
})
.catch(e => {
  console.log("실패: ", e)
})
.finally(()=> {
  console.log("promise 종료")
})
```

#### **Promise 메서드 체인**

- then/catch 메서드가 또 다른 promise를 리턴하여, 비동기 코드에 순서를 부여한다.
- 동일한 객체에 메서드를 연결할 수 있는 것을 **체이닝(chaining)**이라 한다.
- 함수를 호출한 주체가 함수를 끝낸 뒤 자기 자신을 리턴(return this를 생략한 상태)하도록 하여 구현한다.

```javascript
promise
.then(data => {
  return fetchUser(data)  // 프로미스를 리턴하는 함수를 반환
}) // 그 다음 then이 호출되기 전에 promise가 끝날 때까지 기다리게 된다 = 비동기 코드에 순서 부여
.then(user => {
  console.log('User : ', user)
})
.catch(e => {
  console.log('실패 : ', e)
})
```

#### **Promise.resolve, Promise.reject**

프로미스는 정적인 메서드가 존재한다. new Promise가 아니라 Promise라는 클래스 명에 바로 사용할 수 있는 정적 함수

- Promise.resolve 함수는 성공한 Promise를 바로 반환한다.
- Promise.reject 함수는 실패한 Promise를 바로 반환한다.
- 인위적으로 Promise 메서드 체인을 만들 수 있다. promise를 리턴하는 함수를 만들어서 함수를 호출할 필요없이 바로 성공, 실패 프로미스를 호출할 수 있다.
- 비동기 코드로 진행햐 하는 상황 등에 유용하게 사용할 수 있다.

```javascript
Promise
  .resolve(10)
  .then(console.log)

Promise
  .reject("Error")
  .catch(console.log)
```

#### **Promise.all**

정적인 메서드 : 모두 성공하거나 하나라도 실패할 때까지 기다린다.

- Promise.all으 Promise의 배열을 받아 모두 성공 시 각 Promise의 resolved 값을 배열로 반환한다.
- 하나의 Promise라도 실패할 시, 가장 먼저 실패한 Promise의 실패 이유를 반환한다.

```javascript
Promise.all([
  promise1,
  promise2,
  promise3
])
  .then(values => {
    console.log("모두성공 : ", values)
  })
  .catch(e => {
    console.log("하나라도 실패 : ", e)
  })
```

### **async/await**

- Promise를 활용한 비동기 코드를 간결하게 작성하는 문법
- async/await 문법으로 비동기 코드를 '동기 코드'처럼 간결하게 작성할 수 있다.
- async 함수와 await 키워드를 이용한다.
- await 키워드느 반드시 async 함수 안에서만 사용해야 한다.
- async로 선언된 함수는 반드시 Promise를 리턴한다.

#### **async 함수**

- async 함수는 function 키워드 앞에 async를 붙여 만든다.
- async 함수 내부에서 await 키워드를 사용한다.
- fetchData, fetchUser는 Promise를 리턴하는 함수이다.

```javascript
function fetchData() {
  return new Promise
}

// fetchData()
//  .then() // then에서 data를 받을 수 있다.
//  .cath()

async function asyncFunc() {
  let data = await fetchData()
  let user = await fetchUser(data)
  return user
}
```

- await 키워드는 then 메서드 체인을 연결한 것처럼 순서대로 동작한다.
- 비동기 코드에 쉽게 순서를 부여한다.

```javascript
async function asyncFunc() {
  let data1 = await fetchData1()
  let data2 = await fetchData2(data1) // promise를 리턴하게 된다면 다음 await로 가기 전에 resolve 되기를 기다린다. promise와 같다.
  let data3 = await fetchData3(data2)
  return data3
}

function promiseFunc() {
  return fetchData1()
    .then(fetchData2)
    .then(fetchData3)
}
```
