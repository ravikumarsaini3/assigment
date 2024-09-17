import 'package:assigment/resourses.dart';
import 'package:flutter/material.dart';

class Profilescreenwidgets {
  static Widget Customlisttile(String title, String subtitle, Icon icon) {
    return Expanded(
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: Colors.white38,
          child: icon,
        ),
        title: Text(
          title,
          style: const TextStyle(
              fontSize: 15, color: Colors.black, fontWeight: FontWeight.bold),
        ),
        subtitle: Text(
          subtitle,
          style: const TextStyle(
              fontSize: 15, color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

  static Widget userCard() {
    return Container(
      padding: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 165, 215, 83).withOpacity(.7),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 55,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 238, 239, 236).withOpacity(.6),
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  height: 60,
                ),
                Text('Mathematics Course', style: TextStyle(fontSize: 18)),
                Text('16 Sep ,2024')
              ],
            ),
          ),
          const SizedBox(height: 18),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Profilescreenwidgets.Customlisttile(
                  'Completed', '20', const Icon(Icons.done)),
              Profilescreenwidgets.Customlisttile('Hourse Spent', '400',
                  const Icon(Icons.access_time_outlined)),
            ],
          ),
        ],
      ),
    );
  }

  static Widget courseCard(String title, String url, String lessons) {
    return Expanded(
      child: Card(
        elevation: 2.0, // Adding some elevation to make the cards pop
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              CircleAvatar(
                radius: 40,
                backgroundImage: AssetImage(url), // Optional background color
              ),
              const SizedBox(height: 8),
              Text(title, style: const TextStyle(fontSize: 18)),
              const SizedBox(height: 4),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    children: [
                      Resourses.circleavatorr('assets/images/boy.png', 10),
                      Resourses.circleavatorr('assets/images/boy2.png', 10),
                      Resourses.circleavatorr('assets/images/girl2.png', 10),
                      Resourses.circleavatorr('assets/images/girl.jpg', 10),
                      const CircleAvatar(
                        radius: 10,
                        child: Text(
                          '20+',
                          style: TextStyle(fontSize: 10),
                        ),
                      ),
                    ],
                  ),
                  // const Text('Participant')
                ],
              ),
              const Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.orange,
                      ),
                      Text('4.8'),
                    ],
                  ),
                  Text(
                    lessons,
                    style: const TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
