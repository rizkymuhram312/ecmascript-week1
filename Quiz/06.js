function deretRam(n){
    let x = 1;
    let y = "1";
    for (let i = 0; i <= n; i++){
        x = x *2;
        y = y + "," + x;
    }
    return y;
}

console.log(deretRam(10));
