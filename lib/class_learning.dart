void main(){
  Mobile m1 = Mobile();
  m1.mob();
  m1.mobe();
}

class Mobile{
  String company = "Realmi";
  String model = "C12";

  String com = "I-Phone";
  String mod = "15 pro MAX";

  void mob(){
    print("This is my new phone. This name is $company and model: $model");
  }

  void mobe(){
    print("This is Rare. This name is $com and model: $mod");
  }
}