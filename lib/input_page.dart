import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'customClass.dart';
import 'constants.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

enum gender {
  male,
  female,
}
double _currentSliderValue = 120;
String height = _currentSliderValue.toStringAsFixed(0);

class _InputPageState extends State<InputPage> {
  gender selectGender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text('BMI CALCULATOR'),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                    child: ReusableCard(
                  height: 180,
                  width: 150,
                  colour: selectGender == gender.male
                      ? kactiveCardColor
                      : kinactiveCardColor,
                  cC: CustomClass(FontAwesomeIcons.mars, 'MALE'),
                  F: () {
                    setState(() {
                      selectGender = gender.male;
                    });
                  },
                )),
                Expanded(
                    child: ReusableCard(
                        height: 180,
                        width: 150,
                        colour: selectGender == gender.female
                            ? kactiveCardColor
                            : kinactiveCardColor,
                        cC: CustomClass(FontAwesomeIcons.venus, 'FEMALE'),
                        F: () {
                          setState(() {
                            selectGender = gender.female;
                          });
                        })),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              height: 180,
              width: 340,
              colour: kactiveCardColor,
              cC: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'HEIGHT',
                    style: klabelTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        '$height',
                        style: kheightTextStyle,
                      ),
                      Text(
                        'cm',
                        style: klabelTextStyle,
                      ),
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                        trackHeight: 3,
                        inactiveTrackColor: Color(0xFF6D6E7B),
                        activeTrackColor: Colors.white,
                        thumbColor: Color(0xFFEB1555),
                        overlayColor: Color(0x29EB1555),
                        thumbShape:
                            RoundSliderThumbShape(enabledThumbRadius: 15),
                        overlayShape:
                            RoundSliderOverlayShape(overlayRadius: 30.0)),
                    child: Slider(
                        value: _currentSliderValue,
                        min: 120,
                        max: 220,
                        onChanged: (double value) {
                          setState(() {
                            _currentSliderValue = value;
                            height = _currentSliderValue.toStringAsFixed(0);
                          });
                        }),
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
                    height: 180,
                    width: 150,
                    colour: kactiveCardColor,
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    height: 180,
                    width: 150,
                    colour: kactiveCardColor,
                  ),
                ),
              ],
            ),
          ),
          Container(
              height: 50,
              width: double.infinity,
              color: Color(0xFFEB1555),
              child: TextButton(
                  onPressed: () {},
                  child: Text(
                    'CALCULATE',
                    style: TextStyle(fontSize: 15, color: Color(0xFFFFFFFF)),
                  ))),
        ],
      ),
    );
  }
}
