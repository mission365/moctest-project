import 'package:flutter/material.dart';
import 'package:moctest_project/screens/test_center.dart';

class PracticeTest extends StatelessWidget {
  const PracticeTest({super.key});

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
                          SizedBox(width: 400,),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => TestCenter()),
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
                          ),
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
                              "Practice Test",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 24),
                            ),
                            Divider(
                              color: Colors.black38,
                            ),
                            SizedBox(height: 50),
                            Text(
                              'This full-length practice test contains one Analytical Writing section, two Verbal Reasoning sections, and two Quantitative Reasoning sections. Although this practice test is untimed, your actual test will be timed; therefore, we have noted the timing of each section in the actual test at the beginning of the section.',
                              style: TextStyle(fontSize: 14),
                            ),
                            SizedBox(height: 20),
                            const Text(
                              'This practice test does not provide scores at the end of the test. However, once you have completed the test, you will be able to review the test and your answers. In the Verbal Reasoning and Quantitative Reasoning sections, you will be able to access your answer to each question and the correct answer. You will also be able to review scored sample essays with rater commentary for the essay task in the practice test.',
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