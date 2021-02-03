const product = [
 {
    id : 1,
    name : "Laptop DELL",
    price : 1500,
    variant : {
        type : "Gamer",
        core : "i7 Core"
    },
},
 {
    id : 2,
    name : "Laptop ASUS",
    price : 1500,
    variant : {
        type : "Gamer",
        core : "i7 Core"
    },
 },
];

const filterProductByPrice = (product,id) =>{
    return product.filter(x => x.id === id)

}
let result = filterProductByPrice(product,2);

console.log(result); // hasilnya memang kosong, dpt dilihat di debugger di local result.
