function deretSatu(k){
    
    let deret = "";
    let newDeret = "";
    let n = 1;

    for(let i = 1; i <= k; i++){
        for(let j = 0;j < i; j++){
            newDeret += n;//Menambah nilai newDeret dengan N yaitu 1
        }
        deret += newDeret + ","; //Menyimpan nilai deret yang dimana hasil dari newDeret yang telah ditambahkan dan ditambah koma
        newDeret = "";
    }
    deret = deret.slice(0, -1);
    return deret;
   
    
}
console.log(deretSatu(5))