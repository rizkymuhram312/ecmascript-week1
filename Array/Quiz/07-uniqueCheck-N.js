function isUniqueChars(value){
    let change = value.split("");
    for(i = 0;i < value.length;i++){
        let newGanti = change[i];
        if(change[i] == newGanti){
           i++;
        }
        else{
            return false;
        }  

    }
    return true;

}
console.log(isUniqueChars('abcde'));
console.log(isUniqueChars('abcdeda'));