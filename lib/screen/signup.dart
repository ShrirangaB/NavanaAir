import 'package:NavanaAir/constants/constantcolors.dart';
import 'package:NavanaAir/component/customButton.dart';
import 'package:NavanaAir/constants/constantStrings.dart';
import 'package:NavanaAir/component/spaceBetweenSizedBox.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController userNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomPadding: false,
        body: Stack(
          children: [
            Positioned(
                top: 0,
                left: 0,
                child: Opacity(
                    opacity: 0.15,
                    child: Image.asset('assets/images/dwm.jpg'))),
            Positioned(
                top: MediaQuery.of(context).size.height / 4,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                  child: Text(
                    ConstantString.titleTextSignUp,
                    style: GoogleFonts.montserrat(
                      color: CustomColors.titleBlue,
                      fontSize: 38,
                    ),
                  ),
                )),
            Positioned(
                top: MediaQuery.of(context).size.height / 3,
                left: 0,
                right: 0,
                child: SingleChildScrollView(
                  //padding: const EdgeInsets.all(0),
                  child: Column(
                    children: [
                      CustomSizedBox(),
                      Padding(
                        padding: const EdgeInsets.all(25),
                        child: Column(
                          children: [
                            TextField(
                              decoration: InputDecoration(
                                //border: OutlineInputBorder(),
                                labelText: ConstantString.labelTextName,
                              ),
                            ),
                            TextField(
                              decoration: InputDecoration(
                                suffixIcon: Icon(Icons.check_sharp),
                                //border: OutlineInputBorder(),
                                labelText: ConstantString.labelTextEmail,
                              ),
                            ),
                            TextField(
                              obscureText: true,
                              decoration: InputDecoration(
                                suffixIcon: Icon(Icons.remove_red_eye_sharp),
                                //border: OutlineInputBorder(),
                                labelText: ConstantString.labelTextPwd,
                              ),
                            ),
                          ],
                        ),
                      ),
                      CustomSizedBox(),
                      PrimaryButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SignUp()));
                        },
                        title: ConstantString.buttonTextSignUp,
                      ),
                      CustomSizedBoxx(),
                      CustomSizedBoxx(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(ConstantString.textSignUp),
                          FlatCustomButton(
                            onPressed: () {},
                            title: ConstantString.loginText,
                          ),
                        ],
                      ),
                      FlatCustomButton(
                        onPressed: () {},
                        title: ConstantString.skipLoginText,
                      ),
                    ],
                  ),
                )),
          ],
        ));
  }
}
