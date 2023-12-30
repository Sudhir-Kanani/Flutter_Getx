import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SnackbarGetx extends StatelessWidget {
  const SnackbarGetx({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Getx", style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.blue,
      ),
      body: SafeArea(
        child: Center(
          child: CupertinoButton(
            child: Text("Show Snackbar"),
            color: Colors.deepPurple,
            onPressed: () {
              Get.snackbar("Snackbar title", "Snackbar message",                  // Get.snackbar
                  snackPosition: SnackPosition.BOTTOM,
                  colorText: Colors.red,
                  backgroundColor: Colors.black,
                  borderRadius: 10,
                  margin: EdgeInsets.all(10),
                  icon: Icon(
                    Icons.send,
                    color: Colors.white,
                  ),
                  mainButton: TextButton(
                      onPressed: () {
                                                                                        // retry btn click
                      },
                      child: const Text(
                        "retry",
                        style: TextStyle(color: Colors.white),
                      )), onTap: (val) {
                                                                                    // Scankbar click
              },
                  // overlayBlur: 5,
                  // overlayColor: Colors.grey
                  padding: EdgeInsets.all(10)); //  Get.snackbar
            },
          ),
        ),
      ),
    );
  }
}
