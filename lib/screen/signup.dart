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
                          child: Image.asset('assets/images/dwm.jpg'))),
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
                      top: MediaQuery.of(context).size.height / 4,
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
                                  //textfeilds for name
                                  TextFormField(
                                    // key: _formKey,
                                    autofocus: true,
                                    textCapitalization:
                                        TextCapitalization.words,
                                    keyboardType: TextInputType.name,
                                    controller: userNameController,
                                    // cursorColor: CustomizeColors.textBlackColor,
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
                                      labelText: 'Name',
                                      labelStyle: TextStyle(
                                          color: CustomColors.titleBlue),
                                      hintStyle: TextStyle(
                                          color: CustomColors.titleBlue),
                                    ),
                                    validator: validateName,
                                  ),
                                  //textformfeild for email
                                  TextFormField(
                                    //key: _formKey,
                                    keyboardType: TextInputType.emailAddress,
                                    controller: emailController,
                                    // cursorColor: CustomizeColors.textBlackColor,
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
                                      labelText: 'Email',
                                      labelStyle: TextStyle(
                                          color: CustomColors.titleBlue),
                                      hintStyle: TextStyle(
                                          color: CustomColors.titleBlue),
                                    ),
                                    validator: (String value) {
                                      if (value.isEmpty) {
                                        return 'Please a Enter';
                                      }
                                      if (!RegExp(
                                              "^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]")
                                          .hasMatch(value)) {
                                        return 'Please a valid Email';
                                      }
                                      return null;
                                    },
                                    onSaved: (String value) {
                                      email = value;
                                    },
                                  ),

                                  //textformfeild for validations
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
                                          // Based on passwordVisible state choose the icon
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
                                      labelText: 'Password',
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
                            //raisedbutton from reusable code
                            PrimaryButton(
                              onPressed: () {
                                if (_formKey.currentState.validate()) {
                                  print("successful");
                                  return;
                                } else {
                                  print("UnSuccessfull");
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
              ),
            ),
          ],
        ));
  }

  //Validation for the password
  String validatePassword(String value) {
    Pattern pattern =
        r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$';
    RegExp regex = new RegExp(pattern);
    print(value);
    if (value.isEmpty) {
      return 'Please enter password';
    } else {
      if (!regex.hasMatch(value))
        return 'Must contain atleast 1 number,UPPERCASE\nlowercase and a special charcter';
      else
        return null;
    }
  }

  //Validation for the email
  String validateEmail(String value) {
    Pattern pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regex = new RegExp(pattern);
    if (!regex.hasMatch(value)) {
      print('Email is valid');
      return 'Enter Valid Email';
    } else {
      print('Email is correct');
      return 'Email is correct';
    }
  }

  //Validation for the name
  String validateName(String value) {
    if (value.isEmpty) {
      return 'Please enter the name';
    }
    return null;
  }
}
