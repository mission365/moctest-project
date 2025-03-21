import 'package:flutter/material.dart';
import 'package:moctest_project/screens/section_one/analytical_writing_page.dart';

class HelpPage extends StatefulWidget {
  const HelpPage({super.key});

  @override
  State<HelpPage> createState() => _HelpPageState();
}

class _HelpPageState extends State<HelpPage> {
  Widget displayedText = Text("Click to see");
  void updateText(String section) {
    setState(() {
      if (section == 'Section Directions') {
        displayedText = Padding(
          padding: const EdgeInsets.only(left:90.0, right:90.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Analytical Writing",
                style: TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 24),
              ),
              Divider(
                color: Colors.black38,
              ),
              SizedBox(height: 30),
              Text(
                'This section consists of a timed Analyze an Issue writing task. Standard timing for this section is 30 minutes. The timer displays the time remaining for the task.',
                style: TextStyle(fontSize: 14),
              ),
              SizedBox(height: 15),
              Text(
                "Important Notice",
                style: TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 16),
              ),
              SizedBox(height: 10),
              Text(
                'Your essay response on the Analytical Writing section will be reviewed by ETS essay-similarity-detection software and by experienced essay readers during the scoring process. In light of the high value placed on independent intellectual activity within graduate schools and universities, your essay response should represent your original work. ETS reserves the right to cancel test scores of any test taker when an essay response includes, but is not limited to, any of the following:',
                style: TextStyle(fontSize: 14),
              ),
              SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.only(left:10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.circle, size: 10, color: Colors.black),
                    SizedBox(width: 6),
                    Expanded(
                      child: Text(
                        'text that is unusually similar to that found in one or more other test essay responses;',
                        style: TextStyle(fontSize: 14),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left:10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 7.0),
                      child: Icon(Icons.circle, size: 10, color: Colors.black),
                    ),
                    SizedBox(width: 6),
                    Expanded(
                      child: Text(
                        'quoting or paraphrasing, without attribution, language that appears in published or unpublished sources; including sources from the Internet and/or sources provided by any third party;',
                        style: TextStyle(fontSize: 14),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left:10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 6.0),
                      child: Icon(Icons.circle, size: 10, color: Colors.black),
                    ),
                    SizedBox(width: 6),
                    Expanded(
                      child: Text(
                        'unacknowledged use of work that has been produced through collaboration with others without citation of the contribution of others;',
                        style: TextStyle(fontSize: 14),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left:10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 6.0),
                      child: Icon(Icons.circle, size: 10, color: Colors.black),
                    ),
                    SizedBox(width: 6),
                    Expanded(
                      child: Text(
                        'essays submitted as work of the test taker that appear to have been borrowed in whole or in part from elsewhere or prepared by another person.',
                        style: TextStyle(fontSize: 14),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Text(
                'When one or more of the preceding circumstances occurs, ETS may conclude, in its professional judgment, that the essay response does not reflect the independent writing skills that this test seeks to measure. When ETS reaches that conclusion, it cancels the Analytical Writing score, and because Analytical Writing scores are an integral part of the GRE General Test scores, those scores are canceled as well.',
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
        );  // Your text for Section Directions
      }
      else if (section == 'General Directions') {
        displayedText =  Padding(
          padding: const EdgeInsets.only(left:90.0, right:90.0),
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
        );  // Your text for General Directions
      }
      else if (section == 'Testing Tools') {
        displayedText = Padding(
          padding: const EdgeInsets.only(left:10.0, right:10.0, top: 250),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Testing Tools",
                style: TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 24),
              ),
              Divider(
                color: Colors.black38,
              ),
              SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.only(left: 90.0, right: 90.0),
                child: Row(
                  children: [
                    Container(
                      color: Color(0xFF365E90),
                      width: 50,
                      height: 50,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Next',
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
                    SizedBox(width: 80,),
                    Flexible(
                      child: Text(
                        'After you answer a question, select Next. You may still return to the question and change your answer after selecting Next.',
                        style: TextStyle(fontSize: 14),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 90.0, right: 90.0),
                child: Divider(),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 90.0, right: 90.0),
                child: Row(
                  children: [
                    Container(
                      color: Color(0xFF4D4C4D),
                      width: 70,
                      height: 50,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Help',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15)),
                          Icon(
                            Icons.help,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 60,),
                    Flexible(
                      child: Text(
                        'By selecting Help, you can get information on different topics. The topics are presented on different tabs. You are now in Help.',
                        style: TextStyle(fontSize: 14),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 90.0, right: 90.0),
                child: Divider(),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 90.0, right: 90.0),
                child: Row(
                  children: [
                    Container(
                      color: Color(0xFF655060),
                      width: 100,
                      height: 50,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Quit w/Save',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15)),
                          Icon(
                            Icons.file_open_outlined,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 30,),
                    Flexible(
                      child: Text(
                        'Selecting Quit with Save will end your testing session. The responses you have already provided will be saved. You can return to complete your test at another time.',
                        style: TextStyle(fontSize: 14),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: const Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: 'Select ', // Regular text before "Continue"
                        style: TextStyle(fontSize: 13),
                      ),
                      TextSpan(
                        text: 'Return', // The bold "Continue"
                        style: TextStyle(
                            fontSize: 13, fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text: ' to go on.', // Regular text after "Continue"
                        style: TextStyle(fontSize: 13),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
            ],
          ),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 300.0,
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
                                  fontSize: 20)),
                          SizedBox(width: 439),
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
                                    Text('Return',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 15)),
                                    Icon(
                                      Icons.arrow_back,
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
                    width: double.infinity,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      TextButton(
                        onPressed: () => updateText('Section Directions'),
                        child: const Text('Section Directions'),
                      ),
                      const SizedBox(width: 10),
                      TextButton(
                        onPressed: () => updateText('General Directions'),
                        child: const Text('General Directions'),
                      ),
                      const SizedBox(width: 10),
                      TextButton(
                        onPressed: () => updateText('Testing Tools'),
                        child: const Text('Testing Tools'),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      displayedText
                    ],
                  )
                ],
              ),
            ),
          ),
          Container(
            width: 300.0,
            color: Color(0xFFB4B4B4),
          ),
        ],
      ),
    );
  }
}

