import 'package:NavanaAir/constants/constantcolors.dart';
import 'package:NavanaAir/component/customButton.dart';
import 'package:NavanaAir/constants/constantStrings.dart';
import 'package:NavanaAir/component/spaceBetweenSizedBox.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wc_form_validators/wc_form_validators.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool _showPassword;
  String _password;

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
                                  //textfeilds for input
                                  TextField(
                                    decoration: InputDecoration(
                                      labelText: ConstantString.labelTextName,
                                    ),
                                  ),
                                  TextField(
                                    decoration: InputDecoration(
                                      suffixIcon: Icon(Icons.check_sharp),
                                      labelText: ConstantString.labelTextEmail,
                                    ),
                                  ),
                                  //textformfeild for validations
                                  TextFormField(
                                    keyboardType: TextInputType.text,
                                    controller: passwordController,
                                    validator: Validators.compose([
                                      Validators.required(
                                          'Password is required'),
                                      Validators.patternString(
                                          r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$',
                                          'Invalid Password')
                                    ]),
                                    obscureText:
                                        !_showPassword, //changing obscure text dynamically
                                    decoration: InputDecoration(
                                      labelText: ConstantString.labelTextPwd,
                                      suffixIcon: IconButton(
                                        icon: Icon(
                                          // Based on showPassword state,the icon is changed
                                          _showPassword
                                              ? Icons.visibility
                                              : Icons.visibility_off,
                                        ),
                                        onPressed: () {
                                          // Update the state of showPassword
                                          setState(() {
                                            _showPassword = !_showPassword;
                                          });
                                        },
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            CustomSizedBox(),
                            //raisedbutton from reusable code
                            PrimaryButton(
                              onPressed: () {
                                //showAlertDialog(context);
                                if (emailController.text == 'test@gmail.com' &&
                                    passwordController.text == '2sd!#abc') {
                                  print('login succesfull');
                                } else {
                                  print('login fail');
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
}
