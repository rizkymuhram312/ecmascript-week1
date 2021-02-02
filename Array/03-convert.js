//return index from value
let arr = [1,2,3,4,5];
console.log(arr.indexOf(3));

// convert array to string
let str = ['java','js','python','golang'];
console.log(str.join(","));
console.log(typeof str);

//convert string to array
let com = "code.id";
console.log(com.split(""));

//regular function
function passForReg(value){

}

//arrow function; kasus kata code.id => di,=.edoc
const passW = value => {value.split("").reverse("").join("")+value.length;

}
console.log(passW("code.id"));