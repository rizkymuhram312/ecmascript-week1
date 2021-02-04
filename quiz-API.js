import student, { beasiswa, reguler } from './quiz-student.js'

export const totalStudent = () => {
    return student.totalStd;
}

export const totalReguler = () =>{
    return reguler.totalStdR;
}

export const totalBeasiswa = () =>{
    return beasiswa.totalStdB;
}

export const totalPrice = () =>{
    return reguler.totalprice;
}

export const totalIntensif = () =>{
    return beasiswa.totalInten;
}

export const totalStdBootcamp = (bootcamp,...list) =>
{
    let count = 0;

    list.map(element => 
        {
            if (element.Bootcamp === bootcamp) { //Bootcamp variabel diambil dari atribut elemnt yang dipanggil
                count++;
            }
        })
        return count;
}

