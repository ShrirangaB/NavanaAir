import 'package:flutter/material.dart';
import '../constants/constantcolors.dart';

class PrimaryButton extends StatelessWidget {
  PrimaryButton({@required this.onPressed, @required this.title});

  final String title;
  final GestureTapCallback onPressed;
//building the raised button inside a widget
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      color: CustomColors.buttonPink,
      child: Container(
          width: MediaQuery.of(context).size.width * 0.58,
          padding: EdgeInsets.all(18.0),
          child: Text(
            title,
            style: TextStyle(color: CustomColors.buttonTextWhite, fontSize: 15),
            textAlign: TextAlign.center,
          )),
      onPressed: onPressed,
      shape: StadiumBorder(),
    );
  }
}

class FlatCustomButton extends StatelessWidget {
  FlatCustomButton({@required this.onPressed, @required this.title});
  final String title;
  final GestureTapCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: () {},
      child: Text(title,
          style: TextStyle(color: CustomColors.buttonPink, fontSize: 15)),
    );
  }
}
