import 'package:automated_attdance_system/screens/course_register_screen.dart';
import 'package:flutter/material.dart';
import 'package:automated_attdance_system/widgets/course_list.dart';

class HomeScreen extends StatefulWidget {

  const HomeScreen({super.key, required this.mp});

  final Map<String, dynamic> mp;

  @override
  State<HomeScreen> createState() {
    return _HomeScreenState();
  }

}

class _HomeScreenState extends State<HomeScreen> {

  void _loadCourseRegisterScreen() {

    Navigator.of(context).push(
      MaterialPageRoute(builder: (cxt) => CourseRegisterScreen(userDetails: widget.mp['user_details'],))
    );
  }
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.mp['user_details']['fullname'], maxLines: 1,),
      ),
      drawer: Drawer(
        child: ListView(
          children:  [
            DrawerHeader(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Icon(
                    Icons.person, size: 90,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                  Text(
                    widget.mp['user_details']['fullname'],
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      fontSize: 20,
                      color: Theme.of(context).colorScheme.primary

                    ),
                  )
                ],
              ),
            ),
            ListTile(
              title: const Text("Register Course"),
              onTap:_loadCourseRegisterScreen,
            ),
            ListTile(
              title: const Text("Register Student"),
              onTap: () {

              },
            )
          ],
        ),
      ),
      body: CourseListView(
        courseList: widget.mp['course_details'],
      ),
    );
  }

}