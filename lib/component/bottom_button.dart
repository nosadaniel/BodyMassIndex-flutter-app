import 'package:flutter/material.dart';
import 'package:BMI/constant.dart';

class BottomButton extends StatelessWidget {
  BottomButton({@required this.onPress, this.label});
  final Function onPress;
  final String label;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        color: kBottomContainerColor,
        margin: EdgeInsets.all(10.0),
        padding: EdgeInsets.only(bottom: 10.0),
        width: double.infinity,
        height: kBottomContainerHeight,
        child: Center(
          child: Text(
            label,
            style: kLargeButtonStyle,
          ),
        ),
      ),
    );
  }
}
