
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomSheetGetx extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      centerTitle: true,
      title: Text("Bottom Sheet",style: TextStyle(color: Colors.white)),
      backgroundColor: Colors.blue,
    ),
    body: Center(
      child: CupertinoButton(
        child: Text("Show Bottom Sheet",style: TextStyle(color: Colors.white)),
        color: Colors.blue,
        onPressed: (){
          Get.bottomSheet(
            Container(
              child: Wrap(
                children: [
                  ListTile(
                    leading: Icon(Icons.wb_sunny_outlined),
                    title: Text("Light Theme"),
                    onTap: (){
                      //change-Theme
                      Get.changeTheme(ThemeData.light());
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.wb_sunny),
                    title: Text("Dark Theme"),
                    onTap: (){
                      //change-Theme
                      Get.changeTheme(ThemeData.dark());
                    },
                  )
                ],
              ),
            ),
            backgroundColor: Colors.white,
            isDismissible: true,
            enableDrag: true
          );
        },
        ),
    ),
  );
  }
}