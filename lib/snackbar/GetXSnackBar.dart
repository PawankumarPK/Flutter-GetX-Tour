import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GetXSnackbar extends StatelessWidget {
  const GetXSnackbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: MaterialButton(
          color: Colors.blue,
          child: const Text("Snackbar view",style: TextStyle(
            color: Colors.white
          ),),
          onPressed: (){
            Get.snackbar("Snackbar Title", "Hey I'm Snackbar",
              snackPosition: SnackPosition.BOTTOM,
              messageText: const Text("Another Message",
                style: TextStyle(color: Colors.redAccent),
              ),
              colorText: Colors.green,
              backgroundColor: Colors.blueGrey,
              borderRadius: 30,
              margin: const EdgeInsets.all(20),
              maxWidth: 250,
              animationDuration: const Duration(milliseconds: 3000),
              backgroundGradient: const LinearGradient(colors: [Colors.blue, Colors.green])



            );
            
          },
        ),
      ),

    );
  }
}

