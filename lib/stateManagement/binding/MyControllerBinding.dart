
import 'package:get/get.dart';
import 'package:getx_tour/stateManagement/controller/MyController.dart';

class MyControllerBinding implements Bindings{

  @override
  void dependencies() {
    Get.lazyPut<MyController>(() => MyController());
  }

}