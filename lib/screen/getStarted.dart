import 'package:NavanaAir/constants/constantcolors.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomIndicator extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return CustomIndicatorState();
  }
}

class CustomIndicatorState extends State<CustomIndicator> {
  int currentPos = 0;
  List<String> listPaths = [
    "assets/images/12.jpg",
    "assets/images/121.jpg",
    "assets/images/1221.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        CarouselSlider.builder(
          itemCount: listPaths.length,
          options: CarouselOptions(onPageChanged: (index, reason) {
            setState(() {
              currentPos = index;
            });
          }),
          itemBuilder: (context, index, a) {
            return MyImageView(listPaths[index]);
          },
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: listPaths.map((url) {
            int index = listPaths.indexOf(url);
            return Container(
              width: 8.0,
              height: 8.0,
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: currentPos == index
                    ? CustomColors.sbPink
                    : Color.fromRGBO(0, 0, 0, 0.4),
              ),
            );
          }).toList(),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.2,
        ),
        Container(
          height: 50,
          width: 250,
          child: RaisedButton(
              color: CustomColors.sbPink,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              child: Text(
                'Start Booking',
                style: TextStyle(color: CustomColors.sbWhite, fontSize: 20),
              ),
              onPressed: () {}),
        ),
      ])),
    );
  }
}

class MyImageView extends StatelessWidget {
  int a = 3;
  String imgPath;

  MyImageView(this.imgPath);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height / 2,
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        image: DecorationImage(
          image: AssetImage(imgPath),
          fit: BoxFit.fill,
        ),
      ),
    );
    // Container(
    //     height: MediaQuery.of(context).size.height,
    //     margin: EdgeInsets.symmetric(horizontal: 5),
    //     child: FittedBox(
    //       fit: BoxFit.fill,
    //       child: Image.asset(imgPath),
    //     )
    //     );
  }
}

// import 'package:NavanaAir/constants/constantcolors.dart';
// import 'package:carousel_slider/carousel_slider.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_onboard/flutter_onboard.dart';
// import 'package:provider/provider.dart';

// class GetStarted extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return CustomUI();
//   }
// }

// class BasicUI extends StatelessWidget {
//   final PageController _pageController = PageController();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: OnBoard(
//         onBoardData: onBoardData,
//         pageController: _pageController,
//         onSkip: () {
//           print('skipped');
//         },
//         onDone: () {
//           print('done tapped');
//         },
//       ),
//     );
//   }
// }

// class CustomUI extends StatelessWidget {
//   final PageController _pageController = PageController();
//   @override
//   Widget build(BuildContext context) {
//     return Provider<OnBoardState>(
//       create: (_) => OnBoardState(),
//       child: Scaffold(
//         body: OnBoard(
//           pageController: _pageController,
//           onSkip: () {
//             print('skipped');
//           },
//           onDone: () {
//             print('done tapped');
//           },
//           onBoardData: onBoardData,
//           // titleStyles: TextStyle(
//           //   color: Colors.deepOrange,
//           //   fontSize: 18,
//           //   fontWeight: FontWeight.w900,
//           //   letterSpacing: 0.15,
//           // ),
//           // descriptionStyles: TextStyle(
//           //   fontSize: 16,
//           //   color: Colors.brown.shade300,
//           // ),
//           pageIndicatorStyle: PageIndicatorStyle(
//             width: 100,
//             inactiveColor: Colors.grey,
//             activeColor: CustomColors.sbPink,
//             inactiveSize: Size(8, 8),
//             activeSize: Size(12, 12),
//           ),
//           // skipButton: FlatButton(
//           //   onPressed: () {
//           //     print('skipped');
//           //   },
//           //   child: Text(
//           //     "Skip",
//           //     style: TextStyle(color: Colors.deepOrangeAccent),
//           //   ),
//           // ),
//           nextButton: Consumer<OnBoardState>(
//             builder: (BuildContext context, OnBoardState state, Widget child) {
//               return InkWell(
//                 //onTap: () => _onNextTap(state),
//                 child: Container(
//                   width: 230,
//                   height: 50,
//                   alignment: Alignment.center,
//                   //   color: CustomColors.sbPink,
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(30),
//                     gradient: LinearGradient(
//                       colors: [CustomColors.sbPink, CustomColors.sbPink],
//                     ),
//                   ),
//                   child: Text('Start Booking'),
//                 ),
//               );
//             },
//           ),
//         ),
//       ),
//     );
//   }

