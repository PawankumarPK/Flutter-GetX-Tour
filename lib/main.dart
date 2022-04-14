import 'package:flutter/material.dart';
import 'package:getx_tour/GetXScaffold.dart';
import 'package:getx_tour/network/productModule/views/ProductScreen.dart';
import 'package:getx_tour/snackbar/GetXSnackBar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:  ProductScreen(),
    );
  }
}
