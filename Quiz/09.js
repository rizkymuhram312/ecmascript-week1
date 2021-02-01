let z="";
const randomPosition = (x)=> {
    for (let i = 100; i <= 200; i++){
        if(i.toString().includes(x.toString())){
            z += i+',';
        }
    }
    z = z.slice(0, -1); //Akan memotong nilai koma pada output hasil 
    return z;
}

console.log(randomPosition(6));