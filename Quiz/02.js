function reverse(n){
    
    let angka = String(n);
    let angkareverse = "";
    for (let i = angka.length-1; i >= 0; i--) {
        angkareverse += angka[i];
}
return angkareverse;
}
console.log(reverse(78965));