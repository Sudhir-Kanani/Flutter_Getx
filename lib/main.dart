import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'BottomSheet_DynamicTheme_Getx/BottomSheetGetx.dart';
import 'Dialog_Getx/DialogGetx.dart';
import 'Rout_ Navigation_Un_named_Routes_Getx/RoutNavigationGetx.dart';
import 'Snackbar_Getx/SnackbarGetx.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      // user Get-MaterialApp widget
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: RoutNavigationGetx(),
    );
  }
}