//   void _onNextTap(OnBoardState onBoardState) {
//     if (!onBoardState.isLastPage) {
//       _pageController.animateToPage(
//         onBoardState.page + 1,
//         duration: Duration(milliseconds: 250),
//         curve: Curves.easeInOutSine,
//       );
//     } else {
//       print("done");
//     }
//   }
// }

// final List<OnBoardModel> onBoardData = [
//   OnBoardModel(
//     imgUrl: "assets/images/12.jpg",
//   ),
//   OnBoardModel(
//     imgUrl: 'assets/images/121.jpg',
//   ),
//   OnBoardModel(
//     imgUrl: 'assets/images/1221.jpg',
//   ),
// ];

// class GetStarted extends StatefulWidget {
//   @override
//   _GetStartedState createState() => _GetStartedState();
// }

// class _GetStartedState extends State<GetStarted> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             ListView(
//               children: [
//                 Container(
//                   height: MediaQuery.of(context).size.height,
//                   width: MediaQuery.of(context).size.width,
//                   color: Colors.white,
//                   child: CarouselSlider(
//                     items: [
//                       //1st Image of Slider
//                       Container(
//                         margin: EdgeInsets.all(6.0),
//                         padding: EdgeInsets.all(10),
//                         decoration: BoxDecoration(
//                           // borderRadius: BorderRadius.circular(8.0),
//                           image: DecorationImage(
//                             image: NetworkImage(
//                                 "https://image.freepik.com/free-vector/airport-concept-illustration_114360-1178.jpg"),
//                             fit: BoxFit.cover,
//                           ),
//                         ),
//                       ),

//                       //2nd Image of Slider
//                       Container(
//                         margin: EdgeInsets.all(6.0),
//                         padding: EdgeInsets.all(10),
//                         decoration: BoxDecoration(
//                           // borderRadius: BorderRadius.circular(8.0),
//                           image: DecorationImage(
//                             image: NetworkImage(
//                                 "https://thumbs.dreamstime.com/b/young-man-traveler-suitcase-camera-concept-travel-vector-illustration-flat-style-graphics-character-design-ready-93279697.jpg"),
//                             fit: BoxFit.cover,
//                           ),
//                         ),
//                       ),

//                       //3rd Image of Slider
//                       Container(
//                         margin: EdgeInsets.all(6.0),
//                         padding: EdgeInsets.all(10),
//                         decoration: BoxDecoration(
//                           // borderRadius: BorderRadius.circular(8.0),
//                           image: DecorationImage(
//                             image: NetworkImage(
//                                 "https://image.freepik.com/free-vector/man-traveling-by-plane-around-world-cartoon-flat_82574-4708.jpg"),
//                             fit: BoxFit.cover,
//                           ),
//                         ),
//                       ),
//                     ],

//                     //Slider Container properties
//                     options: CarouselOptions(
//                       height: MediaQuery.of(context).size.height / 1.8,
//                       enlargeCenterPage: true,

//                       // autoPlay: true,
//                       aspectRatio: 16 / 9,
//                       // autoPlayCurve: Curves.fastOutSlowIn,
//                       enableInfiniteScroll: false,
//                       // autoPlayAnimationDuration: Duration(milliseconds: 800),
//                       //  viewportFraction: 0.8,
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//             Container(
//               child: Text('fsajkdfhsjkdfh hfjshf jshfjkh ajhdsf jhdf'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
//   List<SliderModel> mySLides = new List<SliderModel>();
//   int slideIndex = 0;
//   PageController controller;

