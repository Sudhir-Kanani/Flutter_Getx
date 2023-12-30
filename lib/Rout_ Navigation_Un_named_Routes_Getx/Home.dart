import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.white),
        title: Text(
          "Rout Navigation",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            CupertinoButton(
              child: Text("Next Screen"),
              color: Colors.blue,
              onPressed: () {},
            ),
            SizedBox(
                height: 50,
                child:
                    Text("${Get.arguments}", // get data send by previous screen
                        style: TextStyle(color: Colors.green, fontSize: 20))),
            CupertinoButton(
              child: Text("Back to main"),
              color: Colors.blue,
              onPressed: () {
                Get.back();

                //send data to previous screen
                // Get.back(result: "back data");
              },
            ),
          ],
        ),
      ),
    );
  }
}
