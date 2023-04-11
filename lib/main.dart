import 'package:e_commerce/authentication/authentication.dart';
import 'package:e_commerce/authentication/login_screen/login_screen_view.dart';
import 'package:e_commerce/home_screen/drawer.dart';
import 'package:e_commerce/home_screen/home_screen_view.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp().then((value) {
    runApp( MyApp());
  });
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: Authentication(),
    );
  }
}

