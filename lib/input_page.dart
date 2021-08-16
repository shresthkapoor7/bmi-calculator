import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

_Container obj = new _Container();

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
                Expanded(child: obj.element(180, 150, '#1D1F33', '')),
                Expanded(child: obj.element(180, 150, '#1D1F33', '')),
              ],
            ),
          ),
          Expanded(child: obj.element(180, 340, '#1D1F33', '')),
          Expanded(
            child: Row(
              children: [
                Expanded(child: obj.element(180, 150, '#1D1F33', '')),
                Expanded(child: obj.element(180, 150, '#1D1F33', '')),
              ],
            ),
          ),
          obj.element(70, 500, '#EB1555', 'CALCULATE'),
        ],
      ),
    );
  }
}

class _Container {
  int height = 0;
  int width = 0;
  _Container();
  Container element(double h, double w, String c, String t) {
    return Container(
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: HexColor('$c'),
      ),
      height: h,
      width: w,
      child: TextButton(
          onPressed: () {},
          child: Text(
            '$t',
            style: TextStyle(color: Colors.white, fontSize: 15),
          )),
    );
  }
}
