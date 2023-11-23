void main(){
  Car car = Car();
  car.startEngine();
  car.drive();
  print("----------------");
  FlyingCar flyingCar = FlyingCar();
  flyingCar.startEngine();
  flyingCar.drive();
  print("--------------");
  SelfDrivingCar selfDrivingCar = SelfDrivingCar("Dhaka");
  selfDrivingCar.startEngine();
  selfDrivingCar.drive();
}

class Car{
  void startEngine(){
    print("Enginee Start");
  }
  void drive(){
    print("Drive the Road");
  }
}

class FlyingCar extends Car{
  @override
  void drive(){
    print("Driving the sky");
  }
}

class SelfDrivingCar extends Car{
  late String destination;
  SelfDrivingCar(String userDestination){
    destination = userDestination;
  }
  @override
  void drive(){
    super.drive();
    print("Go to Destination $destination");
  }
}
