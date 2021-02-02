function digitSum(x){
    let xNew2 = x.toString();
   const xNew = xNew2.split('');
   let hasil1 = Array.from(xNew);
   let hasil = hasil1.reduce((a,b) => Number(a) + Number (b));
   return hasil;
}
console.log(digitSum(123451));                                                                               

   

