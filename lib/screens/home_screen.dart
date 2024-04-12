import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {

  const HomeScreen({super.key, required this.userName});

  final String userName;

  @override
  State<StatefulWidget> createState() {
    return _HomeScreenState();
  }

}

class _HomeScreenState extends State<HomeScreen> {
  
  // final userName = widget.userName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.userName),
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
                    widget.userName,
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      fontSize: 50,
                      color: Theme.of(context).colorScheme.primary
                    ),
                  )
                ],
              ),
            ),
            ListTile(
              title: const Text("Register Course"),
              onTap: () {

              },
            ),
            ListTile(
              title: const Text("Register Student"),
              onTap: () {

              },
            )
          ],
        ),
      ),
    );
  }

}