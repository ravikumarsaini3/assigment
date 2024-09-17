import 'package:flutter/material.dart';

class Resourses {
  static Widget circleavatorr(String url, double radious) {
    return CircleAvatar(
      radius: radious,
      backgroundImage: AssetImage(url),
    );
  }

  static Widget lessonTile(String title, String duration, bool isCompleted) {
    return ListTile(
      leading: Container(
        padding:
            const EdgeInsets.all(8), // Padding for icon inside the rectangle
        decoration: BoxDecoration(
          border: Border.all(
            color: isCompleted ? Colors.green : Colors.grey, // Border color
            width: 1,
          ),
          borderRadius: BorderRadius.circular(4), // Rectangle shape
        ),
        child: Icon(
          isCompleted ? Icons.lock_open : Icons.lock,
          color: isCompleted ? Colors.green : Colors.grey,
        ),
      ),
      title: Text(title),
      subtitle: Row(
        children: [
          const Icon(Icons.access_time_outlined, size: 16),
          const SizedBox(width: 4),
          Text(duration),
        ],
      ),
      trailing: Row(
        mainAxisSize: MainAxisSize.min, // To prevent Row from taking full width
        children: [
          Container(
            padding: const EdgeInsets.all(2),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: Colors.green, // Border color of the circle
                // Border width
              ),
            ),
            child: const Icon(
              Icons.play_arrow,
              size: 16, // Size of the play icon
              color: Colors.green,
            ),
          ),
          const SizedBox(
              width: 0), // Space between the play button and text button
          TextButton(
            onPressed: () {},
            child:
                const Text('Play Video', style: TextStyle(color: Colors.black)),
          ),
        ],
      ),
    );
  }

  static Widget customelevatedbutton(String title, VoidCallback onpresed) {
    return SizedBox(
        height: 50,
        width: 350,
        child: ElevatedButton(
            onPressed: onpresed,
            style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 143, 200, 63)),
            child: Text(
              title,
              style: const TextStyle(color: Colors.black),
            )));
  }
}
