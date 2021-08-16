import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

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
          Padding(
            padding: EdgeInsets.all(20.0),
            child: Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: HexColor('#1D1F33'),
                  ),
                  height: 200,
                  width: 150,
                  child: Text(''),
                ),
                SizedBox(width: 20),
                Container(
                  // decoration: BoxDecoration(),
                  height: 200,
                  width: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: HexColor('#1D1F33'),
                  ),
                  child: Text(''),
                ),
              ],
            ),
          ),
          Container(
            height: 200,
            width: 320,
            color: HexColor('#1D1F33'),
          ),
          Padding(
            padding: EdgeInsets.all(20.0),
            child: Row(
              children: [
                Container(
                  //decoration: BoxDecoration(),
                  height: 200,
                  width: 150,
                  color: HexColor('#1D1F33'),
                  child: Text(''),
                ),
                SizedBox(width: 20),
                Container(
                  // decoration: BoxDecoration(),
                  height: 200,
                  width: 150,
                  color: HexColor('#1D1F33'),
                  child: Text(''),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
