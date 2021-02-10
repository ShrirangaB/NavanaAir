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
  void initState() {
    super.initState();
    Future.delayed(
      Duration(seconds: 3),
      () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (BuildContext context) => CustomIndicator(),
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
        color: CustomColors.sbBlue,
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
                Text('navana',
                    style: GoogleFonts.sniglet(
                        color: CustomColors.sbWhite, fontSize: 40)),
                //fontWeight: FontWeight.bold)),
                Text(
                  ' air',
                  style: GoogleFonts.sniglet(
                      color: CustomColors.sbPink, fontSize: 40),
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
