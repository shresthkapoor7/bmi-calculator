import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hexcolor/hexcolor.dart';
import 'customClass.dart';

container obj = new container();

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
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
                    child: obj.element(180, 150, color,
                        CustomClass(FontAwesomeIcons.mars, 'MALE'))),
                Expanded(
                    child: obj.element(180, 150, color,
                        CustomClass(FontAwesomeIcons.venus, 'FEMALE'))),
              ],
            ),
          ),
          Expanded(
              child: obj.element(
                  180,
                  340,
                  color,
                  Column(children: [
                    Icon(
                      FontAwesomeIcons.mars,
                      size: 80,
                    ),
                    Text('MALE')
                  ]))),
          Expanded(
            child: Row(
              children: [
                Expanded(
                    child: obj.element(
                        180,
                        150,
                        color,
                        Column(children: [
                          Icon(
                            FontAwesomeIcons.mars,
                            size: 80,
                          ),
                          Text('MALE')
                        ]))),
                Expanded(
                    child: obj.element(
                        180,
                        150,
                        color,
                        Column(children: [
                          Icon(
                            FontAwesomeIcons.mars,
                            size: 80,
                          ),
                          Text('MALE')
                        ]))),
              ],
            ),
          ),
          Container(
              height: 70,
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
