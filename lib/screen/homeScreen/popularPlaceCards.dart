import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constants/constantStrings.dart';
import '../../constants/constantcolors.dart';

class PopularPlace extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Align(
                      alignment: Alignment.bottomLeft,
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Text(
                          ConstantString.rate499,
                          style: GoogleFonts.montserrat(
                              color: CustomColors.constantWhite,
                              fontWeight: FontWeight.w700,
                              fontSize: 15),
                        ),
                      ),
                    ),
                    height: MediaQuery.of(context).size.height / 4,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: NetworkImage(ConstantString.japanImg))),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(12),
                        child: Text(
                          ConstantString.tokyo,
                          style: GoogleFonts.montserrat(
                              color: CustomColors.titleBlue,
                              fontSize: 18,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(12),
                        child: Text(ConstantString.japan,
                            style: GoogleFonts.montserrat(
                                color: CustomColors.greyDots, fontSize: 17)),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text(
                        ConstantString.rate699,
                        style: GoogleFonts.montserrat(
                            color: CustomColors.constantWhite,
                            fontWeight: FontWeight.w700,
                            fontSize: 15),
                      ),
                    ),
                  ),
                  height: MediaQuery.of(context).size.height / 4,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: DecorationImage(
                          fit: BoxFit.fill,
                          image: NetworkImage(ConstantString.parisImage))),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(12),
                      child: Text(
                        ConstantString.paris,
                        style: GoogleFonts.montserrat(
                            color: CustomColors.titleBlue,
                            fontSize: 18,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12),
                      child: Text(ConstantString.france,
                          style: GoogleFonts.montserrat(
                              color: CustomColors.greyDots, fontSize: 17)),
                    ),
                  ],
                ),
              ],
            )),
          ],
        ),
      ),
    );
  }
}
