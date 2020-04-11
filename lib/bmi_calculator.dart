import 'dart:math';
import 'package:flutter/foundation.dart';

class BMICalculator {
  BMICalculator({
    @required this.height,
    @required this.weight,
    @required this.age,
  });

  final double height;
  final int weight;
  final int age;
  double bmi;

  double calculateBMI() {
    this.bmi = weight / pow(height, 2);
    return this.bmi;
  }

  String result() {
    if (this.age > 60) {
      if (this.bmi > 27) {
        return 'Overweight';
      } else {
        if (this.bmi > 22 && this.bmi < 27) {
          return 'Normal';
        } else {
          return 'Underweight';
        }
      }
    } else {
      if (this.bmi > 40) {
        return 'Obesity level III';
      } else {
        if (this.bmi > 35 && this.bmi < 39.9) {
          return 'Obesity level II';
        } else {
          if (this.bmi > 30 && this.bmi < 34.9) {
            return 'Obesity level I';
          } else {
            if (this.bmi > 25 && this.bmi < 29.9) {
              return 'Overweight';
            } else {
              if (this.bmi > 18.5 && this.bmi < 24.9) {
                return 'Normal';
              }
              return 'Underweight';
            }
          }
        }
      }
    }
  }

  String description() {
    if (this.age > 60) {
      if (this.bmi > 27) {
        return 'You have a higher than normal body weight. Try to exercise more.';
      } else {
        if (this.bmi > 22 && this.bmi < 27) {
          return 'You have a normal body weight. Good job!';
        } else {
          return 'You have a lower than normal body weight. You can eat a bit more.';
        }
      }
    } else {
      if (this.bmi > 40) {
        return 'You have a high obesity level. You must see a doctor.';
      } else {
        if (this.bmi > 35 && this.bmi < 39.9) {
          return 'You have a high obesity level. You must exercise more.';
        } else {
          if (this.bmi > 30 && this.bmi < 34.9) {
            return 'You have a high obesity level. Be careful or things can become dangerous. Exercise more!';
          } else {
            if (this.bmi > 25 && this.bmi < 29.9) {
              return 'You have a higher than normal body weight. Try to exercise more.';
            } else {
              if (this.bmi > 18.5 && this.bmi < 24.9) {
                return 'You have a normal body weight. Good job!';
              }
              return 'You have a lower than normal body weight. You can eat a bit more.';
            }
          }
        }
      }
    }
  }
}
