import 'package:flutter/material.dart';

class CourseItem extends StatelessWidget {
  const CourseItem({super.key, required this.courseDetails});

  final Map<String, dynamic> courseDetails; 

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Theme.of(context).colorScheme.secondary,
      borderRadius: const BorderRadius.all(Radius.circular(16)),
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Theme.of(context).colorScheme.secondary,
              Theme.of(context).colorScheme.secondary.withOpacity(0.8)
            ],
            begin: Alignment.topLeft,
            end: Alignment.topRight
          )
        ),
        child: Center(
          child: Text(
          courseDetails['course_code']
          )
        ),
      ),
    );
  }
}