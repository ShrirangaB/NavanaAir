import 'package:NavanaAir/component/customButton.dart';
import 'package:NavanaAir/component/spaceBetweenSizedBox.dart';
import 'package:NavanaAir/constants/constantStrings.dart';
import 'package:NavanaAir/constants/constantcolors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          SafeArea(
            child: Stack(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height * 0.7,
                        width: MediaQuery.of(context).size.width,
                        color: CustomColors.cardGrey,
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.3,
                        width: MediaQuery.of(context).size.width,
                        color: CustomColors.titleBlue,
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: 10,
                  left: 0,
                  right: 0,
                  bottom: 0,
                  child: Padding(
                    padding: const EdgeInsets.all(25),
                    child: SizedBox(
                      height: MediaQuery.of(context).size.height * 0.9,
                      width: MediaQuery.of(context).size.width * 0.9,
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40)),
                        color: CustomColors.cardWhite,
                        elevation: 25,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(12, 0, 0, 0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.2,
                              ),
                              Text(
                                ConstantString.logInText,
                                style: GoogleFonts.montserrat(
                                  color: CustomColors.titleBlue,
                                  fontSize: 38,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8),
                                child: Column(
                                  children: [
                                    TextFormField(),
                                    TextFormField(),
                                  ],
                                ),
                              ),
                              FlatCustomButton(
                                onPressed: () {},
                                title: ConstantString.forgotPwd,
                              ),
                              CustomSizedBoxx(),
                              Center(
                                child: PrimaryButton(
                                    onPressed: () {},
                                    title: ConstantString.loginButtonTxt),
                              ),
                              CustomSizedBox(),
                              Row(
                                children: [
                                  Text(ConstantString.logInWith),
                                  SizedBox(
                                    width: MediaQuery.of(context).size.width *
                                        0.04,
                                  ),
                                  FloatingActionButton(
                                    backgroundColor: CustomColors.constantWhite,
                                    onPressed: () {},
                                    child: Image.asset('assets/images/fb.png'),
                                  ),
                                  SizedBox(
                                    width: MediaQuery.of(context).size.width *
                                        0.04,
                                  ),
                                  FloatingActionButton(
                                    backgroundColor: CustomColors.constantWhite,
                                    onPressed: () {},
                                    child:
                                        Image.asset('assets/images/google.png'),
                                  ),
                                ],
                              ),
                              CustomSizedBox(),
                              CustomSizedBoxx(),
                              Center(
                                child: Row(
                                  children: [
                                    Text(ConstantString.dontHaveAcc),
                                    FlatCustomButton(
                                        onPressed: () {},
                                        title: ConstantString.buttonTextSignUp)
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
