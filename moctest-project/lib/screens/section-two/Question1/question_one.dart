import 'package:flutter/material.dart';

import '../../section_one/question_one/question_one_help.dart';
import '../Question2/question_two.dart';
import '../exit_section.dart';
import '../help_page.dart';
import '../quit_page.dart';
import '../review_page.dart';

class QuestionOne extends StatefulWidget {
  const QuestionOne({super.key});

  @override
  _TestCenterState createState() => _TestCenterState();
}

class _TestCenterState extends State<QuestionOne> {
  String? selectedOption;

  bool isChecked = false;

  final TextEditingController _controller = TextEditingController();

  // Stores the state of questions (marked and selected answers)
  Map<int, bool> markedQuestions = {};
  Map<int, String?> selectedAnswers = {};

  // Stores the previous state of the text for undo functionality
  List<String> _history = [];
  int _historyIndex = -1;

  @override
  void initState() {
    super.initState();
  }

  // When an answer is selected, store the answer in the selectedAnswers map
  void _selectAnswer(int questionIndex, String option) {
    setState(() {
      selectedAnswers[questionIndex] = option;
    });
  }

  // Cut: Copy the current text to the clipboard and clear it
  void _cut() {
    // Copy to clipboard and clear the text field
    final clipboardText = _controller.text;
    _controller.clear();
    setState(() {
      _addToHistory('');
    });
  }

  // Paste: Paste the clipboard content into the text field
  void _paste() {
    // This is a placeholder for paste functionality, assuming we have something to paste
    // In real-world scenarios, you would paste content from the clipboard
    _controller.text = '';
    setState(() {
      _addToHistory(_controller.text);
    });
  }

  // Undo: Revert to the previous state of the text
  void _undo() {
    if (_historyIndex > 0) {
      setState(() {
        _historyIndex--;
        _controller.text = _history[_historyIndex];
      });
    }
  }

  // Redo: Reapply the undone change
  void _redo() {
    if (_historyIndex < _history.length - 1) {
      setState(() {
        _historyIndex++;
        _controller.text = _history[_historyIndex];
      });
    }
  }

  // Add current text to history for undo functionality
  void _addToHistory(String text) {
    if (_historyIndex < _history.length - 1) {
      _history = _history.sublist(0, _historyIndex + 1);
    }
    _history.add(text);
    _historyIndex++;
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
                                  MaterialPageRoute(builder: (context) => QuestionOneHelp() ),
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
                                // Navigator.push(
                                //   context,
                                //   MaterialPageRoute(builder: (context) => NextPage()),
                                // );
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
                                  MaterialPageRoute(builder: (context) => QuestionTwo()),
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
                            text: ' | Question 1 of 12', // The bold "Continue"
                            style: TextStyle(
                                fontSize: 13,),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 5,),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 600,
                          color: Colors.grey,
                          height: 40,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("Select one entry for the blank. Fill the blank in the way that best completes the text.", style: TextStyle(fontSize: 17),),
                          ),
                        ),
                        SizedBox(height: 100,),
                        Text(
                          "Dramatic literature often __________ the history of a culture in that it takes as its subject matter the important events that have shaped and guided the culture.",
                          style: TextStyle(fontSize: 16),
                        ),
                        SizedBox(height: 40),
                        Column(
                          children: [
                            _buildOption("confounds"),
                            _buildOption("repudiates"),
                            _buildOption("recapitulates"),
                            _buildOption("anticipates"),
                            _buildOption("polarizes"),
                          ],
                        ),
                        SizedBox(height: 250),
                        Container(
                          width: 250,
                          color: Colors.grey,
                          height: 40,
                          child: Center(child: Text("Select one answer choice.", style: TextStyle(fontSize: 17),)),
                        ),
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
  Widget _buildOption(String option) {
    bool isSelected = selectedOption == option;

    return GestureDetector(
      onTap: () {
        // Update the selected option when clicked
        setState(() {
          selectedOption = option;
        });
      },
      child: Container(
        width: 250,
        // margin: EdgeInsets.symmetric(vertical: 5),
        // padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        decoration: BoxDecoration(
          color: isSelected ? Colors.black : Colors.white,
          border: Border.all(color: Colors.black),
        ),
        child: Center(
          child: Text(
            option,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: isSelected ? Colors.white : Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}
