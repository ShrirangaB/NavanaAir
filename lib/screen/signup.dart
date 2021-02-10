import 'package:NavanaAir/constants/constantcolors.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset('assets/images/wm.jpg'),
            Text(
              'Create\nan account',
              style: TextStyle(color: CustomColors.sbBlue, fontSize: 25),
            )
          ],
        ),
      ),
    );
  }
}
