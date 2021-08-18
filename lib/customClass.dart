import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

const String color = '#1D1F33';
const activeCardColor = Color(0xFF1D1E33);
const inactiveCardColor = Color(0xFF111328);
const labelTextStyle = TextStyle(fontSize: 18, color: Color(0xFF8D8E98));

class CustomClass extends StatelessWidget {
  CustomClass(this.icon, this.text);
  final IconData icon;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Icon(
        icon,
        size: 80,
      ),
      SizedBox(height: 15),
      Text(
        '$text',
        style: labelTextStyle,
      )
    ]);
  }
}

class ReusableCard extends StatelessWidget {
  ReusableCard({this.colour, this.height, this.width, this.cC});
  final Color colour;
  final double height;
  final double width;
  final Widget cC;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: colour,
      ),
      height: height,
      width: width,
      child: cC,
    );
  }
}
