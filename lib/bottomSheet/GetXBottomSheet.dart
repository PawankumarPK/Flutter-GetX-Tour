import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GetXBottomSheet extends StatelessWidget {
  const GetXBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: MaterialButton(
          color: Colors.blue,
          child: const Text("Bottom Sheet",style: TextStyle(
            color: Colors.white
          ),),
          onPressed: (){
           Get.bottomSheet(
             Container(
               child: Wrap(
                 children: [
                   ListTile(
                     leading: Icon(Icons.wb_sunny_outlined),
                     title: Text("Light Theme"),
                     onTap: ()=> {
                       Get.changeTheme(ThemeData.light())
                     },
                   ),
                   ListTile(
                     leading: Icon(Icons.wb_sunny),
                     title: Text("Dark Theme"),
                     onTap: ()=> {
                       Get.changeTheme(ThemeData.dark())
                     },
                   )
                 ],
               ),
             ),
             barrierColor: Colors.greenAccent.shade100,
             backgroundColor: Colors.deepPurpleAccent.shade100,
             isDismissible: true,

             shape: const RoundedRectangleBorder(
               side: BorderSide(
                 color: Colors.white,
                 style: BorderStyle.solid,
                 width: 2.0
               ),
             ),
           //  enableDrag: false

           );

            
          },
        ),
      ),

    );
  }
}