//   Widget _buildPageIndicator(bool isCurrentPage) {
//     return Container(
//       margin: EdgeInsets.symmetric(horizontal: 2.0),
//       height: isCurrentPage ? 10.0 : 6.0,
//       width: isCurrentPage ? 10.0 : 6.0,
//       decoration: BoxDecoration(
//         color: isCurrentPage ? Colors.grey : Colors.grey[300],
//         borderRadius: BorderRadius.circular(12),
//       ),
//     );
//   }

//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     mySLides = getSlides();
//     controller = new PageController();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       // decoration: BoxDecoration(
//       //     gradient: LinearGradient(
//       //         colors: [const Color(0xff3C8CE7), const Color(0xff00EAFF)])),
//       child: Scaffold(
//         backgroundColor: Colors.white,
//         body: Container(
//           height: MediaQuery.of(context).size.height - 100,
//           child: PageView(
//             controller: controller,
//             onPageChanged: (index) {
//               setState(() {
//                 slideIndex = index;
//               });
//             },
//             children: <Widget>[
//               SlideTile(
//                 imagePath: mySLides[0].getImageAssetPath(),
//                 // title: mySLides[0].getTitle(),
//                 // desc: mySLides[0].getDesc(),
//               ),
//               SlideTile(
//                 imagePath: mySLides[1].getImageAssetPath(),
//                 // title: mySLides[1].getTitle(),
//                 // desc: mySLides[1].getDesc(),
//               ),
//               SlideTile(
//                 imagePath: mySLides[2].getImageAssetPath(),
//                 // title: mySLides[2].getTitle(),
//                 // desc: mySLides[2].getDesc(),
//               )
//             ],
//           ),
//         ),
//         bottomSheet: slideIndex != 2
//             ? Container(
//                 margin: EdgeInsets.symmetric(vertical: 16),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: <Widget>[
//                     FlatButton(
//                       onPressed: () {
//                         controller.animateToPage(2,
//                             duration: Duration(milliseconds: 400),
//                             curve: Curves.linear);
//                       },
//                       splashColor: Colors.blue[50],
//                       child: Text(
//                         "SKIP",
//                         style: TextStyle(
//                             color: Color(0xFF0074E4),
//                             fontWeight: FontWeight.w600),
//                       ),
//                     ),
//                     Container(
//                       child: Row(
//                         children: [
//                           for (int i = 0; i < 3; i++)
//                             i == slideIndex
//                                 ? _buildPageIndicator(true)
//                                 : _buildPageIndicator(false),
//                         ],
//                       ),
//                     ),
//                     FlatButton(
//                       onPressed: () {
//                         print("this is slideIndex: $slideIndex");
//                         controller.animateToPage(slideIndex + 1,
//                             duration: Duration(milliseconds: 500),
//                             curve: Curves.linear);
//                       },
//                       splashColor: Colors.blue[50],
//                       child: Text(
//                         "NEXT",
//                         style: TextStyle(
//                             color: Color(0xFF0074E4),
//                             fontWeight: FontWeight.w600),
//                       ),
//                     ),
//                   ],
//                 ),
//               )
//             : InkWell(
//                 onTap: () {
//                   print("Get Started Now");
//                 },
//                 child: Container(
//                   height: Platform.isIOS ? 70 : 60,
//                   color: Colors.blue,
//                   alignment: Alignment.center,
//                   child: Text(
//                     "GET STARTED NOW",
//                     style: TextStyle(
//                         color: Colors.white, fontWeight: FontWeight.w600),
//                   ),
//                 ),
//               ),
//       ),
//     );
//   }
// }

// class SlideTile extends StatelessWidget {
//   String imagePath, title, desc;

//   SlideTile({this.imagePath, this.title, this.desc});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: EdgeInsets.symmetric(horizontal: 20),
//       alignment: Alignment.center,
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: <Widget>[
//           Image.asset(imagePath),
//           // SizedBox(
//           //   height: 40,
//           // ),
//           // Text(
//           //   title,
//           //   textAlign: TextAlign.center,
//           //   style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
//           // ),
//           // SizedBox(
//           //   height: 20,
//           // ),
//           // Text(desc,
//           //     textAlign: TextAlign.center,
//           //     style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14))
//         ],
//       ),
//     );
//   }
// }
