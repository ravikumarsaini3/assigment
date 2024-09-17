import 'package:assigment/screen/payment_screen.dart';
import 'package:assigment/screen/utils.dart';
import 'package:flutter/material.dart';
import 'package:assigment/resourses.dart';
import 'package:assigment/screen/profilescreenwidgets.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  int _currentIndex = 0;

  // Function to display a custom SnackBar

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // User info row with avatar and search icon
                      SizedBox(height: height * 0.03),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: ListTile(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          PaymentSuccessScreen(),
                                    ));
                              },
                              title: const Text(
                                'Christiana Amandla',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                              subtitle: const Text('Let Learning to Smart'),
                              leading: Resourses.circleavatorr(
                                  'assets/images/girl2.png', 30),
                            ),
                          ),
                          IconButton(
                            icon: const Icon(Icons.search),
                            onPressed: () {
                              // Implement search functionality here if needed
                            },
                          ),
                        ],
                      ),
                      // User progress card
                      SizedBox(height: height * 0.05),
                      Profilescreenwidgets.userCard(),
                      SizedBox(height: height * 0.05),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Popular Course',
                            style: TextStyle(fontSize: 20),
                          ),
                          Text(
                            'View All',
                            style: TextStyle(fontSize: 18, color: Colors.blue),
                          ),
                        ],
                      ),
                      const SizedBox(height: 8),
                      // Display popular courses in a horizontal scrollable row
                      Row(
                        children: [
                          Profilescreenwidgets.courseCard(
                              'Photoshop Editing Course',
                              'assets/images/ps.jpg',
                              '30 Lessons'),
                          Profilescreenwidgets.courseCard(
                              'Illustrator Editing Course',
                              'assets/images/ai.jpg',
                              '30 Lessons'),
                        ],
                      ),
                      SizedBox(height: height * 0.07),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Popular Course',
                            style: TextStyle(fontSize: 20),
                          ),
                          Text(
                            'View All',
                            style: TextStyle(fontSize: 18, color: Colors.blue),
                          ),
                        ],
                      ),
                      Container(
                        height: 250,
                        width: width,
                        child: Column(
                          children: [
                            Profilescreenwidgets.courseCard(
                                'Adobe Xd Editing  Course',
                                'assets/images/xd.png',
                                '33 Lessons'),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
        // Bottom Navigation Bar
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });

            // Show different messages for each icon click
            switch (index) {
              case 0:
                Utils.showCustomSnackBar(context, 'Home Selected');
                break;
              case 1:
                Utils.showCustomSnackBar(context, 'Favorite Selected');
                break;
              case 2:
                Utils.showCustomSnackBar(context, 'Notifications Selected');
                break;
              case 3:
                Utils.showCustomSnackBar(context, 'Account Selected');
                break;
            }
          },
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: 'Favorite',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.notifications),
              label: 'Notifications',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_circle),
              label: 'Account',
            ),
          ],
        ),
      ),
    );
  }
}
