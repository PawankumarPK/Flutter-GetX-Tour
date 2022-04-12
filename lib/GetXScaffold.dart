import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tour/bottomSheet/GetXBottomSheet.dart';
import 'package:getx_tour/dialogBox/GetXDialogBox.dart';
import 'package:getx_tour/routeNavigation/Home.dart';
import 'package:getx_tour/snackbar/GetXSnackBar.dart';
import 'package:getx_tour/stateManagement/Count.dart';
import 'package:getx_tour/stateManagement/UpperCase.dart';
import 'package:getx_tour/stateManagement/binding/MyControllerBinding.dart';
import 'package:getx_tour/stateManagement/controller/MyController.dart';

class GetXScaffold extends StatelessWidget {
  const GetXScaffold({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
      initialBinding: MyControllerBinding(),
      title: "Snackbar",
      home: Scaffold(
        body: UpperCase(),
      ),
    );
  }
}
