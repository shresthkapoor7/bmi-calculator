import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

const String color = '#1D1F33';
const activeCardColor = Color(0xFF1D1E33);
const labelTextStyle = TextStyle(fontSize: 18, color: Color(0xFF8D8E98));

class CustomClass extends StatelessWidget {
  CustomClass(this.iconn, this.textt);
  final IconData iconn;
  final String textt;
  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Icon(
        iconn,
        size: 80,
      ),
      SizedBox(height: 20),
      Text(
        '$textt',
        style: labelTextStyle,
      )
    ]);
  }
}

class container {
  int height = 0;
  int width = 0;
  container();
  Widget cardChild;
  Container element(double h, double w, String c, Widget cC) {
    return Container(
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: HexColor('$c'),
      ),
      height: h,
      width: w,
      child: cC,
    );
  }
}
