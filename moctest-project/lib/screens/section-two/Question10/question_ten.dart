import 'package:flutter/material.dart';
import 'package:moctest_project/screens/section-two/Question10/question_ten_help.dart';
import '../Question11/question_eleven.dart';
import '../Question9/question_nine.dart';
import '../exit_section.dart';
import '../quit_page.dart';
import '../review_page.dart';

class QuestionTen extends StatefulWidget {
  const QuestionTen({super.key});

  @override
  _TestCenterState createState() => _TestCenterState();
}

class _TestCenterState extends State<QuestionTen> {
  // Add separate variables for each blank
  String? selectedOption;

  bool isChecked = false;
  final TextEditingController _controller = TextEditingController();

  // Stores the state of questions (marked and selected answers)
  Map<int, bool> markedQuestions = {};
  Map<int, String?> selectedAnswers = {};

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
          // Wrap in a SingleChildScrollView to handle overflow
          Flexible(
            child: SingleChildScrollView( // Make the content scrollable vertically
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 20),
                    height: 60,
                    color: Color(0xFF393736),
                    width: double.infinity,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: '*gre. ', // Regular text before "Continue"
                                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold,color: Colors.white),
                                ),
                                TextSpan(
                                  text: 'POWERPREP Online Untimed Test', // The bold "Continue"
                                  style: TextStyle(
                                      fontSize: 13, fontWeight: FontWeight.bold, color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 112),
                          //exit section
                          Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => ExitSection() ),
                                );
                              },
                              child: Container(
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
                            ),
                          ),
                          //quit w/save
                          Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => QuitPage() ),
                                );
                              },
                              child: Container(
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
                            ),
                          ),
                          //mark
                          Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Container(
                              color: Color(0xFF4D4C4D),
                              width: 70,
                              height: 50,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Mark',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                    ),
                                  ),
                                  SizedBox(width: 5), // Add some space between text and checkbox
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        isChecked = !isChecked; // Toggle checkbox state
                                      });
                                    },
                                    child: Icon(
                                      isChecked
                                          ? Icons.check_box // Checked icon
                                          : Icons.check_box_outline_blank, // Unchecked icon
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          //review
                          Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => ReviewPage() ),
                                );
                              },
                              child: Container(
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
                            ),
                          ),
                          //help
                          Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => QuestionTenHelp() ),
                                );
                              },
                              child: Container(
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
                            ),
                          ),
                          //back
                          Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => QuestionNine() ),
                                );
                              },
                              child: Container(
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
                                      Icons.arrow_forward_outlined,
                                      color: Colors.white,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          //next
                          Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => QuestionEleven()),
                                );
                              },
                              child: Container(
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
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 4, left: 8),
                    height: 30,
                    color: Color(0xFFF0E1E4),
                    width: double.infinity,
                    child:  const Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: 'Section 2 of 5', // Regular text before "Continue"
                            style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
                          ),
                          TextSpan(
                            text: ' | Question 10 of 12', // The bold "Continue"
                            style: TextStyle(
                              fontSize: 13,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 5),
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Flexible(
                          child: Container(
                              width: 465,  // Set the width of the container
                              height: 1000,  // Set the height of the container
                              decoration: BoxDecoration(
                                border: Border.all(  // Set the border style
                                  color: Colors.black,  // Border color
                                  width: 0.5,  // Border width
                                ),
                              ),
                              child: Column(
                                children: [
                                  Container(
                                    color: Color(0xFF000080),
                                    width: 463,
                                    height: 15,
                                    child: Text("Question 10 to 12 are based on this passage.", style: TextStyle(color: Colors.white, fontSize: 10),),
                                  ),
                                  SizedBox(height: 10,),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text("In the 1980s, neuroscientists studying the brain processes underlying our sense of conscious will compared subjects' judgments regarding their subjective will to move (W) and actual movement (M) with objective electroencephalographic activity called readiness potential, or RP. As expected, W preceded M: subjects consciously perceived the intention to move as preceding a conscious experience of actually moving. This might seem to suggest an appropriate correspondence between the sequence of subjective experiences and the sequence of the underlying events in the brain. But researchers actually found a surprising temporal relation between subjective experience and objectively measured neural events: in direct contradiction of the classical conception of free will, neural preparation to move (RP) preceded conscious awareness of the intention to move (W) by hundreds of milliseconds."),
                                  ),
                                ],
                              )
                          ),
                        ),
                        SizedBox(width: 2,),
                        Flexible(
                          child: Container(
                              width: 465,  // Set the width of the container
                              height: 1000,  // Set the height of the container
                              decoration: BoxDecoration(
                                border: Border.all(  // Set the border style
                                  color: Colors.black,  // Border color
                                  width: 0.5,  // Border width
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Column(
                                  children: [
                                    Text(
                                      'Based on information contained in the passage, which of the following chains of events would most closely conform to the classical conception of free will?',
                                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(height: 20),
                                    _buildOption(
                                        'W followed by RP followed by M',
                                        'option1'),
                                    SizedBox(height: 15,),
                                    _buildOption(
                                        'RP followed by W followed by M',
                                        'option2'),
                                    SizedBox(height: 15,),
                                    _buildOption(
                                        'M followed by W followed by RP',
                                        'option3'),
                                    SizedBox(height: 15,),
                                    _buildOption(
                                        'RP followed by M followed by W',
                                        'option4'),
                                    SizedBox(height: 15,),
                                    _buildOption(
                                        'RP followed by W and M simultaneously',
                                        'option5'),
                                    SizedBox(height: 400,),
                                    Container(
                                      width: 290,
                                      color: Colors.grey,
                                      height: 40,
                                      child: Center(child: Text("Select one answer choice.", style: TextStyle(fontSize: 17))),
                                    ),
                                  ],
                                ),
                              )
                          ),
                        )
                      ],
                    ),
                  ),
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

  Widget _buildOption(String optionText, String optionValue) {
    bool isSelected = selectedOption == optionValue;

    return GestureDetector(
      onTap: () {
        setState(() {
          // Toggle selection: if the option is already selected, deselect it; otherwise, select it
          if (isSelected) {
            selectedOption = null;
          } else {
            selectedOption = optionValue;
          }
        });
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 20,
            height: 20,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: Colors.black,
                width: 2,
              ),
              color: isSelected ? Colors.black : Colors.white, // Fill with black when selected
            ),
          ),
          SizedBox(width: 10),
          Expanded(
            child: Text(
              optionText,
              style: TextStyle(fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }

}
