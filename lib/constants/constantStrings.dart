import 'package:flutter/material.dart';

class ConstantString {
  static const splashScreenTextNavana = "navana";
  static const splashScreenTextAir = "air";
  static const buttonTextGetStarted = "START BOOKING";
  static const titleTextSignUp = "Create\nan account";
  static const buttonTextSignUp = "SIGN UP";
  static const titleTextSignUp2 = "an account";
  static const textSignUp = "Already have an account?";
  static const loginText = "Sign In";
  static const skipLoginText = "Skip for Now";
  static const labelTextName = "Name";
  static const labelTextEmail = "Email";
  static const labelTextPwd = "Password";
  static const validEmail = "valid Email";
  static const validname = "Please enter the name";
  static const successful = "successful";
  static const unSuccessful = "UnSuccessful";
  static const pwdCondition =
      "Must contain atleast 1 number,UPPERCASE\nlowercase and a special charcter";
  static const pleaseEnterPwd = "Please enter password";
  static const regExpression = "^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]";
  static const enterName = "please enter name";
  static const enterValidEmail = "Please enter the Email";
  static const opacImage = "assets/images/dwm.jpg";
  static const logInText = "Log In";
  static const logInWith = "Log in with";
  static const forgotPwd = "Forgot Password?";
  static const loginButtonTxt = "Log In";
  static const dontHaveAcc = "Don't have an account?";
  static const homeTitle = "Home";
  static const flightHome = "Flight";
  static const trainHome = "Train";
  static const carHome = "Car";
  static const restHome = "Restaurants";
  static const bestOffers = "Best Offers";
  static const recDestinations = "Recommended Destinations";
  static const viewAll = "View All";
}

//adding  images in a list

List imgList = [
  "assets/images/image1.jpg",
  "assets/images/image2.jpg",
  "assets/images/image3.jpg",
];

//  //Validating the password
//   String validatePassword(String value) {
//     Pattern pattern =
//         r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$';
//     RegExp regex = RegExp(pattern);
//     print(value);
//     try {
//       if (value.isEmpty) {
//         return ConstantString.pleaseEnterPwd;
//       } else {
//         if (!regex.hasMatch(value))
//           return ConstantString.pwdCondition;
//         else
//           return null;
//       }
//     } on Exception catch (e) {
//       // TODO
//     }
//   }

//   //Validating the Name
//   String validateName(String value) {
//     if (value.isEmpty) {
//       return ConstantString.validname;
//     }
//     return null;
//   }

// //Validating the email
// String validateEmail(String value) {
//   Pattern pattern =
//       r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
//   RegExp regex = RegExp(pattern);
//   try {
//     if (!regex.hasMatch(value)) {
//       print('Email is valid');
//       return 'Enter Valid Email';
//     } else {
//       print(ConstantString.validEmail);
//       return ConstantString.validEmail;
//     }
//   } on Exception catch (e) {
//       // TODO
//   }
// }
