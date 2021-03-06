void main(List<String> args) {
  
  Car myCar = new Car.withData("2000", "Honda", "Civic", "ASD-123");
  
  print(myCar.getCarData());
}

class Car{

  // variables or fields in the class Car
  var yearBuilt;
  var brand;
  var model;
  var plateNum;
  var engineStatus;

  // Car with empty constructor
  Car(){

  }

  Car.withData(yearBuilt, brand, model, plateNum){
    this.yearBuilt = yearBuilt;
    this.brand = brand;
    this.model = model;
    this.plateNum = plateNum;
    engineStatus = "off";
  }

  void setYearBuilt(var yearBuilt){
    this.yearBuilt = yearBuilt;
  }

  void setBrand(var brand){
    this.brand = brand;
  }

  void setModel(){
    this.model = model;
  }
  
  void setPlateNum(){
    this.plateNum  = plateNum;
  }

  getYearBuilt(){
    return yearBuilt;
  }

  getBrand(){
    return brand;
  }

  getModel(){
    return model;
  }
  
  getPlateNum(){
    return plateNum;
  }

  getEngineStatus(){
    return engineStatus;
  }

  void turnEngineOn(){
    
    if(engineStatus == "off")
    {
      engineStatus == "on";
      print("Car is ready");
    }
    else{
      print("Car is already on");
    }
  }

  void turnEngineOff(){

    if(engineStatus == "on")
    {
      engineStatus == "off";
      print("Car engine is off");
    }
    else{
      print("Car engine is already off");
    }
  }

  getCarData(){
    return "$yearBuilt $brand $model $plateNum";
  }
}