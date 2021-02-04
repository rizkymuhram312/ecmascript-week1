export default class student{
    static totalStd=0;
    constructor(FullName, City, Education, Grade, Type, Bootcamp, Batch, Year, SkillP){
        this.FullName = FullName;
        this.City = City;
        this.Education = Education;
        this.Grade = Grade;
        this.Type = Type;
        this.Bootcamp = Bootcamp;
        this.Batch = Batch;
        this.Year = Year;
        this.SkillP = SkillP;
        student.totalStd++;



    }
}

export class reguler extends student{
    static totalStdR = 0;
    static totalprice = 0;
    constructor(FullName, City, Education, Grade, Type, Bootcamp, Batch, Year, SkillP, NetPrice){
        super(FullName, City, Education, Grade, Type, Bootcamp, Batch, Year, SkillP);
        this.NetPrice = NetPrice;
        reguler.totalStdR++;
        reguler.totalprice += NetPrice;


    }
    
}

export class beasiswa extends student{
    static totalStdB = 0;
    static totalInten = 0;
    constructor(FullName, City, Education, Grade, Type, Bootcamp, Batch, Year, SkillP, Intenship){
        super(FullName, City, Education, Grade, Type, Bootcamp, Batch, Year, SkillP);
        this.Intenship = Intenship;
        beasiswa.totalStdB++;
        beasiswa.totalInten += Intenship;
    }

}