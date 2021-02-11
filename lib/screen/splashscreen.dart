import 'package:NavanaAir/constants/constantStrings.dart';
import 'package:NavanaAir/constants/constantcolors.dart';
import 'package:NavanaAir/screen/getStarted.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override

  //displaying the splash screen for some seconds and navigating to the next screen
  void initState() {
    super.initState();
    Future.delayed(
      Duration(seconds: 1),
      () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (BuildContext context) => Getstarted(),
            ));
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    setState(() {});
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: CustomColors.backgroundBlue,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/sblogo.png',
              height: 120,
              width: 120,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(ConstantString.splashScreenTextNavana,
                    style: GoogleFonts.sniglet(
                        color: CustomColors.splashTextWhite, fontSize: 40)),
                //fontWeight: FontWeight.bold)),
                Text(
                  ConstantString.splashScreenTextAir,
                  style: GoogleFonts.sniglet(
                      color: CustomColors.splashTextPink, fontSize: 40),
                  //fontWeight: FontWeight.bold),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
