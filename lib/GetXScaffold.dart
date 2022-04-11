import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tour/dialogBox/GetXDialogBox.dart';
import 'package:getx_tour/snackbar/GetXSnackBar.dart';

class GetXScaffold extends StatelessWidget {
  const GetXScaffold({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      title: "Snackbar",
      home: Scaffold(
        body: GetXDialogBox(),
      ),
    );
  }
}
