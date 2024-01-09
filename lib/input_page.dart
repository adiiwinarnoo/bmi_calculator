import 'package:bmi/result_page.dart';
import 'package:flutter/material.dart';
import 'icon-card.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusable-card.dart';
import 'constant.dart';
import 'rounded_button.dart';

enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender? calledGender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'BMI CALCULATOR',
            style: TextStyle(color: Colors.white),
          ),
        ),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                      onPress: () => setState(
                            () {
                              calledGender = Gender.male;
                            },
                          ),
                      colour: calledGender == Gender.male
                          ? kColourCard
                          : kInActiveCardColour,
                      cardChild: CardIcon(
                          iconCard: const Icon(
                            FontAwesomeIcons.mars,
                            size: 60.0,
                          ),
                          titleText: 'Male')),
                ),
                Expanded(
                  child: ReusableCard(
                      onPress: () => setState(
                            () {
                              calledGender = Gender.female;
                            },
                          ),
                      colour: calledGender == Gender.female
                          ? kColourCard
                          : kInActiveCardColour,
                      cardChild: CardIcon(
                          iconCard: const Icon(
                            FontAwesomeIcons.venus,
                            size: 60.0,
                          ),
                          titleText: 'Female')),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              onPress: () => print('hello range slider'),
              colour: kColourCard,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('HEIGHT'),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(kHeightSlider.toString(), style: kTitleStyle),
                      Text('cm', style: kLabelTextStyle),
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      inactiveTrackColor: Colors.black,
                      activeTrackColor: Colors.white,
                      thumbColor: Color(0xFFEB1555),
                      overlayColor: Color(0x29EB1555),
                      thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15.0),
                      overlayShape: RoundSliderOverlayShape(overlayRadius: 30.0)
                    ),
                    child: Slider(
                      value: kHeightSlider.toDouble(),
                      min: kMinSlider,
                      max: kMaxSlider,
                      inactiveColor: kInActiveColourSlider,
                      onChanged: (value) {
                        setState(
                          () {
                            kHeightSlider = value.round();
                          },
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    onPress: () => print('hello weight'),
                    colour: kColourCard,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'WEIGHT',
                          style: kLabelTextStyle,
                        ),
                        Text(
                          kWeight.toString(),
                          style: kTitleStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundedIconButton(
                              onPress: () => setState(
                                () {
                                  kWeight--;
                                },
                              ),
                              icon: Icon(FontAwesomeIcons.minus),
                            ),
                            SizedBox(width: 10),
                            RoundedIconButton(
                              onPress: () => setState(
                                () {
                                  kWeight++;
                                },
                              ),
                              icon: Icon(FontAwesomeIcons.add),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    onPress: () => print('hello age'),
                    colour: kColourCard,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'AGE',
                          style: kLabelTextStyle,
                        ),
                        Text(
                          kAge.toString(),
                          style: kTitleStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundedIconButton(
                              icon: Icon(FontAwesomeIcons.minus),
                              onPress: () => setState(
                                () {
                                  kAge--;
                                },
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            RoundedIconButton(
                              icon: Icon(FontAwesomeIcons.add),
                              onPress: () => setState(
                                () {
                                  kAge++;
                                },
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const ResultPage(),)),
            child: Container(
              color: kBottomContainer,
              margin: EdgeInsets.only(top: 10.0),
              height: kButtonContainerHeight,
              width: double.infinity,
              padding: EdgeInsets.only(bottom: 10.0),
              child: Center(
                child: Text(
                  'CALCULATE',
                  style: TextStyle(
                      fontSize: 24.0,
                      color: Colors.white,
                      fontWeight: FontWeight.normal),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
