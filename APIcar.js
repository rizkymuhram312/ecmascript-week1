export const listcar = (...list) =>{
    return list;
}

export const findCarByMerk=(listcar,merk) => {
    return listcar.filter(x => x.merk = merk);
}