import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:moctest_project/main.dart';
import 'package:moctest_project/screens/buy_moc_test.dart';
import 'package:moctest_project/screens/detailes_page.dart';
import 'package:moctest_project/screens/test_taking_resources_screen.dart';

class GreHomeScreen extends StatelessWidget {
  const GreHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: 60.h,
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 200.0),
                    child: Image.asset(
                      'images/img.png', // Use local image path
                      height: 50.h,
                      width: 60.w,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 120.h,
              width: double.infinity,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    SizedBox(
                      width: 700.w,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.home_outlined, size: 50.sp),
                        Text("Home", style: TextStyle(fontSize: 15.sp)),
                      ],
                    ),
                    SizedBox(width: 25.w),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.shopping_cart_outlined, size: 50.sp),
                        Text("Cart", style: TextStyle(fontSize: 15.sp)),
                      ],
                    ),
                    SizedBox(width: 25.w),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.chat_bubble_outline_outlined, size: 50.sp),
                        Text("Chat For Help",
                            style: TextStyle(fontSize: 15.sp)),
                      ],
                    ),
                    SizedBox(width: 25.w),
                    Container(
                      width: 0.50.w, // Divider thickness
                      height: 200.h, // Full height
                      color: Colors.black, // Divider color
                    ),
                    SizedBox(width: 25.w),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.manage_accounts_outlined, size: 50.sp),
                        Text("Mission Devnath",
                            style: TextStyle(fontSize: 15.sp)),
                      ],
                    ),
                    SizedBox(width: 25.w),
                    // TextButton(
                    //   onPressed: () {},
                    //   style: TextButton.styleFrom(
                    //     padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 12.h), // Responsive Padding
                    //     backgroundColor: Colors.blueGrey, // Button Background Color
                    //     shape: RoundedRectangleBorder(
                    //       borderRadius: BorderRadius.circular(30.r), // Rounded Corners
                    //     ),
                    //     elevation: 5, // Shadow Effect
                    //   ),
                    //   child: Text(
                    //     "Moc Test",
                    //     style: TextStyle(
                    //       fontSize: 30.sp, // Responsive Font Size
                    //       color: Colors.white,
                    //       fontWeight: FontWeight.bold,
                    //       letterSpacing: 2.w, // Spacing between letters
                    //     ),
                    //   ),
                    // )
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                BuyMocTest(), // Replace with your page widget
                          ),
                        );
                      },
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.blueGrey,
                        padding: EdgeInsets.symmetric(
                            horizontal: 30.w, vertical: 12.h),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.r),
                        ),
                        elevation: 5,
                      ),
                      child: MouseRegion(
                        cursor: SystemMouseCursors.click,
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(
                              Icons.touch_app_rounded,
                              color: Colors.white,
                              size: 30.sp,
                            ),
                            SizedBox(width: 10.w),
                            Text(
                              "Moc Test",
                              style: TextStyle(
                                fontSize: 30.sp,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 2.w,
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            const Divider(
              color: Colors.black, // Set color for divider
              thickness: 0.5, // Set thickness for the divider
              indent: 0, // Set indent (default is 0)
              endIndent: 0, // Set end indent (default is 0)
            ),
            Container(
              height: 80.h,
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  SizedBox(width: 200.w),
                  Text("ETS ID: 7YG7B4DH"),
                  SizedBox(width: 300.w),
                  Text(
                    "My GRE Home",
                    style:
                        TextStyle(fontSize: 35.sp, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            const Divider(
              color: Colors.black, // Set color for divider
              thickness: 0.5, // Set thickness for the divider
              indent: 200, // Set indent (default is 0)
              endIndent: 200, // Set end indent (default is 0)
            ),
            Container(
              height: 500.h,
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(width: 200.w),
                  Padding(
                    padding: const EdgeInsets.only(top: 50.0),
                    child: Image.asset(
                      'images/welcome.jpg', // Use local image path
                      height: 400.h,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 50.0, left: 20),
                    child: Text(
                      "Welcome Mission Devnath!",
                      style: TextStyle(fontSize: 20.sp),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 420.h,
              child: Wrap(
                  spacing: 8, // Space between words
                  runSpacing: 4,
                  children: [
                TestTakingResourcesScreen(),
              ]),
            ),
            SizedBox(height: 20.h,),
            Padding(
              padding: EdgeInsets.only(left:200.w, right: 200.w),
              child: Container(
                width: double.infinity, // Set your desired width
                child: Wrap(
                  spacing: 8, // Space between words
                  runSpacing: 4, // Space between lines if wrapped
                  children: [
                    Text(
                      "Help Schools Find You!",
                      style:
                          TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold),
                    ),
                    Text.rich(
                      TextSpan(
                        style: TextStyle(
                            fontSize: 15.sp,
                            color: Colors.black), // Default style
                        children: [
                          TextSpan(
                              text:
                                  "Graduate and business school recruiters around the world use the "),
                          TextSpan(
                            text: "GRE Search Service", // The bold text
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          TextSpan(
                              text:
                                  " to find prospective students like you - even scholarships and fellowships to help pay tuition. Best of all, it's FREE!"),
                        ],
                      ),
                      softWrap: true, // Allows text to wrap
                    ),
                    GestureDetector(
                      onTap: () {
                        // Navigate to the new page
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  DetailsPage(title: 'SignUpPage')),
                        );
                      },
                      child: Text(
                        "Sign Up Now >",
                        style: TextStyle(
                          fontSize: 15.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20.h,),
          ],
        ),
      ),
    );
  }
}
