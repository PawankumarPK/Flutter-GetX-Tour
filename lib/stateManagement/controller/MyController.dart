 import 'package:get/get.dart';
import 'package:getx_tour/stateManagement/Student.dart';

class MyController extends GetxController{

  //var student = Student(name:"Tom",age: 25).obs;
  var name = "Tom".obs;

  void changeToUppercase(){
    /// If entire class is observable
   /* student.update((student) {
      student?.name = student.name.toUpperCase();
    });*/
    name.value = name.value.toUpperCase();
   // print("------->>>>>" + name.toString());

    //update(['txtCount']);
  }

  @override
  void onInit(){
    print("=====>>>  Init Called");
    super.onInit();
  }

  @override
  void onClose(){
    print("=====>>>  Init Called");
    super.onClose();
  }
}