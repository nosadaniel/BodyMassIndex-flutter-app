import 'dart:math';

class Calculator {
  Calculator({this.height, this.weight});

  final int height;
  final int weight;

  double _dmi;

  String calculateBMI() {
    _dmi = weight / pow(height / 100, 2);
    return _dmi.toStringAsFixed(1);
  }

  String getText() {
    if (_dmi >= 25.0) {
      return 'Overweight';
    } else if (_dmi >= 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  bool checkWeight() {
    if (getText() == 'Overweight') {
      return true;
    } else {
      return false;
    }
  }

  String getInterpretation() {
    if (_dmi >= 25) {
      return 'You have a Higher than Normal body weight. Try to exercise more';
    } else if (_dmi >= 18.5) {
      return 'You have a Normal body weight. Nice Job';
    } else {
      return 'You have a Lower than Normal body weight. You can eat a bit more';
    }
  }
}
