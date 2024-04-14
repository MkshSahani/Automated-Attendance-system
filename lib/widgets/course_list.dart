import 'package:flutter/material.dart';
import 'package:automated_attdance_system/widgets/course_item.dart';

class CourseListView extends StatelessWidget {

  const CourseListView({super.key, required this.courseList});

  final List<Map<String, dynamic>> courseList;

  @override
  Widget build(BuildContext context) {
    return GridView(
      padding: const EdgeInsets.all(20),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3, childAspectRatio: 3 / 2),
      children: courseList.map((course) {
        return CourseItem(courseDetails: course);
      }).toList()
    );
  }
}

