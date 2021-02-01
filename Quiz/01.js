function sum(n) {

    let n1 = n/1000; //3.125
    let nRatus = n%1000; //125
    let n2 = nRatus/100; //1.25
    let nPuluh = nRatus%100; //25
    let n3 = nPuluh/10; // 2.5
    let nSatu = nPuluh%10; //5
    let jumlah=0;

    jumlah = Math.floor(n1)+Math.floor(n2)+Math.floor(n3)+nSatu;
    // jumlah = 3+1+2+5=11
    return jumlah;
    
}
console.log(sum(3125))