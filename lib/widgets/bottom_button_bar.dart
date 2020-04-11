import 'package:flutter/material.dart';
import '../constants.dart';

class BottomButtonBar extends StatelessWidget {
  BottomButtonBar({@required this.label, @required this.onPressed});

  final String label;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        child: Center(
          child: Text(
            label,
            style: kLargeButtonTextStyle,
          ),
        ),
        color: kBottomContainerColor,
        margin: EdgeInsets.only(top: 10.0),
        width: double.infinity,
        height: kBottomContainerHeight,
      ),
      onTap: onPressed,
    );
  }
}
