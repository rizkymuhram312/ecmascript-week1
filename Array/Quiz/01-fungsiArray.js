let fruits = ["Jeruk","Mangga","Jambu","Durian","Rambutan"];
let sayur = ["Kangkung","Bayam","Tomat","Bawang","Bayam"];
let fruits2 = Array.from(fruits);
let sayur2 = Array.from(sayur);

//a.push
fruits.push("Anggur","Banana","Sirsak");
console.log(fruits);

//b.pop
fruits.pop();
console.log(fruits);

//c.splice jambu
fruits.splice(2,1);
console.log(fruits);

//d.splice banyak
fruits.splice(2,3);
console.log(fruits);

//e.splice-replace
fruits.splice(2,1,"Rambutan","Bengkuang");
fruits.push("Banana");
console.log(fruits);

//f.splice-replace banana
fruits.splice(4,4,"Nangka");
console.log(fruits);

//g.concat
let fruitSayur = fruits2.concat(sayur);
console.log(fruitSayur);

//h.reverse concat
let reverseFS = fruitSayur.reverse();
console.log(reverseFS);

//i.fungsi 3 parameter
function switchKata (kata,x,y) {
    let fruitSayur2 = Array.from(fruitSayur);
    let reverseFS2 = fruitSayur2.reverse();
    xNew = reverseFS2.indexOf(x);
    yNew = reverseFS2.indexOf(y);

    
    //let FSnew = reverseFS2.splice(xNew,yNew,x,y);
   reverseFS2[xNew] = reverseFS2[yNew];
   reverseFS2[yNew] = reverseFS2[xNew];
   return reverseFS2
    
}
console.log(switchKata("vege","Jeruk","Tomat"));

