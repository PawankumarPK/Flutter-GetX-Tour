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
            Get.snackbar("Snackbar Title", "Hey I'm Snackbar");
            
          },
        ),
      ),

    );
  }
}

