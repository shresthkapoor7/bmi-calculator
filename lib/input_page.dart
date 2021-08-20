import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hexcolor/hexcolor.dart';
import 'customClass.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

enum gender {
  male,
  female,
}

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
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                    child: ReusableCard(
                  height: 180,
                  width: 150,
                  colour: selectGender == gender.male
                      ? activeCardColor
                      : inactiveCardColor,
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
                            ? activeCardColor
                            : inactiveCardColor,
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
              colour: activeCardColor,
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    height: 180,
                    width: 150,
                    colour: activeCardColor,
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    height: 180,
                    width: 150,
                    colour: activeCardColor,
                  ),
                ),
              ],
            ),
          ),
          Container(
              height: 50,
              width: double.infinity,
              color: HexColor('#EB1555'),
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
