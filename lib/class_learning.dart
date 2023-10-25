void main(){
  Mobile m1 = Mobile(givenModel: "C12");
  m1.mob();

  Mobile m2 = Mobile(givenModel: "C15");
  m2.mob();

}

class Mobile{
  String company = "Realmi";
  late String model;

  Mobile({required String givenModel}){
    model = givenModel;
  }

  void mob(){
    print("This name is $company and model: $model");
  }

}