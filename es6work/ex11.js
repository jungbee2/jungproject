//배열연습 map

var numbers = [1,2,3,4,5];

var processed = numbers.map(function(num){
    return num*num;
});

console.log(processed); //1,4,9,16,25

var colors=['red','orange','blue','pink','gray'];

colors.map((color,index)=>{
    console.log(color,index) // red 0, orange 1, blue 2, pink 3 , gray 4
})