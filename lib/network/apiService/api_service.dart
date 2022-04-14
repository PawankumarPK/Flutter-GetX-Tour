import 'package:getx_tour/network/productModule/models/product_model.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

class ApiService{

  static var client = http.Client();
  static List<ProductModel> list = [];

  /*static Future<List<ProductModel>> fetchProduct() async{
    var url = "https://makeup-api.herokuapp.com/api/v1/products.json?brand=colourpop";
    var response = await client.get(Uri.parse(url));

*//*
    var response = await client.get(
      "https://makeup-api.herokuapp.com/api/v1/products.json?brand=colourpop"
    );*//*

    if(response.statusCode == 200){
      var jsonString = response.body;
      return productModelFromJson(jsonString);
    }else{
      var jsonString = response.body;
      return productModelFromJson(jsonString);
    }

  }*/

  static Future<bool> fetchProduct() async {
    var url = "https://makeup-api.herokuapp.com/api/v1/products.json?brand=colourpop";
    var response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
    //  var jsonString = response.body;
    //  productModelFromJson(jsonString);
      final result = productModelFromJson(response.body);
      list = result;
      print("======>>>>>  " + list.toString());
      return true;
    } else {
      print("Something went wrong");
      return false;
    }
  }
}