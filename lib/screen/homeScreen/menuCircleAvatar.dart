import 'package:flutter/material.dart';

import '../../constants/constantStrings.dart';
import '../../constants/constantcolors.dart';

class MenuCircles extends StatefulWidget {
  @override
  _MenuCirclesState createState() => _MenuCirclesState();
}

class _MenuCirclesState extends State<MenuCircles> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              child: Column(
                children: [
                  InkWell(
                    onTap: () {},
                    child: Container(
                      height: 75,
                      width: 75,
                      decoration: BoxDecoration(
                          color: CustomColors.menuRed,
                          shape: BoxShape.circle,
                          boxShadow: [
                            // BoxShadow(
                            //   color: Colors.grey,
                            //   blurRadius: 15.0,
                            //   spreadRadius: 3.0,
                            //   offset: Offset(0, 10),
                            // ),
                          ]),
                      child: Icon(Icons.airplanemode_active,
                          color: CustomColors.constantWhite),
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(ConstantString.flightHome),
                ],
              ),
            ),
            SizedBox(width: 15),
            Column(
              children: [
                Container(
                  height: 75,
                  width: 75,
                  decoration: BoxDecoration(
                      color: CustomColors.menuGreen,
                      shape: BoxShape.circle,
                      boxShadow: [
                        // BoxShadow(
                        //   color: Colors.grey,
                        //   blurRadius: 15.0,
                        //   spreadRadius: 5.0,
                        //   offset: Offset(0, 10),
                        // ),
                      ]),
                  child: Icon(Icons.house_siding,
                      color: CustomColors.constantWhite),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(ConstantString.trainHome),
              ],
            ),
            SizedBox(width: 15),
            Column(
              children: [
                Container(
                  height: 75,
                  width: 75,
                  decoration: BoxDecoration(
                      color: CustomColors.menuIndigo,
                      shape: BoxShape.circle,
                      boxShadow: [
                        // BoxShadow(
                        //   color: Colors.grey,
                        //   blurRadius: 15.0,
                        //   spreadRadius: 5.0,
                        //   offset: Offset(0, 10),
                        // ),
                      ]),
                  child:
                      Icon(Icons.car_rental, color: CustomColors.constantWhite),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(ConstantString.carHome),
              ],
            ),
            SizedBox(width: 15),
            Column(
              children: [
                Container(
                  height: 75,
                  width: 75,
                  decoration: BoxDecoration(
                      color: CustomColors.menuBlue,
                      shape: BoxShape.circle,
                      boxShadow: [
                        // BoxShadow(
                        //   color: Colors.grey,
                        //   blurRadius: 15.0,
                        //   spreadRadius: 5.0,
                        //   offset: Offset(0, 10),
                        // ),
                      ]),
                  child:
                      Icon(Icons.restaurant, color: CustomColors.constantWhite),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(ConstantString.restHome),
              ],
            ),
            SizedBox(width: 15),
            Column(
              children: [
                Container(
                  height: 75,
                  width: 75,
                  decoration: BoxDecoration(
                      color: CustomColors.menuGreeny,
                      shape: BoxShape.circle,
                      boxShadow: [
                        // BoxShadow(
                        //   color: Colors.grey,
                        //   blurRadius: 15.0,
                        //   spreadRadius: 5.0,
                        //   offset: Offset(0, 10),
                        // ),
                      ]),
                  child: Icon(Icons.subway_outlined,
                      color: CustomColors.constantWhite),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(ConstantString.subwayHome),
              ],
            ),
            SizedBox(width: 15),
          ],
        ),
      ),
    );
  }
}
