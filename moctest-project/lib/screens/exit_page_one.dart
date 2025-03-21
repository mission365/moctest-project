import 'package:flutter/material.dart';

class ExitPageOne extends StatelessWidget {
  const ExitPageOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 50,
              color: Color(0xFF393736),
              child: Padding(
                padding: const EdgeInsets.only(left: 30.0),
                child: Text(
                  "*gre",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),
                ),
              ),
            ),
            SizedBox(height: 200,),
            Container(
              width: double.infinity,
              height: 300,
              child: Center(
                child: Text(
                  "You have successfully ended the test session\nand your work has been saved.\n\nYou may now close the browser.",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
                  textAlign: TextAlign.center, // Center the text
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}