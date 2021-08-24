import 'package:bmi_calculator/finalpage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'customClass.dart';
import 'constants.dart';
import 'finalpage.dart';
import 'dart:math';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

enum gender {
  male,
  female,
}
double _height = 120;
String height = _height.toStringAsFixed(0);
double _weight = 50;
String weight = _weight.toStringAsFixed(0);
double _age = 18;
String age = _age.toStringAsFixed(0);
int h = 0;
int w = 0;
double _bmi = (w / pow(h, 2)) * 10000;
String bmi = _bmi.toStringAsFixed(0);
String overview;
Color overviewColor;
String written;

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
                        value: _height,
                        min: 120,
                        max: 220,
                        onChanged: (double value) {
                          setState(() {
                            _height = value;
                            height = _height.toStringAsFixed(0);
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
                    cC: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'WEIGHT',
                          style: klabelTextStyle,
                        ),
                        Text(
                          '$weight',
                          style: kheightTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            RoundIconButton(
                              cC: Icon(Icons.add),
                              oP: () {
                                setState(() {
                                  _weight++;
                                  weight = _weight.toStringAsFixed(0);
                                });
                              },
                            ),
                            RoundIconButton(
                              cC: Icon(Icons.remove),
                              oP: () {
                                setState(() {
                                  _weight--;
                                  weight = _weight.toStringAsFixed(0);
                                });
                              },
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    height: 180,
                    width: 150,
                    colour: kactiveCardColor,
                    cC: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'AGE',
                          style: klabelTextStyle,
                        ),
                        Text('$age', style: kheightTextStyle),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            RoundIconButton(
                              cC: Icon(Icons.add),
                              oP: () {
                                setState(() {
                                  _age++;
                                  age = _age.toStringAsFixed(0);
                                });
                              },
                            ),
                            RoundIconButton(
                              cC: Icon(Icons.remove),
                              oP: () {
                                setState(() {
                                  _age--;
                                  age = _age.toStringAsFixed(0);
                                });
                              },
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
              height: 60,
              width: double.infinity,
              color: Color(0xFFEB1555),
              child: TextButton(
                  onPressed: () {
                    setState(() {
                      h = int.parse(height);
                      w = int.parse(weight);
                      _bmi = (w / pow(h, 2)) * 10000;
                      if (_bmi >= 18.5) {
                        if (_bmi >= 25) {
                          overview = 'OVERWEIGHT';
                          overviewColor = Colors.red;
                          written = 'You have more than normal body weight';
                        } else {
                          overview = 'NORMAL';
                          overviewColor = Colors.green;
                          written = 'You have a normal body weight. Good Job!';
                        }
                      } else {
                        overview = 'UNDERWEIGHT';
                        overviewColor = Colors.blue;
                        written = 'You have less than normal body weight';
                      }
                      bmi = _bmi.toStringAsFixed(1);
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Profile()),
                      );
                    });
                  },
                  child: Text(
                    'CALCULATE',
                    style: TextStyle(fontSize: 15, color: Color(0xFFFFFFFF)),
                  ))),
        ],
      ),
    );
  }
}

class RoundIconButton extends StatelessWidget {
  final Widget cC;
  final Function oP;
  RoundIconButton({this.cC, this.oP});
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      constraints: BoxConstraints.tightFor(height: 56.0, width: 56.0),
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
      onPressed: oP,
      child: cC,
      elevation: 0,
    );
  }
}

// class RoundIconButton extends StatefulWidget {
//   @override
//   _RoundIconButtonState createState() => _RoundIconButtonState();
// }

// class _RoundIconButtonState extends State<RoundIconButton> {
//   final Widget cC;
//   RoundIconButton({this.cC});
//   @override
//   Widget build(BuildContext context) {
//     return RawMaterialButton(
//       constraints: BoxConstraints.tightFor(height: 56.0, width: 56.0),
//       shape: CircleBorder(),
//       fillColor: Color(0xFF4C4F5E),
//       onPressed: () {},
//       child: cC,
//       elevation: 0,
//     );
//   }
// }
