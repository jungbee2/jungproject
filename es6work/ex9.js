//es6는 조금 더 언어적으로 바뀜,set, Map등도 가능(컬렉션)

let set=new Set("abcdefffghijk"); //중복문자 걸러냄

console.log(set);

//set에 추가 : add로 추가
set.add("z"); //없으니까 추가 됨
console.log(set);

console.log(set.has("d")); //포함하면 true
console.log(set.has("s")); 

console.log("길이: "+set.size); //길이

console.log(...set); //펼침연산자

set.delete("a"); //삭제
console.log(...set);

set.clear(); //전체삭제 
console.log(set.size); //0

//Map
let map=new Map();
let a={n:1};

map.set(a,"A");
map.set("2",9);
map.set("2",11);

console.log(map);

console.log(map.has("2")); //포함하면 true

map.delete("2"); //삭제

console.log(map);

map.clear(); //전체삭제
console.log(map.size); //0