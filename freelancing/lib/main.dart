

import 'package:freelancing/screen/gigDescription.dart';
import 'package:freelancing/screen/registerscreen/registeration_screen.dart';
import 'package:flutter/material.dart';
import 'package:freelancing/screen/serviceList.dart';
import 'package:freelancing/screen/userProfile.dart';
import 'package:get/get.dart';
import 'screen/loginscreen/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ServiceList(),
    );
  }
}
