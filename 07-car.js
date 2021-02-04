export default class Car{
    static totalCar=0;
    constructor(merk, tahun){
        this.merk = merk;
        this.tahun = tahun;
        Car.totalCar++;
    }
    sayHI(say){
        return "car"+say;
    }
}

export class Taxi extends Car{
    constructor(merk,tahun,brand){
        super(merk,tahun); //=super.merk = merk, super.tahun = tahun
        this.brand = brand;
    }
    Taxi(brand){
    this.brand =brand;
    }

    totalRevenue(rate,km){
        return rate * km;
    }

    info(){
        return console.log(this);
    }

    sayHI(){
        super.sayHi("TEST");
    }
}

export class Angkot extends Car{
    constructor(rute,merk,tahun){
        super(merk,tahun);
        this.rute = rute;
    }
    seat(count){
        return count;
    }
}


