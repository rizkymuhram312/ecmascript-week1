function replaceSpace(value){
let ganti = value.split("");
for(i=0;i < value.length; i++){
    if(ganti[i] == " "){
        ganti[i] = "%20";
        //return ganti;
    }
}
return ganti.join("");
}

console.log(replaceSpace("mr code id boot camp  "));