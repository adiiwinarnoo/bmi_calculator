import 'package:flutter/material.dart';
import 'icon-card.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const buttonContainerHeight = 65.0;
const colourCard = Color(0xFF1D1E33);
const bottomContainer = Color(0xFFEB1555);

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
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
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                      colour: colourCard,
                      cardChild: CardIcon(
                          iconCard: const Icon(
                            FontAwesomeIcons.mars,
                            size: 60.0,
                          ),
                          titleText: 'MALE')),
                ),
                Expanded(
                  child: ReusableCard(
                      colour: colourCard,
                      cardChild: CardIcon(
                          iconCard: const Icon(
                            FontAwesomeIcons.venus,
                            size: 60.0,
                          ),
                          titleText: 'FEMALE')),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              colour: colourCard,
              cardChild: Column(
                children: [Icon(FontAwesomeIcons.mars), Text('MALE')],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    colour: colourCard,
                    cardChild: const BottomCardIcon(
                        iconCard: Icon(FontAwesomeIcons.circleMinus, size: 45.0,),
                        iconCardTwo: Icon(FontAwesomeIcons.circlePlus,size: 45.0),
                        titleText: 'WEIGHT'),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colour: colourCard,
                    cardChild: const BottomCardIcon(
                        iconCard: Icon(FontAwesomeIcons.circleMinus, size: 45.0,),
                        iconCardTwo: Icon(FontAwesomeIcons.circlePlus,size: 45.0),
                        titleText: 'AGE'),
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: bottomContainer,
            margin: EdgeInsets.only(top: 10.0),
            height: buttonContainerHeight,
            width: double.infinity,
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
        ],
      ),
    );
  }
}

class ReusableCard extends StatelessWidget {
  ReusableCard({required this.colour, required this.cardChild});

  final Color colour;
  final Widget cardChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
