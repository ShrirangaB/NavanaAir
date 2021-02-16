import 'package:NavanaAir/component/spaceBetweenSizedBox.dart';
import 'package:NavanaAir/constants/constantStrings.dart';
import 'package:NavanaAir/constants/constantcolors.dart';
import 'package:NavanaAir/screen/homeScreen/bestOffers.dart';
import 'package:NavanaAir/screen/homeScreen/menuCircleAvatar.dart';
import 'package:NavanaAir/screen/homeScreen/popularPlaceCards.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  ConstantString.homeTitle,
                  style: GoogleFonts.montserrat(
                    color: CustomColors.titleBlue,
                    fontWeight: FontWeight.w500,
                    fontSize: 32,
                  ),
                ),
                SizedBox(height: 20),
                MenuCircles(),
                SizedBox(height: 20),
//------------------Title Best offers
                Text(ConstantString.bestOffers,
                    style: GoogleFonts.montserrat(
                        fontSize: 21,
                        fontWeight: FontWeight.w400,
                        color: CustomColors.titleBlue)),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
//--------------------Row for 2 texts with spacebetween
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                            ConstantString
                                .recDestinations, //Recomended Destinations
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
//-----------------Calling Best Offer Card Widget from different dart file
                BestOfferCards(),
                SizedBox(
                  height: 10,
                ),

//--------------------Row for 2 texts with spacebetween
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(ConstantString.popPlaces,
                          style: GoogleFonts.montserrat(
                              fontSize: 21,
                              fontWeight: FontWeight.w400,
                              color: CustomColors.titleBlue)),
                      Text(ConstantString.viewAll,
                          style: GoogleFonts.montserrat(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              color: CustomColors.splashTextPink)),
                    ]),
                SizedBox(
                  height: 10,
                ),
//-----------------Calling PopularPlace Card Widget from other different file
                PopularPlace(),
              ],
            ),
          )
        ],
      )),
//------------------Bottom Navigation Bar for the app
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(
            label: ConstantString.btmNbHOME,
            icon: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                Icons.home_outlined,
                color: CustomColors.pinkDots,
              ),
            ),
          ),
          BottomNavigationBarItem(
            label: ConstantString.btmNbSearch,
            icon: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                Icons.navigation_sharp,
                color: CustomColors.pinkDots,
              ),
            ),
          ),
          BottomNavigationBarItem(
            label: ConstantString.btmNbRandom,
            icon: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                Icons.image_search,
                color: CustomColors.pinkDots,
              ),
            ),
          ),
          BottomNavigationBarItem(
            label: ConstantString.btmNbProfile,
            icon: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                Icons.person,
                color: CustomColors.pinkDots,
              ),
            ),
          )
        ],
      ),
    );
  }
}
