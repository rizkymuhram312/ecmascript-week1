
import Car,{Taxi,Angkot} from './07-car.js'
import { listcar } from './APIcar.js';


function main (){
    const hrv = new Car ("Honda",2015);
    console.log(hrv);

    const grab = new Taxi("Honda","2020","Grab");
    console.log(grab);

    console.log(grab.totalRevenue(200000,2));

    const gojek = new Taxi("Gojek");
    const bird = new Taxi("Blue Bird");
    console.log(gojek);
    console.log(`Total Car :${Car.totalCar}`);

    const cars = listcar(hrv,grab,gojek,bird);
    console.log(cars);


}

main();