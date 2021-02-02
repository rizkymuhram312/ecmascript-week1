function isPermutation(x,y){
    if(x.length === y.length ){ //bandingankan panjang data, jika bkn maka akan langsung false
        let satu = x.split("").sort().join("");
        let dua = y.split("").sort().join(""); 

        return satu === dua; 
    }
    else{
        return false;
    }
}

console.log(isPermutation("aab","aba"));
console.log(isPermutation("aab","abac"));
console.log(isPermutation("aab","abc"));