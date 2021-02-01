var s = "code".charAt(2);
console.log(s);

var s = "codeid".substr(2,2); //mengambil nilai array string dari element ke2 - ke3
console.log(s);

var s = "codeid".substr(2,3); //mengambil nilai array string dari element ke2 - ke3
console.log(s);

var s = "codeid".substr(2,4); //mengambil nilai array string dari element ke2 - ke3
console.log(s);

var s = "code".substr(2,4);
console.log(s);

//compare ad & b
var a = "add";
var b = "b";
console.log(a < b);

var a = "add";
var b = "ab";
console.log(a < b);

var a = "adcg";
var b = "ab";
console.log(a < b);

console.log("code ecma".indexOf("code"));//return 0
console.log("code ecma".indexOf("ecma"));//return 5

//decomposii -> diubah menjadi array
var s = "java , js, python";
console.log(s.split(","));

var g = "codeecma";
console.log(g.split(""));

var s = "hello world".replace("world", "js");
console.log(s);
