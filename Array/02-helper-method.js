//slice
var list = ["a","b","c","d"];
 //argumen pertama akan memotong atau mengambil nilai dari di index ke pertama
console.log(list.slice(0,2)); //argumen pertama akan memotong atau mengambil nilai dari di index ke pertama yaitu 0 dan argumen kedua mengambil index kedua yaitu 2
var b = list.slice(1,3);
console.log(b);

//splice = untuk mengganti index pertama dengan elemnt tertentu
console.log(list.splice(1,3,"e","f"));

//copy array, memiliki reference yang sama
var list1 = list;
console.log(list);
//jika list1 diubah maka variabel sourcenya ikut berubah
list1.splice(2,1,"z");
console.log(list);

//alternatif copy array
var list2 = Array.from(list); // taruh diatas jika tidak ingin variabel source nya berubah
console.log(list2)

//concat array
var listx = [1,2,3];
var listy = [4,5,6];
var listz = listx.concat(listy);
console.log(listz);

