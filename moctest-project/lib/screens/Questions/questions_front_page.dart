import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:moctest_project/continue_page.dart';
import 'package:moctest_project/screens/Questions/question_card.dart';

class QuestionsFrontPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mock Test 1'),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(20.w),
        child: Center(
          child: Wrap(
            spacing: 20.w, // Space between elements
            runSpacing: 20.h, // Space when wrapping
            alignment: WrapAlignment.center,
            children: [
              QuestionCard(
                title: 'Mock Test: 1',
                icon: Icons.question_mark_sharp,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ContinuePage()),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
