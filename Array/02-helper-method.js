//slice
var list = ["a","b","c","d"];
 //argumen pertama akan memotong atau mengambil nilai dari di index ke pertama
console.log(list.slice(0,2)); //argumen pertama akan memotong atau mengambil nilai dari di index ke pertama yaitu 0 dan argumen kedua mengambil index kedua yaitu 2
var b = list.slice(1,3);
console.log(b);

//splice
console.log(list.splice(1,3,"e"));

