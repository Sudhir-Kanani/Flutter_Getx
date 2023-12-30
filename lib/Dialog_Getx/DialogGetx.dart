import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DialogGetx extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Dialog",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: CupertinoButton(
          child: Text("Show Dialog", style: TextStyle(color: Colors.white)),
          color: Colors.blue,
          onPressed: () {
            // Get.defaultDialog();.
            Get.defaultDialog(
                title: "Title",
                titleStyle: TextStyle(fontSize: 35),
                middleText: "this is middle Text",
                middleTextStyle: TextStyle(fontSize: 20),
                backgroundColor: Colors.white,
                radius: 10,

                //to customize middle text
                content: Row(
                  children: [
                    CircularProgressIndicator(),
                    SizedBox(width: 16),
                    Expanded(child: Text("Data Loading..."))
                  ],
                ),

                // cancle and conform btn
                textCancel: "Cancel",
                textConfirm: "Conform",
                onCancel: () {
                  Get.back();
                },
                onConfirm: () {},
                buttonColor: Colors.green,
                // onclick outside dismiss
                barrierDismissible: false);
          },
        ),
      ),
    );
  }
}
