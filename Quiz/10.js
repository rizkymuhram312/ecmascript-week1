function isPalindrome(s){
    return s.toLowerCase() === s.toLowerCase().split("").reverse();
}
console.log(isPalindrome("Kasur INI Rusak"));