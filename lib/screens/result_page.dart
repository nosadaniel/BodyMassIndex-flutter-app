import 'package:flutter/material.dart';
import 'package:BMI/component/reusable_card.dart';
import 'package:BMI/constant.dart';
import 'package:BMI/component/bottom_button.dart';

class ResultPage extends StatelessWidget {
  ResultPage(
      {@required this.resultText,
      @required this.bmiResult,
      @required this.interpretation,
      this.checkWeight,
      this.sex});
  final String resultText;
  final String bmiResult;
  final String interpretation;
  final bool checkWeight;
  final String sex;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BMI CALCULATOR',
        ),
      ),
      body: Container(
        constraints: BoxConstraints.expand(),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(15.0),
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    'Result: $sex',
                    style: kTitleTextStyle,
                  ),
                ),
              ),
              Expanded(
                flex: 5,
                child: ReusableCard(
                  colour: kActiveCardColor,
                  cardChild: Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Text(
                          resultText,
                          style: checkWeight ? kOverWeight : kResultTextStyle,
                        ),
                        Text(
                          bmiResult,
                          style: kBMITextStyle,
                        ),
                        Text(
                          'Normal BMI range:',
                          style: kLabelTextStyle,
                        ),
                        Text(
                          '18.5 - 25 kg/m2',
                          style: kBodyTextStyle,
                        ),
                        Text(
                          interpretation,
                          style: kBodyTextStyle,
                        )
                      ],
                    ),
                  ),
                ),
              ),
              BottomButton(
                onPress: () => Navigator.pushNamed(context, '/'),
                label: 'RE-CALCULATE',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
