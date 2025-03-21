import 'package:flutter/material.dart';
import 'package:moctest_project/screens/copyright_info_page.dart';
import 'package:moctest_project/screens/exit_page_one.dart';

class TestTaking extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 230.0,
            color: Color(0xFFB4B4B4),
          ),
          Flexible(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 30),
                    height: 60,
                    color: Color(0xFF393736),
                    width: double.infinity,
                    child: Text('*gre.',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 30)),
                  ),
                  Container(
                      height: 30,
                      color: Color(0xFFF0E1E4),
                      width: double.infinity),
                  SizedBox(height: 150),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 120.0,
                        right: 470), // Keeping the original padding values
                    child: Container(
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Test Taker Information',
                            style: TextStyle(
                                fontSize: 35, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 15),
                          Text(
                            'Please check the following information. If this is correct, select the Continue button. If this is incorrect, select the Exit button.',
                            style: TextStyle(fontSize: 15),
                          ),
                          SizedBox(height: 30),
                          // Outlined container with info rows inside it
                          Container(
                            height: 150,
                            width: double.infinity,
                            padding: EdgeInsets.only(left: 20, top: 25),
                            decoration: BoxDecoration(
                              border:
                              Border.all(color: Colors.black, width: 0.2),
                            ),
                            child: SingleChildScrollView(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Test: POWERPREP Online Untimed Test',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15),
                                  ),
                                  SizedBox(height: 10),
                                  Text(
                                    'Name:',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15),
                                  ),
                                  SizedBox(height: 10),
                                  Text(
                                    'Test Taker ID: 0250000013212622',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: 40),
                          // Centering the buttons to prevent overflow
                          Row(
                            mainAxisAlignment: MainAxisAlignment
                                .start, // Buttons aligned to center
                            children: [
                              ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => ExitPageOne()),
                                  );
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor:
                                  Color(0xFF636363), // Exit button color
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 30, vertical: 12),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                ),
                                child: Text('Exit',
                                    style: TextStyle(
                                        fontSize: 18, color: Colors.white)),
                              ),
                              SizedBox(
                                  width: 10), // Added space between buttons
                              ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => CopyrightInfoPage()),
                                  );
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Color(
                                      0xFF2A64B6), // Continue button color
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 30, vertical: 12),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                ),
                                child: Text('Continue',
                                    style: TextStyle(
                                        fontSize: 18, color: Colors.white)),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
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