import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/widgets/bottom_button_bar.dart';
import 'package:bmi_calculator/widgets/reusable_card.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Expanded(
              child: Container(
                alignment: Alignment.center,
                padding: EdgeInsets.all(15.0),
                child: Text('Your Result', style: kTitleTextStyle),
              ),
            ),
            Expanded(
              flex: 5,
              child: ReusableCard(
                colour: kActiveCardColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text('OVERWEIGHT', style: kResultTextStyle),
                    Text('28.4', style: kBMITextStyle),
                    Text('A short description', 
                    textAlign: TextAlign.center,
                    style: kDescriptionTextStyle),
                  ],
                ),
              ),
            ),
            BottomButtonBar(
                label: 'RE-CALCULATE',
                onPressed: () {
                  Navigator.pop(context);
                }),
          ],
        ));
  }
}
