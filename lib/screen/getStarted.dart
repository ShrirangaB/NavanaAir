import 'package:NavanaAir/component/customButton.dart';
import 'package:NavanaAir/constants/constantStrings.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import '../constants/constantcolors.dart';
import 'signup.dart';

class Getstarted extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return GetstartedState();
  }
}

class GetstartedState extends State {
  CarouselSlider carouselSlider;
  int _current = 0;

  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    try {
      for (var i = 0; i < list.length; i++) {
        result.add(handler(i, list[i]));
      }
    } on Exception catch (e) {
      // TODO
      // print(e.toString());
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            //carouselSlider
            carouselSlider = CarouselSlider(
              height: MediaQuery.of(context).size.height / 1.5,
              initialPage: 0,
              aspectRatio: 4 / 3,
              enableInfiniteScroll: false,
              enlargeCenterPage: true,
              scrollDirection: Axis.horizontal,
              onPageChanged: (index) {
                //for navigation dots
                setState(() {
                  _current = index;
                });
              },
              items: imgList.map((imgUrl) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height,
                      margin: EdgeInsets.symmetric(horizontal: 10.0),
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        image: DecorationImage(
                          image: AssetImage(
                            imgUrl,
                          ),
                          fit: BoxFit.contain,
                        ),
                      ),
                    );
                  },
                );
              }).toList(),
            ),
            SizedBox(
              height: 20,
            ),
            //Navigation dots
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: map<Widget>(imgList, (index, url) {
                return Container(
                  width: 8.0,
                  height: 8.0,
                  margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                  decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      color: _current == index
                          ? CustomColors.pinkDots
                          : CustomColors.greyDots),
                );
              }),
            ),
            SizedBox(
              height: 20.0,
            ),
            //Raisedbutton
            Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
              PrimaryButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SignUp()));
                },
                title: ConstantString.buttonTextGetStarted,
              ),
            ]),
          ],
        ),
      ),
    );
  }
}
