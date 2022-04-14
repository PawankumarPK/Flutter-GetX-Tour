
import 'package:get/get.dart';
import 'package:getx_tour/network/productModule/controller/product_controller.dart';
import 'package:getx_tour/stateManagement/controller/MyController.dart';

class ProductControllerBinding implements Bindings{

  @override
  void dependencies() {
    Get.lazyPut<ProductController>(() => ProductController());
  }

}