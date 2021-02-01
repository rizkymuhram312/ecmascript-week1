//global variabel
test = "js node" // test akan masuk ke variabel global
console.log(test);
//Untuk melihat varibel masuk ke global atau local menggunakan debuging merah
//function scope
function scope(){
    var top = "top";
    console.log(top);
    console.log(top);
}

scope();

const x="hello";
console.log(x);

let y = "js";
y = "hello js";
console.log(y);

y = "test";
console.log(y);

var z = "warm";
var z = "cool";
console.log(z);