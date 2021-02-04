import student, { beasiswa, reguler } from './quiz-student.js'
import {totalStudent,totalReguler,totalBeasiswa,totalPrice, totalIntensif, totalStdBootcamp} from './quiz-API.js'

function main (){
    const full0 = new beasiswa ("Asep","Bandung","S1",3.45,"Beasiswa","NodeJS",1,2019,3,100000);
    console.log(full0);
    const full1 = new beasiswa("Ami","Bogor","S1",3.10,"Beasiswa","NodeJS",1,2019,3,100000);
    console.log(full1);
    const full2 = new beasiswa("Budi","Depok","S1",3.25,"Beasiswa","Java",2,2020,3,100000);
    console.log(full2);
    const full3 = new beasiswa("Cindy","Jakarta","D3",3.30,"Beasiswa","Java",2,2020,3,100000);
    console.log(full3);
    const full4 = new beasiswa("Dedy","Bekasi","S2",2.98,"Beasiswa","NodeJS",1,2019,4,100000);
    console.log(full4);
    const full5 = new reguler("Desta","Jakarta","S1",3.15,"Reguler","Golang",3,2021,3,5000000);
    console.log(full5);
    const full6 = new reguler("Shinta","Jakarta","S1",3.15,"Reguler","Golang",3,2021,3,5000000);
    console.log(full6);
    const full7 = new reguler("Meita","Jakarta","S1",3.00,"Reguler","Python",3,2021,3,7000000);
    console.log(full7);
    const NS = totalStdBootcamp('NodeJS',full0,full1,full2,full3,full4,full5,full6,full7);
    const GO = totalStdBootcamp('Golang',full0,full1,full2,full3,full4,full5,full6,full7);
    const PY = totalStdBootcamp('Python',full0,full1,full2,full3,full4,full5,full6,full7);
    

    console.log("Total Siswa : "+totalStudent());
    console.log("Total Beasiswa : "+totalBeasiswa());
    console.log("Total Reguler : "+totalReguler());
    console.log("Total Insentif : "+totalIntensif());
    console.log("Total NetPrice : "+totalPrice());
    console.log("Node JS : "+NS);
    console.log("Golang : "+GO);
    console.log("Python : "+PY);


}

main();