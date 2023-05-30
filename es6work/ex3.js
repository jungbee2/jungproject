//const : 상수

const PI = 3.14689;
let r=3;

let area=r*r*PI;

console.log("반지름이 %d인 원의 너비: %f ",r,area.toFixed);
console.log(area);

//PI=1.23564;
//console.log(PI);

//const도 객체선언 가능
const pp={
    "name":"홍길동",
    "addr":"서울시 강동구"
}

console.log("이름: "+pp.name);
console.log("주소: "+pp.addr);
console.log(pp);

//객체타입일 경우 멤버는 변경 가능
pp.name="이효리";
pp.addr="제주시 용담이동";

console.log("이름: "+pp.name);
console.log("주소: "+pp.addr);

/*
pp={

} :객체값 자체변경은 에러발생
*/
