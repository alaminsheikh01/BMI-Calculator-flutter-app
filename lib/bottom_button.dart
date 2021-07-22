import 'package:flutter/material.dart';

import 'constrants.dart';

class BottomButton extends StatelessWidget {
  final Function()? onTap;
  final String buttonTitle;

  BottomButton({this.onTap, required this.buttonTitle});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(
            buttonTitle,
            style: KLargebuttonStyle,
          ),
        ),
        color: Color(0xFFEB1555),
        height: 80.0,
        width: double.infinity,
        margin: EdgeInsets.only(top: 10.0),
        //padding: EdgeInsets.only(bottom: 20.0), // for Iphone.
      ),
    );
  }
}
