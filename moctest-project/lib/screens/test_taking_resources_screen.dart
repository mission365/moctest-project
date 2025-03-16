import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'detailes_page.dart';

class TestTakingResourcesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(top: 20.0, left: 200,right: 200, bottom: 20),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _buildCard(
                context: context, // Pass context for navigation
                title: "Test Preparation",
                icon: Icons.menu_book,
                links: {
                  "Shop for Test Preparation": "ShopPage",
                  "My Test Preparation and Services": "ServicesPage"
                },
                isHighlighted: true,
              ),
              // SizedBox(width: 10,),
              _buildCard(
                context: context,
                title: "Test Takers with Disabilities or Health-Related Needs",
                icon: Icons.accessibility_new,
                links: {
                  "More Information": "MoreInfoPage",
                  "GRE Accommodation Application Status/New Request": "AccommodationPage"
                },
              ),
              // SizedBox(width: 10,),
              _buildCard(
                context: context,
                title: "Tests and Scores",
                icon: Icons.bar_chart,
                links: {
                  "View All My Tests": "MyTestsPage",
                  "View Scores and Score Recipients": "ScoreRecipientsPage",
                  "Send Additional Score Reports": "AdditionalScoresPage",
                  "GRE Diagnostic Service": "DiagnosticPage"
                },
              ),
              // SizedBox(width: 10,),
              _buildCard(
                context: context,
                title: "Orders",
                icon: Icons.receipt_long,
                links: {
                  "View My Orders": "OrdersPage",
                  "My Vouchers": "VouchersPage"
                },
              ),
            ],
          ),
        ),
      );
  }

  /// Function to create a resource card with an icon, title, and clickable links.
  Widget _buildCard({
    required BuildContext context,
    required String title,
    required IconData icon,
    required Map<String, String> links,
    bool isHighlighted = false,
  }) {
    return Card(
      elevation: isHighlighted ? 4 : 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.r),
        side: isHighlighted ? BorderSide(color: Colors.purple, width: 2.w) : BorderSide.none,
      ),
      child: Container(
        width: 250.w,
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, // Align content to the left
          children: [
            Center(child: Icon(icon, size: 40.sp, color: Colors.purple)), // Icon centered
            SizedBox(height: 10.h),
            Center(
              child: Text(
                title,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold, color: Colors.black),
              ),
            ),
            Divider(color: Colors.red),
            // Left-aligned clickable links
            ...links.entries.map((entry) => Padding(
              padding: const EdgeInsets.symmetric(vertical: 5.0),
              child: Align(
                alignment: Alignment.centerLeft, // Align text to left
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailsPage(
                          title: entry.key, // Pass the link name to new page
                        ),
                      ),
                    );
                  },
                  child: Text(
                    entry.key,
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 14.sp,
                      color: Colors.blue,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
              ),
            )),
          ],
        ),
      ),
    );
  }

}