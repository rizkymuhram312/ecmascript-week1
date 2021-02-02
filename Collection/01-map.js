//initial map
let ceo = new Map();
ceo.set("Facebook","Mark");
ceo.set("Google","Larry");

console.log(ceo.size);
console.log(ceo.get("Google"));

for (const [key,value] of ceo) {
    console.log(key+" founded by "+value);
}

ceo.forEach((key,value) => {
    console.log(key+" founded by "+value);
})

ceo.forEach((value,key) => {
    console.log(key+" founded by "+value);
})