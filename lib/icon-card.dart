import 'package:flutter/material.dart';

class CardIcon extends StatelessWidget {
  CardIcon({required this.iconCard,required this.titleText});

  final Icon iconCard;
  final String titleText;
  final fontSize = 18.0;
  final boxSize = 15.0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        iconCard,
        SizedBox(height: boxSize),
        Text(
          titleText,
          style: TextStyle(fontSize: fontSize),
        ),
      ],
    );
  }
}

class BottomCardIcon extends StatelessWidget {
  const BottomCardIcon({required this.iconCard,required this.iconCardTwo,required this.titleText});

  final Icon iconCard;
  final Icon iconCardTwo;
  final String titleText;
  final fontSize = 18.0;
  final boxSize = 5.0;

  @override
  Widget build(BuildContext context) {
     return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          titleText,
          style: TextStyle(fontSize: fontSize,fontWeight: FontWeight.w100),
        ),
        SizedBox(height: boxSize),
        Text('87',style: TextStyle(fontSize: 54.0,color: Colors.white, fontWeight: FontWeight.bold),),
        Padding(
          padding: const EdgeInsets.only(right: 10.0,left: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              iconCard,
              iconCardTwo
            ],
          ),
        ),
        SizedBox(height: boxSize),
      ],
    );
  }
}

class CardProgress extends StatelessWidget {
  const CardProgress({required this.iconCard,required this.iconCardTwo,required this.titleText});

  final Icon iconCard;
  final Icon iconCardTwo;
  final String titleText;
  final fontSize = 18.0;
  final boxSize = 5.0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          titleText,
          style: TextStyle(fontSize: fontSize,fontWeight: FontWeight.w100),
        ),
        SizedBox(height: boxSize),
        Text('87',style: TextStyle(fontSize: 54.0,color: Colors.white, fontWeight: FontWeight.bold),),
        Padding(
          padding: const EdgeInsets.only(right: 10.0,left: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              iconCard,
              iconCardTwo
            ],
          ),
        ),
        SizedBox(height: boxSize),
      ],
    );
  }
}