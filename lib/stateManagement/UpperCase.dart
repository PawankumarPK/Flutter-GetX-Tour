import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tour/stateManagement/Student.dart';
import 'package:getx_tour/stateManagement/controller/MyController.dart';

class UpperCase extends StatelessWidget {
  //var student = Student();

  ///Making class as observable
  //final student = Student(name: "Tom",age: 25).obs;

  /// Creating instance of controller
  //MyController myController = Get.put(MyController());

  UpperCase({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Obx(() =>
            Text(
              "Name is ${Get.find<MyController>().name}",
              style: const TextStyle(fontSize: 25),
            ),
        ),

        /* GetX<MyController>(
              init: MyController(),
                builder: (controller) {
              return Text(
                "Name is ${controller.student.value.name}",
                style: const TextStyle(fontSize: 25),
              );
            }),*/
        const SizedBox(
          height: 16,
        ),
        /* Text(
          "Name is ${Get.find<MyController>().name}",
          style: const TextStyle(fontSize: 25),
        ),*/
        const SizedBox(
          height: 16,
        ),
        MaterialButton(
            color: Colors.blue,
            child: const Text("UpperCase"),
            onPressed: () {
              //myController.changeToUppercase();
              Get.find<MyController>().changeToUppercase();
            })
      ]),
    );
  }

/*void changeToUppercase(){
    /// If entire class is observable
    student.update((student) {
      student?.name = student.name.toUpperCase();
    });


  }*/
}
