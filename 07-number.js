//problem with nymber fraction
var a = 0.1 + 0.2 === 0.3;
console.log(a);

//solution 1 use math.round;
var a = (Math.round(0.1) + Math.round(0.2)) === Math.round(0.3);
console.log(a);

Math.floor(1.1) //return 1 (decreased decimal)
Math.ceil(0.9) //return 1 (increased decimal)

var x = Math.random() * 100; //float between 0-100
console.log(x);

var x = Math.round((Math.random() * 25));
console.log(x);