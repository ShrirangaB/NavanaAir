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
  static const trainHome = "Hotel";
  static const carHome = "Car";
  static const restHome = "Restaurants";
  static const subwayHome = "Trains";
  static const bestOffers = "Best Offers";
  static const recDestinations = "Recommended Destinations";
  static const viewAll = "View All";
  static const popPlaces = "Popular Places";
  static const rate699 = "From \$699";
  static const parisImage =
      "https://images.unsplash.com/photo-1431274172761-fca41d930114?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80";
  static const paris = "Paris";
  static const france = "France";
  static const rate399 = "From \$399";
  static const bangkokImg =
      "https://www.ytravelblog.com/wp-content/uploads/2018/01/Sightseeing-New-York-City-Sightseeing-pass.jpg";
  static const bangkok = "Bangkok";
  static const thai = "Thailand";
  static const rate499 = "From \$499";
  static const japanImg =
      "https://images.unsplash.com/photo-1526481280693-3bfa7568e0f3?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1351&q=80";
  static const tokyo = "Tokyo";
  static const japan = "Japan";
  static const btmNbHOME = "Home";
  static const btmNbSearch = "Search";
  static const btmNbRandom = "Random";
  static const btmNbProfile = "Profile";
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
