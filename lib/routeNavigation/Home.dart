import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tour/routeNavigation/HomeTwo.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: MaterialButton(
          color: Colors.blue,
          onPressed: () async {
           /* Get.to(const HomeTwo(),
              /// To make full screen dialog
              fullscreenDialog: true,

              /// To provide animation
              transition: Transition.zoom,
              duration: const Duration(milliseconds: 500),

              /// Curve Animation
              curve: Curves.bounceOut,
            );*/

            /// Go to homeTwo screen but no option to return to previous screen
            //Get.off(const HomeTwo());

            /// Go to homeTwo screen and cancel all  previous screen/routes
            //Get.offAll(const HomeTwo());

            /// Go to next screen with some data
            //Get.to(HomeTwo(),arguments: "Data from Home Page");

            /// Go to next screen and receive data sent from home screen
            var data = await Get.to(const HomeTwo());
            print("The received data is $data");


          },
          child: const Text("Go To Home",style: TextStyle(
          color: Colors.white,

    )
        ),
    ),
      ));
  }
}
