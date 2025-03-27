import 'package:flutter/material.dart';
import 'package:moctest_project/screens/section-two/Question7/question_seven.dart';
class QuestionSevenHelp extends StatefulWidget {
  const QuestionSevenHelp({super.key});

  @override
  State<QuestionSevenHelp> createState() => _HelpPageState();
}

class _HelpPageState extends State<QuestionSevenHelp> {
  Widget displayedText = Text("Click to see");
  void updateText(String section) {
    setState(() {
      if (section == 'Question Directions') {
        displayedText = Padding(
          padding: const EdgeInsets.only(left:90.0, right:90.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Sentence Equivalence Question",
                style: TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 20),
              ),
              Divider(
                color: Colors.black38,
              ),
              SizedBox(height: 30),
              const Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: 'Select exactly two answer choices.', // Regular text before "Continue"
                      style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Text(
                "To select an answer choice, click on it or select it with the keyboard. To deselect a choice, click on it or select it again, or select another choice.",
                style: TextStyle(fontSize: 13),
              ),
              SizedBox(height: 10),
              Text(
                "No credit is given unless you select the two correct choices and no others.",
                style: TextStyle(fontSize: 13),
              ),
              SizedBox(height: 10),
              Text(
                "Example:",
                style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 30),
              Container(
                width: 750,
                color: Colors.grey,
                height: 65,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Select the two answer choices that, when used to complete the sentence, fit the meaning of the sentence as a whole and produce completed sentences that are alike in meaning.", style: TextStyle(fontSize: 17)),
                ),
              ),
              SizedBox(height: 50),
              Padding(
                padding: const EdgeInsets.only(left:70.0,right: 70),
                child: Text(
                  "Cynics believe that people who _______ compliments do so in order to be praised twice.",
                  style: TextStyle(fontSize: 16),
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 320.0, right: 320),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Checkbox(
                          value: false,
                          onChanged: null, // Disable interaction
                        ),
                        Text('conjure up'),
                      ],
                    ),
                    Row(
                      children: [
                        Checkbox(
                          value: false,
                          onChanged: null, // Disable interaction
                        ),
                        Text('covet'),
                      ],
                    ),
                    Row(
                      children: [
                        Checkbox(
                          value: true, // This is checked
                          onChanged: null, // Disable interaction
                        ),
                        Text('deflect'),
                      ],
                    ),
                    Row(
                      children: [
                        Checkbox(
                          value: false,
                          onChanged: null, // Disable interaction
                        ),
                        Text('grasp'),
                      ],
                    ),
                    Row(
                      children: [
                        Checkbox(
                          value: true, // This is checked
                          onChanged: null, // Disable interaction
                        ),
                        Text('shrug off'),
                      ],
                    ),
                    Row(
                      children: [
                        Checkbox(
                          value: false,
                          onChanged: null, // Disable interaction
                        ),
                        Text('understand'),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Center(
                child: Container(
                  width: 250,
                  color: Colors.grey,
                  height: 40,
                  child: Center(child: Text("Select two answer choice.", style: TextStyle(fontSize: 17),)),
                ),
              ),
              SizedBox(height: 20),
            ],
          ),
        );  // Your text for Section Directions
      }
      else if (section == 'Section Directions') {
        displayedText = Padding(
          padding: const EdgeInsets.only(left:90.0, right:90.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Verbal Reasoning",
                style: TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 20),
              ),
              Text(
                "12 Questions",
                style: TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 15),
              ),
              Text(
                "18 minutes",
                style: TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 15),
              ),
              Divider(
                color: Colors.black38,
              ),
              SizedBox(height: 30),
              const Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: 'For each question, indicate the best answer using the directions given. If you need more detailed directions, select ', // Regular text before "Continue"
                      style: TextStyle(fontSize: 13),
                    ),
                    TextSpan(
                      text: 'Help ', // The bold "Continue"
                      style: TextStyle(
                          fontSize: 13, fontWeight: FontWeight.bold),
                    ),
                    TextSpan(
                      text: 'at any time.', // Regular text after "Continue"
                      style: TextStyle(fontSize: 13),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Text.rich(
                  TextSpan(
                      children: [
                        TextSpan(
                          text: 'If a question has answer choices with ', // Regular text before "Continue"
                          style: TextStyle(fontSize: 13),
                        ),TextSpan(
                          text: 'ovals ', // Regular text before "Continue"
                          style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                          text: '(●), then the correct answer consists of a single choice. If a question has answer choices with ', // Regular text before "Continue"
                          style: TextStyle(fontSize: 13),
                        ),
                        TextSpan(
                          text: 'square boxes ', // Regular text before "Continue"
                          style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                          text: '(□), then the correct answer consists of one or more answer choices. Read the directions for each question carefully. The directions will indicate if you should select one or more answer choices. To answer questions based on a reading passage, you may need to scroll to read the entire passage. You may also use your keyboard to navigate through the passage.', // Regular text before "Continue"
                          style: TextStyle(fontSize: 13,),
                        ),
                      ]
                  )
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
          padding: const EdgeInsets.only(left:10.0, right:10.0, top: 20),
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

              //next
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
                        child: RichText(
                          text: TextSpan(
                            style: TextStyle(fontSize: 14, color: Colors.black),
                            children: <TextSpan>[
                              TextSpan(text: 'After you answer a question, select '),
                              TextSpan(
                                text: 'Next',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              TextSpan(
                                text: '. You may still return to the question and change your answer after selecting ',
                              ),
                              TextSpan(
                                text: 'Next.',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        )
                    ),
                  ],
                ),
              ),

              //divider
              Padding(
                padding: const EdgeInsets.only(left: 90.0, right: 90.0),
                child: Divider(),
              ),

              //back
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
                          Text('Back',
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
                    SizedBox(width: 80,),
                    Flexible(
                        child: RichText(
                          text: TextSpan(
                            style: TextStyle(fontSize: 14, color: Colors.black),
                            children: <TextSpan>[
                              TextSpan(text: 'Selecting '),
                              TextSpan(
                                text: 'Back ',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              TextSpan(
                                text: 'will take you to the previous screen or question.',
                              ),
                            ],
                          ),
                        )
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 90.0, right: 90.0),
                child: Divider(),
              ),

              //help
              Padding(
                padding: const EdgeInsets.only(left: 90.0, right: 90.0),
                child: Row(
                  children: [
                    Container(
                      color: Color(0xFF4D4C4D),
                      width: 50,
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

              //review
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
                          Text('Review',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15)),
                          Icon(
                            Icons.bookmark,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 60,),
                    Flexible(
                        child: RichText(
                          text: TextSpan(
                            style: TextStyle(fontSize: 14, color: Colors.black),
                            children: <TextSpan>[
                              TextSpan(text: 'Selecting '),
                              TextSpan(
                                text: 'Review ',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              TextSpan(
                                text: 'will allow you to access the ',
                              ),
                              TextSpan(text: 'Review ', style: TextStyle(fontWeight: FontWeight.bold),),
                              TextSpan(text: 'screen. The Review screen lists all of the questions in the section and their status. The '),
                              TextSpan(text: 'Status ', style: TextStyle(fontWeight: FontWeight.bold),),
                              TextSpan(text: 'column indicates whether a question is answered, incomplete, not answered, or not yet presented. The '),
                              TextSpan(text: 'Mark ', style: TextStyle(fontWeight: FontWeight.bold),),
                              TextSpan(text: 'column indicates all questions you marked for review. The question you were reviewing last is presented when you enter the Review screen.'),
                            ],
                          ),
                        )
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 90.0, right: 90.0),
                child: Divider(),
              ),

              //Mark
              Padding(
                padding: const EdgeInsets.only(left: 90.0, right: 90.0),
                child: Row(
                  children: [
                    Container(
                      color: Color(0xFF4D4C4D),
                      width: 50,
                      height: 50,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Mark',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15)),
                          Icon(
                            Icons.rectangle_outlined,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 60,),
                    Flexible(
                        child: RichText(
                          text: TextSpan(
                            style: TextStyle(fontSize: 14, color: Colors.black),
                            children: <TextSpan>[
                              TextSpan(text: 'Selecting '),
                              TextSpan(
                                text: 'Mark ',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              TextSpan(
                                text: 'will place a check mark in the Review screen next to a question you may want to review again. Selecting ',
                              ),
                              TextSpan(
                                text: 'Mark ',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              TextSpan(text: 'again will remove the check mark. A question will remain marked until you unmark it, even if you change your answer. Marking a question in no way affects your answer.'),
                            ],
                          ),
                        )
                    ),
                  ],
                ),
              ),

              //Exit Section
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
                          Text('Exit Section',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15)),
                          Icon(
                            Icons.exit_to_app_outlined,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 30,),
                    Flexible(
                        child: RichText(
                          text: TextSpan(
                            style: TextStyle(fontSize: 14, color: Colors.black),
                            children: <TextSpan>[
                              TextSpan(text: 'Selecting '),
                              TextSpan(
                                text: 'Exit Section ',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              TextSpan(
                                text: 'will allow you to exit the section. Once you exit a section, you will not be able to return to it.',
                              ),
                            ],
                          ),
                        )
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
              SizedBox(height: 40),
              Padding(
                padding: const EdgeInsets.only(left: 40.0),
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
                                  MaterialPageRoute(builder: (context) => QuestionSeven()),
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
                        onPressed: () => updateText('Question Directions'),
                        child: const Text('Question Directions'),
                      ),
                      const SizedBox(width: 10),
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

