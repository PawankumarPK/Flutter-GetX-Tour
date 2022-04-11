import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Count extends StatelessWidget {
  var count = 0.obs;

  Count({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
          children: [
        Obx(() => Text(
            "Count value is $count",
            style: const TextStyle(fontSize: 25),
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        MaterialButton(
          color: Colors.blue,
          child: const Text("Increment"),
            onPressed: (){
              increment();
            })
      ]),
    );
  }

  void increment(){
    count++;
  }
}
