import 'package:flutter/material.dart';

class CustomSizedBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 20,
    );
  }
}

class CustomSizedBoxx extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 30,
    );
  }
}
