import 'package:flutter/material.dart';
import 'package:moctest_project/screens/section_one/analytical_writing_page.dart';

class GeneralTest extends StatelessWidget {
  const GeneralTest({super.key});

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
                              onTap: (){
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => AnalyticalWritingPage()),
                                );
                              },
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
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.only(left:140.0, right:140.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "General Test Information",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 24),
                        ),
                        Divider(
                          color: Colors.black38,
                        ),
                        SizedBox(height: 25),
                        Text(
                          "Timing Information",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Total testing time on this test is 1 hour and 58 minutes (standard time).',
                          style: TextStyle(fontSize: 14),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'If you wish to leave your seat during the test, please raise your hand or otherwise indicate that you need the administrator - timing will not stop.',
                          style: TextStyle(fontSize: 14),
                        ),
                        SizedBox(height: 20),
                        Text(
                          "Test Information",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),

                        SizedBox(height: 20),
                        Text(
                          "If you have a concern about the wording of a test question, please note the question number and continue the test. Report your concern to the administrator after you complete the test.",
                          style: TextStyle(
                              fontSize: 15),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'No credit will be given for any responses marked on scratch paper. Use the scratch paper to work out your answers. All scratch paper must be turned in to the administrator (or erased in front of the administrator in an at-home test) at the end of the testing session.',
                          style: TextStyle(fontSize: 15),
                        ),
                        SizedBox(height: 10),
                        const Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text: 'Within a timed section you may skip any question and return to it later before you exit the section. You should answer as many questions as possible during the test and manage your time with this in mind. Use the Review button at any time during the test to ', // Regular text before "Continue"
                                style: TextStyle(fontSize: 15),
                              ),
                              TextSpan(
                                text: 'review', // The bold "Continue"
                                style: TextStyle(
                                    fontSize: 13, fontWeight: FontWeight.bold),
                              ),
                              TextSpan(
                                text: ' which questions you have answered and which questions you have skipped.',
                                style: TextStyle(fontSize: 15),
                              ),
                            ],
                          ),
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