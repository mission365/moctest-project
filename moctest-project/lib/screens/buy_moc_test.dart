import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:moctest_project/screens/Questions/questions_front_page.dart';

import 'option_card.dart';

class BuyMocTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Buy Mock Test'),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
        child: Center(
          child: Wrap(
            spacing: 30.w, // Space between items
            runSpacing: 20.h, // Space when wrapped
            alignment: WrapAlignment.center,
            children: [
              OptionCard(
                title: '1 Mock Test',
                price: '\$5',
                icon: Icons.assignment,
                onTap: () {
                  _showPaymentModal(context, 'Mock Test Question 1');
                },
              ),
              OptionCard(
                title: 'Full Mock Test',
                price: '\$20',
                icon: Icons.assignment,
                onTap: () {
                  _showPaymentModal(context, 'Full Mock Test Questions');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _showPaymentModal(BuildContext context, String item) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.r)),
          title: Text('Payment Successful', textAlign: TextAlign.center),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.check_circle, color: Colors.green, size: 60.sp),
              SizedBox(height: 15.h),
              Text(
                'Your payment has been completed successfully!',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16.sp),
              ),
            ],
          ),
        );
      },
    );

    Future.delayed(Duration(seconds: 2), () {
      Navigator.of(context).pop(); // Close modal
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => QuestionsFrontPage()),
      );
    });
  }
}
