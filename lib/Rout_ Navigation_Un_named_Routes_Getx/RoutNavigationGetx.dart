import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_getx/Rout_%20Navigation_Un_named_Routes_Getx/Home.dart';
import 'package:get/get.dart';

class RoutNavigationGetx extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Rout Navigation",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: CupertinoButton(
          child: Text("Go to Home"),
          color: Colors.blue,
          onPressed: () async {
            Get.to(
              Home(),
              transition: Transition.zoom,
              // duration: Duration(milliseconds: 2000),
              // curve: Curves.bounceInOut
            );

            // Go to home screen but no option to previous screen -  Replace screen
              //Get.off(Home());

            // Go to home screen and cancel all previous screen
            //Get.offAll(Home());

            // Go to home screen with some data
            // Get.to(Home(),arguments : "Data");


            // Go to home screen and receive data from home screen
            // var data = await Get.to(Home());
            // print("receive data is $data");

          },
        ),
      ),
    );
  }
}
