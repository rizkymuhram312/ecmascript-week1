let employees = ["Raiz","Alif","Fahmi","Ahmad","Dafa","Ale","Amar","Andi","Rizky"];

//arrow function filter
const filterEmployee = (emps,prefix) => emps.filter(emp => emp.startsWith(prefix));

//old way

function filterEmp (emps,prefix){
    let result =[];
    for (let i =0; i < emps.length; i++){
        if(emps[i].startsWith(prefix)){
            result.push(emps[i]);
        }
    }
    return result;
}
console.log(filterEmp(employees,"A"));
console.log(filterEmployee(employees,"A"));

