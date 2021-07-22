import 'package:bmi_calculator/bottom_button.dart';
import 'package:bmi_calculator/card.dart';
import 'package:bmi_calculator/constrants.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  final String bmiResult;
  final String resultText;
  final String interpretation;

  ResultPage(
      {required this.bmiResult,
      required this.interpretation,
      required this.resultText});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Container(
                padding: EdgeInsets.all(15.0),
                alignment: Alignment.bottomLeft,
                child: Text(
                  'Your Result',
                  style: KTitleTextStyle,
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: ReusableCard(
                color1: activeCardColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(resultText.toUpperCase(), style: KResultTextStyle),
                    Text(bmiResult, style: KBMITextStyle),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        interpretation,
                        style: KBodyTextStyle,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            BottomButton(
                buttonTitle: 'RE-CALCULATE',
                onTap: () {
                  Navigator.pop(context);
                }),
          ],
        ));
  }
}
