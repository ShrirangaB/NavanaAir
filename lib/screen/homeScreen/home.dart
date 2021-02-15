import 'package:NavanaAir/component/spaceBetweenSizedBox.dart';
import 'package:NavanaAir/constants/constantStrings.dart';
import 'package:NavanaAir/constants/constantcolors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
//-----------------ScrollView for the Screen
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  //---------------Title Text

                  Text(
                    ConstantString.homeTitle,
                    style: GoogleFonts.montserrat(
                      color: CustomColors.titleBlue,
                      fontWeight: FontWeight.w500,
                      fontSize: 32,
                    ),
                  ),
                  SizedBox(height: 20),

                  //--------------------------Horizontal scroll View for circle avatar

                  Container(
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
                                        color: Colors.red,
                                        shape: BoxShape.circle,
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey,
                                            blurRadius: 15.0,
                                            spreadRadius: 3.0,
                                            offset: Offset(0, 10),
                                          ),
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
                                    color: Colors.greenAccent,
                                    shape: BoxShape.circle,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey,
                                        blurRadius: 15.0,
                                        spreadRadius: 5.0,
                                        offset: Offset(0, 10),
                                      ),
                                    ]),
                                child: Icon(Icons.train,
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
                                    color: Colors.indigo,
                                    shape: BoxShape.circle,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey,
                                        blurRadius: 15.0,
                                        spreadRadius: 5.0,
                                        offset: Offset(0, 10),
                                      ),
                                    ]),
                                child: Icon(Icons.car_rental,
                                    color: CustomColors.constantWhite),
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
                                    color: Colors.purple,
                                    shape: BoxShape.circle,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey,
                                        blurRadius: 15.0,
                                        spreadRadius: 5.0,
                                        offset: Offset(0, 10),
                                      ),
                                    ]),
                                child: Icon(Icons.restaurant,
                                    color: CustomColors.constantWhite),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Text(ConstantString.restHome),
                            ],
                          ),
                          SizedBox(width: 15),
                          // Column(
                          //   children: [
                          //     Container(
                          //       height: 75,
                          //       width: 75,
                          //       decoration: BoxDecoration(
                          //           color: Colors.purple,
                          //           shape: BoxShape.circle,
                          //           boxShadow: [
                          //             BoxShadow(
                          //               color: Colors.grey,
                          //               blurRadius: 15.0,
                          //               spreadRadius: 5.0,
                          //               offset: Offset(0, 10),
                          //             ),
                          //           ]),
                          //       child: Icon(Icons.restaurant,
                          //           color: CustomColors.constantWhite),
                          //     ),
                          //     SizedBox(
                          //       height: 8,
                          //     ),
                          //     Text(ConstantString.restHome),
                          //   ],
                          // ),
                          // SizedBox(width: 15),
                        ],
                      ),
                    ),
                  ),
                  CustomSizedBox(),
                  Text(ConstantString.bestOffers,
                      style: GoogleFonts.montserrat(
                          fontSize: 21,
                          fontWeight: FontWeight.w400,
                          color: CustomColors.titleBlue)),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(ConstantString.recDestinations,
                              style: GoogleFonts.montserrat(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.grey)),
                          Text(ConstantString.viewAll,
                              style: GoogleFonts.montserrat(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400,
                                  color: CustomColors.splashTextPink)),
                        ]),
                  ),
                  SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: 155,
                                  width: 265,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      image: DecorationImage(
                                          fit: BoxFit.fill,
                                          image: NetworkImage(
                                              "https://images.unsplash.com/photo-1431274172761-fca41d930114?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80"))),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(12, 12, 0, 0),
                                  child: Text(
                                    'Paris',
                                    style: GoogleFonts.montserrat(
                                        color: CustomColors.titleBlue,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(12, 8, 0, 0),
                                  child: Text('France',
                                      style: GoogleFonts.montserrat(
                                          color: CustomColors.greyDots,
                                          fontSize: 17)),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 12),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 155,
                                width: 265,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    image: DecorationImage(
                                        fit: BoxFit.fill,
                                        image: NetworkImage(
                                            "https://images.unsplash.com/photo-1531169628939-e84f860fa5d6?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80"))),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(12, 12, 0, 0),
                                child: Text(
                                  'Bangkok',
                                  style: GoogleFonts.montserrat(
                                      color: CustomColors.titleBlue,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(12, 8, 0, 0),
                                child: Text('Thailand',
                                    style: GoogleFonts.montserrat(
                                        color: CustomColors.greyDots,
                                        fontSize: 17)),
                              ),
                            ],
                          ),
                        ],
                      )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
