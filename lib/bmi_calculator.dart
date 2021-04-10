import 'dart:math';

class BMICalculator {
  BMICalculator({this.height, this.weight});
  final int height;
  final int weight;

  double _bmi;

  //BMI = mass(kg) / height(m)^2
  String calculateBMI() {
    _bmi = weight / pow((height / 100.0), 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25)
      return 'OVERWEIGHT';
    else if (_bmi > 18.5)
      return 'NORMAL';
    else
      return 'UNDERWEIGHT';
  }

  String getDescription() {
    calculateBMI();
    if (_bmi >= 25)
      return 'You have a higher than normal body weight. Try to exercise more.';
    else if (_bmi > 18.5)
      return 'You have a normal body weight. Good job!.';
    else
      return 'You have a lower than normal body weight. You can eat a bit more.';
  }
}
