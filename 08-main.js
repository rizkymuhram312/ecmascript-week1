import Car,{Taxi,Angkot} from './07-car.js'

function main (){
    const hrv = new Car ("Honda",2015);
    console.log(hrv);

    const grab = new Taxi("Honda","2020","Grab");
    console.log(grab);

    console.log(grab.totalRevenue(200000,2));

    const gojek = new Taxi("Gojek");
    console.log(gojek);
    console.log(`Total Car :${Car.totalCar}`);


}

main();