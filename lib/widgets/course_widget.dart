import 'package:flutter/material.dart';

class CourseWidget extends StatelessWidget {
  CourseWidget(
      {super.key,
      required this.imagePath,
      required this.title,
      required this.onPressed});
  String imagePath, title;
  Function onPressed;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(imagePath)),
        ),
        const SizedBox(
          height: 10,
        ),
        SizedBox(
          width: double.infinity,
          height: 50,
          child: FilledButton(
            onPressed: () {
              onPressed();
            },
            style: FilledButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            child: Text(
              title,
              style: const TextStyle(fontSize: 20),
            ),
          ),
        ),
        const SizedBox(height: 20)
      ],
    );
  }
}
