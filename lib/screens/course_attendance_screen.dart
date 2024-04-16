import 'package:automated_attdance_system/providers/url_providers.dart';
import 'package:automated_attdance_system/screens/new_student_regiter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:automated_attdance_system/screens/attendance_screen.dart';
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

  void _showAttdenceScreen() {
    Navigator.of(context).push(MaterialPageRoute(builder: (ctx) {
      return AttendanceScreen(courseDetails: widget.courseDetails);
    }));
  }

  void _registerNewStudent() async {
    Navigator.of(context).push(MaterialPageRoute(builder: (ctx) {
      return NewStudentRegister(courseDetails: widget.courseDetails);
    }));
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.courseDetails['course_code']),
        actions: [
          ElevatedButton(
            onPressed: _registerNewStudent, 
          child: const Text("Register Student"))
        ],
      ),
      floatingActionButton: IconButton(
        icon: Icon(
          Icons.add,
          color: Theme.of(context).colorScheme.secondary,
          size: 30,
          ),
        onPressed: _showAttdenceScreen,
      ),
    );
  }
}