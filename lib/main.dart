import 'package:NavanaAir/screen/homeScreen/home.dart';
import 'package:NavanaAir/screen/login.dart';
import 'package:NavanaAir/screen/splashscreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // initialRoute: '/',
      // routes: {
      //   '/': (context) => SplashScreen(),
      // },
      debugShowCheckedModeBanner: false,
      title: 'Navana Air',
      theme: ThemeData(
        //  primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: LoginPage(),
    );
  }
}
