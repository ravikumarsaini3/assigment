import 'package:assigment/resourses.dart';
import 'package:assigment/screen/profile_screen.dart';
import 'package:flutter/material.dart';

class CourseDetailsScreen extends StatelessWidget {
  const CourseDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
          body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Details',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.notifications_active))
              ],
            ),
            Card(
              color: Colors.grey[200],
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Our Student',
                      style: TextStyle(fontSize: 15),
                    ),
                    SizedBox(height: height * 0.01),
                    Row(
                      children: [
                        Resourses.circleavatorr('assets/images/boy.png', 20),
                        Resourses.circleavatorr('assets/images/boy2.png', 20),
                        Resourses.circleavatorr('assets/images/girl.jpg', 20),
                      ],
                    ),
                    SizedBox(
                      height: height * 0.01,
                    ),
                    const Text(
                      'Photoshop Editing Course',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    const Text(
                      'A representation that can convey the three-dimensional aspect of a design through a two-dimensional medium.',
                      style: TextStyle(color: Colors.black87),
                    ),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.play_arrow_rounded),
                            Text(' 30 Lessons'),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(Icons.access_time_outlined),
                            Text(' 13h 30min'),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: height * 0.03,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Video',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                ),
                Text(
                  'View All',
                  style: TextStyle(fontSize: 16, color: Colors.blue),
                ),
              ],
            ),
            SizedBox(height: height * 0.02),
            Expanded(
              child: Card(
                color: Colors.grey[200],
                child: ListView(
                  children: [
                    Resourses.lessonTile('Introduction', '3h 30min', true),
                    Resourses.lessonTile('Learn Tools', '2h 20min', false),
                    Resourses.lessonTile(
                        'Install Softaware', '1h 30min', false),
                    Resourses.lessonTile('Tracing Sketsa', '3h 10min', false),
                    Resourses.lessonTile(
                        'Advanced Techniques', '1h 20min', false),
                    Resourses.lessonTile(
                        'Advanced Techniques', '2h 20min', false),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Resourses.customelevatedbutton(
              'Enroll Now',
              () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return ProfileScreen();
                  },
                ));
              },
            )
          ],
        ),
      )),
    );
  }
}
