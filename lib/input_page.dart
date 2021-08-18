import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hexcolor/hexcolor.dart';
import 'customClass.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleColor = inactiveCardColor;
  Color femaleColor = inactiveCardColor;
  void changeColor(int gender) {
    if (gender == 1) {
      maleColor = activeCardColor;
      femaleColor = inactiveCardColor;
    } else {
      femaleColor = activeCardColor;
      maleColor = inactiveCardColor;
    }
  }

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
                    child: GestureDetector(
                  onTap: () {
                    setState(() {
                      changeColor(1);
                    });
                  },
                  child: ReusableCard(
                      height: 180,
                      width: 150,
                      colour: maleColor,
                      cC: CustomClass(FontAwesomeIcons.mars, 'MALE')),
                )),
                Expanded(
                    child: GestureDetector(
                  onTap: () {
                    setState(() {
                      changeColor(2);
                    });
                  },
                  child: ReusableCard(
                      height: 180,
                      width: 150,
                      colour: femaleColor,
                      cC: CustomClass(FontAwesomeIcons.venus, 'FEMALE')),
                )),
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
