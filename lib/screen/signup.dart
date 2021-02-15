import 'package:NavanaAir/constants/constantcolors.dart';
import 'package:NavanaAir/component/customButton.dart';
import 'package:NavanaAir/constants/constantStrings.dart';
import 'package:NavanaAir/component/spaceBetweenSizedBox.dart';
import 'package:NavanaAir/screen/login.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'homeScreen/home.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool _showPassword;
  String email;
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    _showPassword = false;
  }

  TextEditingController userNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomPadding: false,
        body: ListView(
          children: [
            //setting the container height and width
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              //stack for positioning the widgets
              child: Stack(
                children: [
                  Positioned(
                      top: 0,
                      left: 0,
                      child: Opacity(
                          opacity: 0.25,
                          child: Image.asset(ConstantString.opacImage))),
                  Positioned(
                      top: MediaQuery.of(context).size.height / 5,
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
                      top: MediaQuery.of(context).size.height / 3.5,
                      left: 0,
                      right: 0,
                      child: Form(
                        key: _formKey,
                        child: Column(
                          children: [
                            CustomSizedBox(),
                            Padding(
                              padding: const EdgeInsets.all(25),
                              child: Column(
                                children: [
                                  //---------------textfeilds for name
                                  TextFormField(
                                    autofocus: true,
                                    textCapitalization:
                                        TextCapitalization.words,
                                    keyboardType: TextInputType.name,
                                    controller: userNameController,
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
                                      labelText: ConstantString.labelTextName,
                                      labelStyle: TextStyle(
                                          color: CustomColors.titleBlue),
                                      hintStyle: TextStyle(
                                          color: CustomColors.titleBlue),
                                    ),
                                    validator: validateName,
                                  ),
                                  //------------------------textformfeild for email
                                  TextFormField(
                                    keyboardType: TextInputType.emailAddress,
                                    controller: emailController,
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
                                      labelText: ConstantString.labelTextEmail,
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
                                          return ConstantString.enterValidEmail;
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

                                  //-----------------textformfeild for password Input
                                  TextFormField(
                                    keyboardType: TextInputType.text,
                                    controller: passwordController,
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
                            CustomSizedBox(),
                            //---------------raisedbutton from reusable component
                            PrimaryButton(
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
                              title: ConstantString.buttonTextSignUp,
                            ),
                            CustomSizedBoxx(),
                            CustomSizedBoxx(),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(ConstantString.textSignUp),
                                //--------------flatbutton for log in
                                MaterialButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => LoginPage()));
                                  },
                                  child: Text(ConstantString.loginText),
                                ),
                              ],
                            ),
                            //--------------flatbutton for skip
                            FlatCustomButton(
                              onPressed: () {},
                              title: ConstantString.skipLoginText,
                            ),
                          ],
                        ),
                      )),
                ],
              ),
            ),
          ],
        ));
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

  //Validating the Name
  String validateName(String value) {
    if (value.isEmpty) {
      return ConstantString.validname;
    }
    return null;
  }
}

//Validating the email
// String validateEmail(String value) {
//   Pattern pattern =
//       r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
//   RegExp regex = RegExp(pattern);
//   if (!regex.hasMatch(value)) {
//     print('Email is valid');
//     return 'Enter Valid Email';
//   } else {
//     print(ConstantString.validEmail);
//     return ConstantString.validEmail;
//   }
// }
