import 'package:bmi_calculator/pages/result_page.dart';
import 'package:flutter/material.dart';
import 'pages/input_page.dart';
import 'pages/result_page.dart';

const primaryColor = Color(0xFF0A0E21);

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => InputPage(),
        '/results': (context) => ResultPage(),
      },
      theme: ThemeData.dark().copyWith(
        primaryColor: primaryColor,
        scaffoldBackgroundColor: primaryColor,
      ),
    );
  }
}
