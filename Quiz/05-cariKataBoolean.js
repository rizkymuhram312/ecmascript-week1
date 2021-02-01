function searchWord(word, value){
    for (let i = 0; i < word.length; i++){
        if (word[i].toLowerCase() === value){
            return true;
            
        } 
    }
    return false;
}

console.log(searchWord("aku suka JS", "j"));
console.log(searchWord("aku suka JS", "z"));

