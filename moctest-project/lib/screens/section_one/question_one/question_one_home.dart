import 'package:flutter/material.dart';
import 'package:moctest_project/screens/section_one/question_one/question_one_help.dart';
import 'package:moctest_project/screens/section_one/question_one/question_one_next.dart';

import '../../../quit_page.dart';

class QuestionOneHome extends StatefulWidget {
  const QuestionOneHome({super.key});

  @override
  _TestCenterState createState() => _TestCenterState();
}

class _TestCenterState extends State<QuestionOneHome> {

  final TextEditingController _controller = TextEditingController();

  // Stores the previous state of the text for undo functionality
  List<String> _history = [];
  int _historyIndex = -1;

  @override
  void initState() {
    super.initState();
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
                          SizedBox(width: 310),
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
                          Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => QuestionOneNext()),
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
                    height: 30,
                    color: Color(0xFFF0E1E4),
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 5.0, left: 8),
                      child: Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: "Section 1 to 5", // Bold part
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            TextSpan(
                              text: " | Question 1 of 1", // Regular part
                              style: TextStyle(
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 2),
                  Row(
                    children: [
                      // Wrap with Expanded or use SizedBox to ensure they take up space correctly
                      Expanded(
                        child: Container(
                          height: 800,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.black45, // Border color
                              width: 2, // Border width
                            ),
                          ),
                          child: Column(
                            children: [
                              Container(
                                height: 60,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.black, // Border color
                                    width: 0.5, // Border width
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "A nation should require all of its students to study the same national curriculum until they enter college.",
                                    style: TextStyle(fontSize: 15),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "Write a response in which you discuss the extent to which you agree or disagree with the recommendation and explain your reasoning for the position you take. In developing and supporting your position, describe specific circumstances in which adopting the recommendation would or would not be advantageous and explain how these examples shape your position.",
                                  style: TextStyle(fontSize: 15),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 4),
                      Expanded(
                        child: Container(
                          height: 800,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.black45, // Border color
                              width: 2, // Border width
                            ),
                          ),
                          child: Column(
                            children: [
                              Container(
                                height: 40,
                                decoration: BoxDecoration(
                                  color: Color(0xFFD3D3D3),
                                  border: Border.all(
                                    color: Colors.black45, // Border color
                                    width: 2, // Border width
                                  ),
                                ),
                                child: Row(
                                  children: [
                                    TextButton(
                                      onPressed: _cut,
                                      style: TextButton.styleFrom(
                                        backgroundColor: Color(0xFFEFEFEF), // Background color
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(3), // Border radius for rounded corners
                                        ),
                                        minimumSize: Size(20, 30),
                                      ),
                                      child: const Text(
                                        'Cut',
                                        style: TextStyle(
                                          color: Colors.black, // Text color
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: 4),
                                    TextButton(
                                      onPressed: _paste,
                                      style: TextButton.styleFrom(
                                        backgroundColor: Color(0xFFEFEFEF), // Background color
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(3), // Border radius for rounded corners
                                        ),
                                        minimumSize: Size(20, 30),
                                      ),
                                      child: const Text(
                                        'Paste',
                                        style: TextStyle(
                                          color: Colors.black, // Text color
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: 4),
                                    TextButton(
                                      onPressed: _undo,
                                      style: TextButton.styleFrom(
                                        backgroundColor: Color(0xFFEFEFEF), // Background color
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(3), // Border radius for rounded corners
                                        ),
                                        minimumSize: Size(20, 30),
                                      ),
                                      child: const Text(
                                        'Undo',
                                        style: TextStyle(
                                          color: Colors.black, // Text color
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: 4),
                                    TextButton(
                                      onPressed: _redo,
                                      style: TextButton.styleFrom(
                                        backgroundColor: Color(0xFFEFEFEF), // Background color
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(3), // Border radius for rounded corners
                                        ),
                                        minimumSize: Size(20, 30),
                                      ),
                                      child: const Text(
                                        'Redo',
                                        style: TextStyle(
                                          color: Colors.black, // Text color
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                height: 680, // Set your desired height here
                                child: TextField(
                                  controller: _controller,
                                  maxLines: 600,
                                  onChanged: (text) {
                                    setState(() {
                                      _addToHistory(text);
                                    });
                                  },
                                ),
                              )

                            ],
                          ),
                        ),
                      ),
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