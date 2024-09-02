---
title: "[JavaScript, Typescript] JavaScript와 TypeScript"
date: 2024-08-30 23:12:08 +09:00
categories: []
tags: [Typescript, Javascript]
---

### **JavaScript와 TypeScript**

- TypeScript는 JavaScript 기반의 언어
- JavaScript는 클라이언트 측 스크립팅 언어. TypeScript는 객체 지향 컴파일 언어
- 객체 지향 프로그래밍 패러다임은 데이터 추상화에 중심
  * 객체와 클래스라는 두 주요 개념을 기반으로 함

#### **JavaScript**

- 웹 개발에 주로 사용됨
- 웹 페이지를 대화식으로 만드는 프로그래밍 언어
- 폼 유효성 검사, 애니메이션 적용 및 이벤트 생성을 수행
- 클라이언트 측 스크립팅 언어
  * 사용자가 웹 브라우저를 열고 웹 페이지를 요청하면 해당 요청이 웹 서버로 이동함
- 멀티 스레딩, 멀티 프로세싱 기능이 없음

#### **TypeScript**

- JavaScript의 상위 집합으로 javaScript의 모든 기능이 있음
- TypeScript 컴파일러를 사용하여 ts(TypeScript) 파일을 js(JavaScript) 파일로 변환, 쉽게 통합
- 정적 유형 검사 제공
- 클래스 기반 객체를 만들 수 있음
- 클래스 기반이므로 객체 지향 프로그래밍 언어로 상속, 캡슐화 및 생성자를 지원할 수 있음

### **TypeScript 예시 코드**

- 자바스크립트

```javascript
function sum(a, b) {
  return a + b;
}
// 정적 타입을 지원하지 않으므로 어떤 타입의 반환값을 리턴해야 하는지 명확하지 않음
```

- 타입스크립트

```typescript
function sum(a: number, b: number) {
  return a + b;
}
// 정적 타입을 지원. 컴파일 단계에서 오류 포착 장점 => 코드의 가독성 높임

class Person {
  private name: string;

  constructor(name: string) {
    this.name = name;
  }

  sayHello() {
    return "Hello, " + this.name;
  }
}

const person = new Person('Lee');

console.log(person.sayHello());

// 위의 타입스크립트를 트랜스파일링하면 다음과 같이 자바스크립트 파일이 생성됨
var Person = /** @class */ (function () {
  function Person(name) {
    this.name = name;
  }
  Person.prototype.sayHello = function () {
    return "Hello, " + this.name;
  };
  return Person;
}());
var person = new Person('Lee');
console.log(person.sayHello());
```

- 정적 타입

```typescript
let foo: string = "hello" // 타입스크립트
let foo = 'hello' // 자바스크립트

// 함수 선언식 타입스크립트
function multiply1(x: number, y: number): number {
  return x * y;
}

// 함수 선언식 자바스크립트
function multiply1(x, y) {
  return x * y;
}

// 함수표현식 타입스크립트
const multiply2 = (x: number, y: number): number => x * y;

// 함수표현식 자바스크립트
const multiply2 = (x, y) => x * y;

// boolean
let isBoolean: boolean = false;
// null
let isNul: null = null;
// undefined
let isUndefined: undefined = undefined;
// array
let list: any[] = [1, 2, "3", false]
let list2: number[] = [2, 3, 4]
let list3: Array<number> = [1, 2, 3]

// tuple
let tuple : [string, number]
tuple = ["hello", 10]

// enum: 열거형은 숫자값 집합에 이름을 지정한 것
enum Color1 {Red, Green, Blue}
let c1: Color1 = Color1.Green
console.log(c1) //1

// any 타입추론을 할 수 없거나 타입 체크가 필요없는 변수에 사용
let isAny: any = 5
isAny = "string"
isAny = false

// void: 일반적으로 함수에 반환값이 없을 경우
function isUser(): void {
  console.log("hello")
}

// never: 결코 발생하지 않은 값
function infiniteLoop(): never {
  while(true){}
}
```

#### **기타**

- 타입은 소문자, 대문자 구별
- 타입 선언을 생략하면 동적으로 타입이 결정 => 타입 추론
- 타입 선언 생략 + 값 할당 x => any 타입

```typescript
var foo;
console.log(typeof foo);    // undefined

foo = null;
console.log(typeof foo);    // object

foo = {};
console.log(typeof foo);    // object

foo = 3;
console.log(typeof foo);    // number

foo = 3.14;
console.log(typeof foo);    // number

foo = "Hi there";
console.log(typeof foo);    // string

foo = true;
console.log(typeof foo);    // boolean

let foo;    // let foo: any와 동치

foo = 'Hello';
console.log(typeof foo);    // string

foo = true;
console.log(typeof foo);    // boolean
```
