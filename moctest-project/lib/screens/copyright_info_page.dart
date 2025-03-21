import 'package:flutter/material.dart';

import '../practice_test.dart';

class CopyrightInfoPage extends StatelessWidget {
  const CopyrightInfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 230.0,
            color: Color(0xFFB4B4B4),
          ),
          // Use Flexible to prevent horizontal overflow in Row
          Flexible(
            child: SingleChildScrollView( // Make the content scrollable vertically
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 30),
                    height: 60,
                    color: Color(0xFF393736),
                    width: double.infinity,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('*gre.  POWERPREP Online Untimed Test',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 30)),
                          SizedBox(width: 400),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
  context,
  MaterialPageRoute(builder: (context) => PracticeTest()),
);
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: Container(
                                color: Color(0xFF365E90),
                                width: 100,
                                height: 50,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('Continue',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 15)),
                                    Icon(
                                      Icons.arrow_forward_outlined,
                                      color: Colors.white,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                      height: 30,
                      color: Color(0xFFF0E1E4),
                      width: double.infinity),
                  SizedBox(height: 40),
                  Padding(
                    padding: const EdgeInsets.only(left: 140.0, right: 140.0),
                    child: Container(
                      width: double.infinity,
                      height: 500,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Copyright Information",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 24),
                            ),
                            Divider(
                              color: Colors.black38,
                            ),
                            SizedBox(height: 50),
                            Text("'GRADUATE RECORD EXAMINATIONS®'"),
                            Text(
                              "*gre",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 80,
                                color: Color(0xFF640E54),
                              ),
                            ),
                            SizedBox(height: 10),
                            Text(
                              'Copyright © 2024 by Educational Testing Service. All rights reserved. ETS, GRADUATE RECORD EXAMINATIONS and GRE are registered trademarks of Educational Testing Service (ETS) in the United States and other countries. The Eight-Point logo is a trademark of ETS.',
                              style: TextStyle(fontSize: 13),
                            ),
                            SizedBox(height: 20),
                            const Text(
                              'This test, its test delivery system, and all test questions contained in the following program are the unpublished confidential and proprietary materials of Educational Testing Service. No reproduction or disclosure permitted. Unauthorized reproduction in part or in whole of this test is prohibited. Violators will be prosecuted to the full extent of all applicable laws.',
                              style: TextStyle(fontSize: 13),
                            ),
                            SizedBox(height: 20),
                            const Text.rich(
                              TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'Select ', // Regular text before "Continue"
                                    style: TextStyle(fontSize: 13),
                                  ),
                                  TextSpan(
                                    text: 'Continue', // The bold "Continue"
                                    style: TextStyle(
                                        fontSize: 13, fontWeight: FontWeight.bold),
                                  ),
                                  TextSpan(
                                    text: ' to proceed.', // Regular text after "Continue"
                                    style: TextStyle(fontSize: 13),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
            width: 230.0,
            color: Color(0xFFB4B4B4),
          ),
        ],
      ),
    );
  }
}
