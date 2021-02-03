//kasus sum
const sum = (a,b) => {
    return a+b;
}

console.log(sum(1,2));

const sumRest=(...value)=>{
    let sum = 0;
    value.forEach(element =>{
        sum+= element; //sum = sum+element
    });
    return sum;
}

console.log(sumRest(1,2,3,4,5));

const firstName = 'code';
const lastName = 'id';
const gelar = 'Sarjana';

const greet = (...names)=>{ //rest parameter = titik 3 menunjukan inputan paramater, digunkan untuk membuat lebih dari dua paramater
    return names.join(" ");
}
console.log(greet(firstName,lastName,gelar));
