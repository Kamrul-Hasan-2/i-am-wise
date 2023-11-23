void main() {
  Car car = Car();
  car.startEngine();
  car.drive();
  car.loadFueil();
  car.smartDisplay();
  print("----------------");
  Truck truck = Truck();
  truck.startEngine();
  truck.drive();
  truck.loadFueil();
  truck.load();

}
class Vahical{
  startEngine(){
    print("Start the Enginr");
  }
  drive(){
    print("Driving start");
  }
  loadFueil(){
    print("Load the foiel");
  }
}

class Car extends Vahical{
  smartDisplay(){
    print("Show the music");
  }
}

class Truck extends Vahical{
  load(){
    print("Load the truck");
  }
}