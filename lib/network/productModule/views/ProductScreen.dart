import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tour/network/binding/ProductBinding.dart';
import 'package:getx_tour/network/productModule/controller/product_controller.dart';

class ProductScreen extends StatelessWidget {
  //final ProductController productController = Get.put(ProductController());
  //${Get.find<MyController>().name}
  ProductScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: ProductControllerBinding(),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Product List"),
        ),
        body: Obx(() {
          var loadingState = Get.find<ProductController>();
          if (loadingState.isLoading.value) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else {
            return ListView.builder(
                itemCount: loadingState.productList.length,

                itemBuilder: (context, int index) {
                  final items = loadingState.productList[index];
                  return Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            width: 150,
                            height: 100,
                            margin: const EdgeInsets.fromLTRB(16, 8, 8, 8),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.network(
                                items.imageLink,
                                width: 150,
                                height: 100,
                                fit: BoxFit.fill,
                                color: Colors.purple,
                                colorBlendMode: BlendMode.color,
                              ),
                            ),
                          ),
                          Flexible(
                              child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                loadingState.productList[index].name,
                                style: TextStyle(fontSize: 18),
                              ),
                              Text(
                                loadingState.productList[index].brand,
                                style:
                                    TextStyle(fontSize: 14, color: Colors.grey),
                              ),
                            ],
                          ))
                        ],
                      ),
                      Container(
                        color: Colors.grey,
                        height: 2,
                      )
                    ],
                  );
                });
          }
        }),
      ),
    );
  }
}
