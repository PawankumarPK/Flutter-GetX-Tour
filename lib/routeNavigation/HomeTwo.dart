import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeTwo extends StatelessWidget {
  const HomeTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("HomeTwo"),
      ),
      body:  Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:  [
            const Text(
              "This is home screen",
              style: TextStyle(color: Colors.deepPurpleAccent, fontSize: 20),
            ),
            const SizedBox(
              height: 8,
            ),
            MaterialButton(
              color: Colors.blue,
              child: const Text("Next Screen", style: TextStyle(fontSize: 18,color: Colors.white),),
              onPressed: (){},
            ),

            const SizedBox(
              height: 8,
            ),
            MaterialButton(
              color: Colors.blue,
              child: const Text("Back To Main", style: TextStyle(fontSize: 18,color: Colors.white),),
              onPressed: (){
               // Get.back();
                /// Send data to previous screen must use result as name
                Get.back(result: "This is from home screen");
              },
            ),
            const SizedBox(
              height: 8,
            ),
           /*  Text(
              "${Get.arguments}",
              style: const TextStyle(color: Colors.green, fontSize: 20),
            ),*/

          ],

        ),
      ),
    );
  }
}
