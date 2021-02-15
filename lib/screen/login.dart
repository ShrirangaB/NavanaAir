import 'package:NavanaAir/component/customButton.dart';
import 'package:NavanaAir/component/spaceBetweenSizedBox.dart';
import 'package:NavanaAir/constants/constantStrings.dart';
import 'package:NavanaAir/constants/constantcolors.dart';
import 'package:NavanaAir/screen/homeScreen/home.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
//import 'package:firebase_auth/firebase_auth.dart';
//import 'package:google_sign_in/google_sign_in.dart';
//import 'package:firebase_core/firebase_core.dart';
import 'package:NavanaAir/services/loginAuth.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _showPassword;
  String email;
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    _showPassword = false;
  }

  TextEditingController loginEmailController = TextEditingController();
  TextEditingController loginPasswordController = TextEditingController();
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
//--------------------------------textfeild for email
                                    TextFormField(
                                      keyboardType: TextInputType.emailAddress,
                                      controller: loginEmailController,
                                      style: TextStyle(
                                          color: CustomColors.titleBlue),
                                      decoration: InputDecoration(
                                        enabledBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                              color: CustomColors.titleBlue),
                                        ),
                                        suffixIcon: Icon(Icons.email),
                                        focusedBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                              color: CustomColors.titleBlue),
                                        ),
                                        labelText:
                                            ConstantString.labelTextEmail,
                                        labelStyle: TextStyle(
                                            color: CustomColors.titleBlue),
                                        hintStyle: TextStyle(
                                            color: CustomColors.titleBlue),
                                      ),
                                      // ignore: missing_return
                                      validator: (String value) {
                                        try {
                                          if (value.isEmpty) {
                                            return ConstantString.enterName;
                                          }
                                          if (!RegExp(
                                                  ConstantString.regExpression)
                                              .hasMatch(value)) {
                                            return ConstantString
                                                .enterValidEmail;
                                          }
                                          return null;
                                        } on Exception catch (e) {
                                          // TODO
                                        }
                                      },
                                      onSaved: (String value) {
                                        email = value;
                                      },
                                    ),
//-----------------------------textfeild for password
                                    TextFormField(
                                      keyboardType: TextInputType.text,
                                      controller: loginPasswordController,
                                      //This will obscure text dynamically
                                      obscureText: !_showPassword,
                                      cursorColor: Colors.black,
                                      style: TextStyle(
                                          color: CustomColors.titleBlue),
                                      decoration: InputDecoration(
                                        enabledBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                              color: CustomColors.titleBlue),
                                        ),
                                        focusedBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                              color: CustomColors.titleBlue),
                                        ),
                                        suffixIcon: IconButton(
                                          icon: Icon(
                                            // Based on showPassword state choose the icon
                                            _showPassword
                                                ? Icons.visibility
                                                : Icons.visibility_off,
                                            color: CustomColors.greyDots,
                                          ),
                                          onPressed: () {
                                            setState(() {
                                              _showPassword = !_showPassword;
                                            });
                                          },
                                        ),
                                        labelText: ConstantString.labelTextPwd,
                                        labelStyle: TextStyle(
                                            color: CustomColors.titleBlue),
                                        hintStyle: TextStyle(
                                            color: CustomColors.titleBlue),
                                      ),
                                      validator: validatePassword,
                                    ),
                                  ],
                                ),
                              ),
                              FlatCustomButton(
                                onPressed: () {},
                                title: ConstantString.forgotPwd,
                              ),
                              CustomSizedBoxx(),
                              Center(
//---------------------------login button
                                child: PrimaryButton(
                                    onPressed: () {
                                      try {
                                        if (_formKey.currentState.validate()) {
                                          print(ConstantString.successful);
                                          return;
                                        } else {
                                          print(ConstantString.unSuccessful);
                                        }
                                      } on Exception catch (e) {
                                        // TODO
                                      }
                                    },
                                    title: ConstantString.loginButtonTxt),
                              ),
                              CustomSizedBox(),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(ConstantString.logInWith),
                                  SizedBox(
                                    width: MediaQuery.of(context).size.width *
                                        0.04,
                                  ),
                                  FloatingActionButton(
                                    heroTag: 1,
                                    backgroundColor: CustomColors.fbBlue,
                                    onPressed: () {},
                                    child: Image.asset('assets/images/fb.png'),
                                  ),
                                  SizedBox(
                                    width: MediaQuery.of(context).size.width *
                                        0.04,
                                  ),
                                  FloatingActionButton(
                                    heroTag: 2,
                                    backgroundColor: CustomColors.constantWhite,
                                    onPressed: () {
                                      signInWithGoogle().whenComplete(() {
                                        // Navigator.of(context).push(
                                        //     MaterialPageRoute(
                                        //         builder: (context) {
                                        //   return RandomWidget();
                                        // }));
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    HomePage()));
                                      });
                                    },
                                    child:
                                        Image.asset('assets/images/google.png'),
                                  ),
                                ],
                              ),
                              CustomSizedBox(),
                              CustomSizedBoxx(),
                              Center(
//------------------bottom Text and a flatbutton
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(ConstantString.dontHaveAcc),
                                    MaterialButton(
                                        onPressed: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      HomePage()));
                                        },
                                        child: Text(
                                            ConstantString.buttonTextSignUp))
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

  //Validating the password
  // ignore: missing_return
  String validatePassword(String value) {
    Pattern pattern =
        r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$';
    RegExp regex = RegExp(pattern);
    print(value);
    try {
      if (value.isEmpty) {
        return ConstantString.pleaseEnterPwd;
      } else {
        if (!regex.hasMatch(value))
          return ConstantString.pwdCondition;
        else
          return null;
      }
    } on Exception catch (e) {
      // TODO
    }
  }
}
