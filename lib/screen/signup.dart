import 'package:NavanaAir/constants/constantcolors.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Positioned(
            top: 0,
            left: 0,
            child: Opacity(
                opacity: 0.40, child: Image.asset('assets/images/dwm.jpg'))),
        Positioned(
            top: MediaQuery.of(context).size.height / 4,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
              child: Text(
                'Create\nan account',
                style: GoogleFonts.montserrat(
                  color: CustomColors.titleBlue,
                  fontSize: 38,
                ),
              ),
            )),
        Positioned(
            child: Column(
          children: [
            TextField(),
            TextField(),
            TextField(),
            //FlatCustomButton(onPressed: () {}, title: 'login')
          ],
        )),
      ],
    ));
  }
}
