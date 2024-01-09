import 'package:flutter/material.dart';
import 'constant.dart';
import 'input_page.dart';

class ButtonComponent extends StatelessWidget {
  const ButtonComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kBottomContainer,
      margin: EdgeInsets.only(top: 10.0),
      height: kButtonContainerHeight,
      width: double.infinity,
      child: GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: Center(
          child: Text(
            'RE-CALCULATE',
            style: TextStyle(
                fontSize: 24.0,
                color: Colors.white,
                fontWeight: FontWeight.normal),
          ),
        ),
      ),
    );
  }
}
