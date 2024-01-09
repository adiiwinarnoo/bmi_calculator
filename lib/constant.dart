import 'package:flutter/material.dart';

const kButtonContainerHeight = 65.0;
const kColourCard = Color(0xFF1D1E33);
const kInActiveCardColour = Color(0xFF111328);
const kBottomContainer = Color(0xFFEB1555);
int kHeightSlider = 180;
const kMinSlider = 100.0;
const kMaxSlider = 250.0;
const kActiveColourSlider = Color(0xFFEB1555);
const kInActiveColourSlider = Color(0xFF8D8E98);
int kWeight = 60;
int kAge = 10;

const kTitleStyle = TextStyle(fontSize: 65, fontWeight: FontWeight.bold, color: Colors.white);
const kLabelTextStyle = TextStyle(fontSize: 20, fontWeight: FontWeight.w900, color: Color(0xFF8D8E98));
const kTitleResult = TextStyle(fontSize: 48, fontWeight: FontWeight.bold, color: Colors.white);
const kTitleResultFinal = TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Colors.white);
const kTextResult = TextStyle(fontSize: 22, fontWeight: FontWeight.normal, color: Color(0xFF24D876));
const kContentStyleResult = TextStyle(fontSize: 100, fontWeight: FontWeight.bold, color: Colors.white);
const kResultLabelTextStyle = TextStyle(fontSize: 20, fontWeight: FontWeight.w900, color: Colors.white);

final kAppBarResult = AppBar(
        centerTitle: true,
        title: Text('BMI CALCULATOR',style: kTitleResultFinal,),
        backgroundColor: Color(0xFF0A0E21),
        foregroundColor: Colors.white,
);