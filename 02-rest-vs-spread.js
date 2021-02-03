// spread operator
const x =[1,2,3];
const y =['a','b','c'];
const z =[...x,...y,45,6,7];
console.log(z);

//rest parameter
const {a, ...rest} = {a:1, b:2, c:3};
console.log(a);
console.log(rest);

//spread operator
const k = {a:1, b:2, c:3};
const spread = {a:1,...k};
console.log(spread);