import 'package:automated_attdance_system/providers/url_providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CourseAttendenceScreen extends ConsumerStatefulWidget {
  const CourseAttendenceScreen({super.key, required this.courseDetails});
  final dynamic courseDetails;


  @override 
  ConsumerState<CourseAttendenceScreen> createState() {
    return _CourseAttendenceScreenState();
  }

}

class _CourseAttendenceScreenState extends ConsumerState<CourseAttendenceScreen> {


  void _loadAttendance(WidgetRef ref) {
    final baseUrl = ref.read(baseUrlProvider);
    print(baseUrl);

  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.courseDetails['course_code']),
        actions: [
          ElevatedButton(onPressed: () {

          }, child: const Text("Register Student"))
        ],
      ),
    );
  }
}