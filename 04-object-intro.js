const products = {
    id : 1,
    name : "Laptop DELL",
    price : 1500,
    variant : {
        type : "Gamer",
        core : "i7 Core"
    }
}

const infoProduct = info => {
    return `info products : ${info.name},${info.price}`

}

console.log(infoProduct(products));

//description object dgn parameter
const {id, ...info} = products;
console.log(id);
console.log(info);

const{variant} = products;
console.log(variant);

const{variant:{core}} = products;
console.log(core);

