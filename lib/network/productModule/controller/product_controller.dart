import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tour/network/apiService/api_service.dart';
import 'package:getx_tour/network/productModule/models/product_model.dart';

class ProductController extends GetxController{

  var isLoading = true.obs;
 // var productList = <ProductModel>[].obs;
  List<ProductModel> productList= <ProductModel>[].obs;


  @override
  void onInit() {
    fetchProduct();
    super.onInit();
  }

  void fetchProduct()async {
    try{
      isLoading(true);
      var product = await ApiService.fetchProduct();
      if(product != null){
        productList.assignAll(ApiService.list);
      }
    }finally{
      isLoading(false);
    }

  }
}