import 'package:flutter/material.dart';
import 'constants.dart';

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
        style: klabelTextStyle,
      )
    ]);
  }
}

class ReusableCard extends StatelessWidget {
  ReusableCard({this.colour, this.height, this.width, this.cC, this.F});
  final Color colour;
  final double height;
  final double width;
  final Widget cC;
  final Function F;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: F,
      child: Container(
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: colour,
        ),
        height: height,
        width: width,
        child: cC,
      ),
    );
  }
}
