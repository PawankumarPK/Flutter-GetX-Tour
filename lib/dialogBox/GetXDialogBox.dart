import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GetXDialogBox extends StatelessWidget {
  const GetXDialogBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: MaterialButton(
          color: Colors.blue,
          child: const Text("Show Dialog",style: TextStyle(
            color: Colors.white
          ),),
          onPressed: (){
            Get.defaultDialog(
              title: "Dialog Title",
              titleStyle: TextStyle(fontSize: 25),
              middleText: "This is middle text",
              middleTextStyle: TextStyle(fontSize: 20),
              backgroundColor: Colors.orange,
              radius: 20,
              /// To customise the middle text
              content: Row(
                children: const [
                  CircularProgressIndicator(),
                  SizedBox(
                    width: 15,
                  ),
                  Expanded(child: Text("Data Loading")),
                ],
              ),

              /// Default cancel and confirm action
             /* textCancel: "Cancel",
              cancelTextColor: Colors.white,
              textConfirm: "Confirm",
              confirmTextColor: Colors.white,
              onCancel: (){},
              onConfirm: (){},
              buttonColor: Colors.green,*/

              /// Customise the default cancel and confirm
            //  cancel: const Text("Cancel",style: TextStyle(color: Colors.white),),
            //  confirm: const Text("Confirm",style: TextStyle(color: Colors.white),),
              actions: [
                MaterialButton(
                  color: Colors.green,
                  child: const Text("Action-1"),
                    onPressed: (){
                    print("------->>>>>>  " );
                    Get.back(closeOverlays: true);
                }),
                MaterialButton(
                    color: Colors.green,
                    child: const Text("Action-2"),
                    onPressed: (){
                      Get.back();
                    })
              ],
              barrierDismissible: true
            );

            
          },
        ),
      ),

    );
  }
}

