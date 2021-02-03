const student = {
    nama: 'Rizky',
    kota: 'Bogor'
}

let infoStudent = student;
infoStudent = {...student,bootcamp:"js"}; //spread operator
console.log(infoStudent);

infoStudent = {...infoStudent,totalPoin:80}; //spread operator
console.log(infoStudent);