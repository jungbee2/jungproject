//es6문법 공부

/* var:함수형 변수
   let:영역형 변수(영역별로 다른메모리를 갖는다)
*/

var a=1;
let b=2;

function myFunction(){

      var a=3; //7번행과 전혀 다른 변수
      let b=4; //8번행과 전혀 다른 변수

      if(true){
         var a=5;
         let b=6;

         console.log(a); //5
         console.log(b); //6
      }

      console.log(a); //5
      console.log(b); //4
}

myFunction();

console.log(a); //1
console.log(b); //2