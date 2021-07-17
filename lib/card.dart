import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  final Color color1;
  final Widget? cardChild;

  ReusableCard({required this.color1, this.cardChild});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: color1,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}
