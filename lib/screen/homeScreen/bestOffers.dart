import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

import '../../constants/constantStrings.dart';
import '../../constants/constantcolors.dart';

class BestOfferCards extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Container(
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
                        height: 155,
                        width: 265,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                                fit: BoxFit.fill,
                                image:
                                    NetworkImage(ConstantString.parisImage))),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(12, 12, 0, 0),
                      child: Text(
                        ConstantString.paris,
                        style: GoogleFonts.montserrat(
                            color: CustomColors.titleBlue,
                            fontSize: 18,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(12, 8, 0, 0),
                      child: Text(ConstantString.france,
                          style: GoogleFonts.montserrat(
                              color: CustomColors.greyDots, fontSize: 17)),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 12),
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
                            ConstantString.rate399,
                            style: GoogleFonts.montserrat(
                                color: CustomColors.constantWhite,
                                fontSize: 15,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                      ),
                      height: 155,
                      width: 265,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                              fit: BoxFit.fill,
                              image: NetworkImage(ConstantString.bangkokImg))),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(12, 12, 0, 0),
                      child: Text(
                        ConstantString.bangkok,
                        style: GoogleFonts.montserrat(
                            color: CustomColors.titleBlue,
                            fontSize: 18,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(12, 8, 0, 0),
                      child: Text(ConstantString.thai,
                          style: GoogleFonts.montserrat(
                              color: CustomColors.greyDots, fontSize: 17)),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 12),
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
                      height: 155,
                      width: 265,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                              fit: BoxFit.fill,
                              image: NetworkImage(ConstantString.japanImg))),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(12, 12, 0, 0),
                      child: Text(
                        ConstantString.tokyo,
                        style: GoogleFonts.montserrat(
                            color: CustomColors.titleBlue,
                            fontSize: 18,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(12, 8, 0, 0),
                      child: Text(ConstantString.japan,
                          style: GoogleFonts.montserrat(
                              color: CustomColors.greyDots, fontSize: 17)),
                    ),
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
