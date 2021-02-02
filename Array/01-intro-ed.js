//initial array

var array = new Array(3);
array[0]=3;
array[1]=2;
array[2]="CODE";

console.log(array);

//initial array dengan dynamic elemnt
array = ["code",["js","react"],"bootcamp",2021];
console.log(array);

//add new element in last index
var list = ["a","b","c","d"];
list.push("j","r");
console.log(list);

//remove elemnt
list.pop();
console.log(list);

//add element di index pertama
list.unshift("x");
console.log(list);

//remove first elemnet
list.shift();
console.log(list);

//access index tertentu
console.log(list[2]);

//looping for array
for (let i =0; i < list.length; i++){
    const element = list[i];
    console.log(element);
}

//for of
for (const key of list){
    console.log(key); //hasilnya jadi berurutan
}

//foreach //error
list.forEach(element => {
    console.log(element);
})