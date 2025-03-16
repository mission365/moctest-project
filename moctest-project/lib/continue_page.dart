import 'package:flutter/material.dart';
import 'package:moctest_project/screens/test_taking.dart';

class ContinuePage extends StatelessWidget {
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
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start, // Align everything to the left
                  children: [
                    // GRE Container with specified color and height
                    Container(
                      padding: EdgeInsets.only(left: 20.0, top: 5),
                      width: double.infinity,
                      height: 60.0,
                      child: Text("*gre", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),// Set the specified color
                    ),
                    Container(
                      width: double.infinity,
                      height: 30.0,
                      color: Color(0xFFCC6813), // Set the specified color
                    ),
                    SizedBox(height: 16), // Add spacing between sections

                    // Main content container (removed the Card widget as requested)
                    Container(
                      padding: const EdgeInsets.only(left: 40.0, right: 40.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'POWERPREP™ Online',
                            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 8),
                          Text(
                            'POWERPREP Online Untimed Test',
                            style: TextStyle(fontSize: 30),
                          ),
                          SizedBox(height: 16),
                          Text('Name:', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                          SizedBox(height: 10),

                          // RichText for bolding only "Start Date" and "Status"
                          RichText(
                            text: TextSpan(
                              style: TextStyle(fontSize: 16), // default style
                              children: [
                                TextSpan(
                                  text: 'Start Date: ',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                TextSpan(
                                  text: 'March 9, 2025',
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 12),
                          RichText(
                            text: TextSpan(
                              style: TextStyle(fontSize: 16), // default style
                              children: [
                                TextSpan(
                                  text: 'Status: ',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                TextSpan(
                                  text: 'In Progress...',
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 20),
                          // Replaced ElevatedButton with TextButton
                          TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => TestTaking()),
                              );
                            },
                            child: Text('Continue Test'),
                            style: TextButton.styleFrom(
                              foregroundColor: Colors.white, backgroundColor: Color(0xFF337AB7), // Set button color
                              padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 24.0), // Padding
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(3.0), // Rounded corners
                              ),
                              textStyle: TextStyle(fontSize: 16), // Text style
                            ),
                          ),
                          SizedBox(height: 30),
                          Divider(),
                          SizedBox(height: 15),
                          Text(
                            'Copyright © 2025 by Educational Testing Service. All rights reserved. '
                                'ETS, GRADUATE RECORD EXAMINATIONS and GRE are registered trademarks of Educational Testing Service (ETS) in the United States and other countries. '
                                'The Eight-Point logo is a trademark of ETS.',
                            style: TextStyle(fontSize: 16),
                            // textAlign: TextAlign.center,
                          ),
                        ],
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
