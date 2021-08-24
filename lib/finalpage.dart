import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';
import 'input_page.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          'BMI CALCULATOR',
        ),
        centerTitle: true,
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 20.0, left: 20),
              child: Text(
                'Your Result',
                style: TextStyle(
                    fontSize: 35,
                    color: Color(0xFFFFFFFF),
                    fontWeight: FontWeight.w900),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 25.0, left: 25.0, right: 25.0),
              child: Container(
                padding: EdgeInsets.all(35),
                color: kactiveCardColor,
                width: double.infinity,
                height: 500,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      '$overview',
                      style: TextStyle(
                          color: overviewColor,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '$bmi',
                      style: TextStyle(
                          fontSize: 100,
                          color: Color(0xFFFFFFFF),
                          fontWeight: FontWeight.w900),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Normal BMI range:',
                      style: TextStyle(color: Color(0xFF818390), fontSize: 20),
                    ),
                    SizedBox(height: 5),
                    Text(
                      '18.5 - 25 kg/m2',
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(height: 25),
                    Text(
                      '$written',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 35),
                    Container(
                        decoration: BoxDecoration(
                            color: Color(0xFF191A2E),
                            borderRadius: BorderRadius.circular(10)),
                        width: double.infinity,
                        height: 60,
                        child: TextButton(
                            onPressed: () {},
                            child: Text(
                              'SAVE RESULT',
                              style: TextStyle(color: Colors.white),
                            ))),
                  ],
                ),
              ),
            ),
            Container(
                height: 60,
                width: double.infinity,
                color: Color(0xFFEB1555),
                child: TextButton(
                    onPressed: () {
                      setState(() {
                        Navigator.pop(context);
                      });
                    },
                    child: Text(
                      'RE-CALCULATE YOUR BMI',
                      style: TextStyle(fontSize: 15, color: Color(0xFFFFFFFF)),
                    ))),
          ],
        ),
      ),
    );
  }
}
