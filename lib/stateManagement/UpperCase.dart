import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tour/stateManagement/Student.dart';

class UpperCase extends StatelessWidget {

  //var student = Student();

  ///Making class as observable
  final student = Student(name: "Tom",age: 25).obs;

  UpperCase({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
          children: [
        Obx(() => Text(
            "Name is ${student.value.name}",
            style: const TextStyle(fontSize: 25),
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        MaterialButton(
          color: Colors.blue,
          child: const Text("UpperCase"),
            onPressed: (){
              changeToUppercase();
            })
      ]),
    );
  }

  void changeToUppercase(){
    /// If entire class is observable
    student.update((student) {
      student?.name = student.name.toUpperCase();
    });


  }
}
