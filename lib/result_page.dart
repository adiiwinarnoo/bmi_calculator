import 'package:bmi/input_page.dart';
import 'package:bmi/reusable-card.dart';
import 'package:flutter/material.dart';
import 'constant.dart';
import 'button_component.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: kAppBarResult,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Your Result',
                style: kTitleResult,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: kColourCard,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('Normal', style: kTextResult,),
                  Text('50',style: kContentStyleResult,),
                  Text('Your BMI result is to low, you should eat more!',style: kResultLabelTextStyle,textAlign: TextAlign.center,)
                ],
              ),
              onPress: () {},
            ),
          ),
          Expanded(
            child: ButtonComponent()
          ),
        ],
      ),
    );
  }
}
