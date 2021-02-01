function WhatVar(value){
    if(typeof value === "number"){
        return "Variabel ini Number";
    }else if(typeof value === "string"){
        return "Variabel ini String";
    }
    else if(typeof value === "boolean"){
        return "Variabel ini boolean";
    }
    else if(typeof value === "object"){
        return "Variabel ini Object";
    }
    else if(typeof value === "function"){
        return "Variabel ini Function";
    }
    else{
        return "endefined";
    }
}

console.log(WhatVar("45"));
console.log(WhatVar(true));
console.log(WhatVar(21));