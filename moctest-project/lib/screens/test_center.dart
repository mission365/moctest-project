import 'package:flutter/material.dart';
import 'package:moctest_project/screens/confidentiality_page.dart';

class TestCenter extends StatelessWidget {
  const TestCenter({super.key});

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
                          Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => ConfidentialityPage()),
                                );
                              },
                              child: Container(
                                color: Color(0xFF365E90),
                                width: 100,
                                height: 50,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Continue',
                                      style: TextStyle(color: Colors.white, fontSize: 15),
                                    ),
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
                    padding: const EdgeInsets.only(left:140.0, right:140.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Test Center Regulation",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 24),
                        ),
                        Divider(
                          color: Colors.black38,
                        ),
                        SizedBox(height: 50),
                        Text(
                          'You should have nothing on your computer table except your identification, pencil, and provided scratch paper. The official time will be kept by the computer. A test administrator is authorized to dismiss you from a test session and/or your scores may be withheld and ultimately canceled for any actions that violate the policies and procedures set forth herein and/or communicated at the test center including, but not limited to:',
                          style: TextStyle(fontSize: 14),
                        ),
                        SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(Icons.circle, size: 10, color: Colors.black),
                            SizedBox(width: 10),
                            Expanded(
                              child: Text(
                                'Attempting to take the test for someone else or having someone else take the test for you',
                                style: TextStyle(fontSize: 14),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            Icon(Icons.circle, size: 10, color: Colors.black),
                            SizedBox(width: 10),
                            Expanded(
                              child: Text(
                                'Failing to provide acceptable identification',
                                style: TextStyle(fontSize: 14),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 5.0),
                              child: Icon(Icons.circle, size: 10, color: Colors.black),
                            ),
                            SizedBox(width: 10),
                            Expanded(
                              child: Text(
                                'Obtaining improper access to the test content, a part of the test or information about the test. This includes having test questions or answers in advance of the test administration and bringing preknowledge of test information into the test center in any form including, but not limited to, identification documents, prohibited devices, and any other method listed as an aid in connection to the test.',
                                style: TextStyle(fontSize: 14),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 5.0),
                              child: Icon(Icons.circle, size: 10, color: Colors.black),
                            ),
                            SizedBox(width: 10),
                            Expanded(
                              child: Text(
                                'Using or having any prohibited device (e.g., phones, PDAs, all watches, including digital, analog, and smartwatches, and other electronic, recording, listening, scanning, or photographic devices) in your possession during the test administration, including during breaks.',
                                style: TextStyle(fontSize: 14),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 5.0),
                              child: Icon(Icons.circle, size: 10, color: Colors.black),
                            ),
                            SizedBox(width: 10),
                            Expanded(
                              child: Text(
                                'Using any aids in connection with the test, including, without limitation: mechanical pencils, mechanical erasers, pens, pagers, beepers, all watches, including digital, analog, and smartwatches, books, pamphlets, notes, unauthorized scratch paper, rulers, highlighter pens, scan pens or scanning devices, dictionaries, translators, compasses, protractors, and any handheld electronic scanning, listening, recording, or photographic devices.',
                                style: TextStyle(fontSize: 14),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 5.0),
                              child: Icon(Icons.circle, size: 10, color: Colors.black),
                            ),
                            SizedBox(width: 10),
                            Expanded(
                              child: Text(
                                'Creating a disturbance or disruptive behavior in any form will not be tolerated. The test administrator has sole discretion in determining what constitutes disruptive behavior.',
                                style: TextStyle(fontSize: 14),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 5.0),
                              child: Icon(Icons.circle, size: 10, color: Colors.black),
                            ),
                            SizedBox(width: 10),
                            Expanded(
                              child: Text(
                                'Attempting to give or receive assistance or communication in any form is not permitted during the test administration. Discussion or sharing of test content or answers during the test administration, including breaks, and after the test administration, is prohibited.',
                                style: TextStyle(fontSize: 14),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 5.0),
                              child: Icon(Icons.circle, size: 10, color: Colors.black),
                            ),
                            SizedBox(width: 10),
                            Expanded(
                              child: Text(
                                'Removing or attempting to remove test content from the test center. Under no circumstances may test content or any part of the test content be removed, reproduced, and/or disclosed by any means (e.g., hard copy, verbally, electronically) to any person or entity.',
                                style: TextStyle(fontSize: 14),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 5.0),
                              child: Icon(Icons.circle, size: 10, color: Colors.black),
                            ),
                            SizedBox(width: 10),
                            Expanded(
                              child: Text(
                                'Tampering with a computer during a computer-delivered test administration',
                                style: TextStyle(fontSize: 14),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 5.0),
                              child: Icon(Icons.circle, size: 10, color: Colors.black),
                            ),
                            SizedBox(width: 10),
                            Expanded(
                              child: Text(
                                'Attempting to remove scratch paper (either partially or in its entirety) from the computer-delivered testing room or using scratch paper before the test, during untimed sections of the test, or during breaks.',
                                style: TextStyle(fontSize: 14),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 5.0),
                              child: Icon(Icons.circle, size: 10, color: Colors.black),
                            ),
                            SizedBox(width: 10),
                            Expanded(
                              child: Text(
                                'Bringing food, beverages, or tobacco into the testing room.',
                                style: TextStyle(fontSize: 14),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 5.0),
                              child: Icon(Icons.circle, size: 10, color: Colors.black),
                            ),
                            SizedBox(width: 10),
                            Expanded(
                              child: Text(
                                'Bringing a weapon or firearm into the test center.',
                                style: TextStyle(fontSize: 14),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 5.0),
                              child: Icon(Icons.circle, size: 10, color: Colors.black),
                            ),
                            SizedBox(width: 10),
                            Expanded(
                              child: Text(
                                'Leaving the test center vicinity during the test session or during breaks',
                                style: TextStyle(fontSize: 14),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 5.0),
                              child: Icon(Icons.circle, size: 10, color: Colors.black),
                            ),
                            SizedBox(width: 10),
                            Expanded(
                              child: Text(
                                'Leaving the testing room without permission. You are not permitted to go outside the test center building unless it is to use the restroom during the test administration, including breaks.',
                                style: TextStyle(fontSize: 14),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 5.0),
                              child: Icon(Icons.circle, size: 10, color: Colors.black),
                            ),
                            SizedBox(width: 10),
                            Expanded(
                              child: Text(
                                'Taking excessive or extended unscheduled breaks during the test session. Test center administrators are required to strictly monitor unscheduled breaks and report test takers who take excessive or extended breaks.',
                                style: TextStyle(fontSize: 14),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 5.0),
                              child: Icon(Icons.circle, size: 10, color: Colors.black),
                            ),
                            SizedBox(width: 10),
                            Expanded(
                              child: Text(
                                'Failing to follow any of the test administration regulations contained in the GRE Information Bulletin, on the GRE website, given by the test administrator or specified in any test materials',
                                style: TextStyle(fontSize: 14),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 20),
                        const Text(
                          'ETS reserves the right to take action for failure to comply with test administration regulations or the test administrator''s directions. Such action may include, but is not limited to, barring you from future testing and/or withholding or canceling your scores. If your scores are canceled, they will not be reported, and your registration and test fees will not be refunded. Reports of cheating or fraud will be investigated thoroughly and offenders may be prosecuted to the full extent of the applicable laws.',
                          style: TextStyle(fontSize: 14),
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
                        ),
                        SizedBox(height: 20),
                      ],
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