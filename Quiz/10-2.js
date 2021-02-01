function isPalindrome(k){
    var kata = k.toLowerCase();

    var currentString = kata;
    var newString = "";
    for (let i = kata.length - 1; i >= 0; i--){
        newString = newString + currentString[i];
    }

    if(kata == newString){
        console.log("Kalimat ini palindrome");
    }
    else{
        console.log("Kalimat ini bukan palindrome");
    }
}
return isPalindrome("Kasur INI Rusak")