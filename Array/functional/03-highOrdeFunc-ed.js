//High order function
let employees = ["Raiz","Alif","Fahmi","Ahmad","Dafa","Ale","Amar","Andi","Rizky"];

const passW = value => value.split("").reverse("").join("")+value.length;

let passWlist = [];
passWlist.push(passW(employees[0]));
console.log(passWlist);

//functional metdos
const passEmps = employees.map(passW);
let passEmps2 = employees.map(x => passW(x));
console.log(passEmps);
console.log(passEmps2);

function passWReg(value){
    return value.split("").reverse("").join("") +value.length;
}
console.log(passWReg());

//error
