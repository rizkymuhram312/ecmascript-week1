function howManyFrog(x,y,z){
    
    let lompat = x;
    let jumLompat = 0;

    while (lompat < z) { //lakukan hitungan lompatan sampai kondisi z atau posisi akhir terpenuhi
        lompat = lompat + y; 
        jumLompat++; //menghitung jumlah lompatan
        
    }
    return jumLompat;
    
}

console.log(howManyFrog(10,30,120));