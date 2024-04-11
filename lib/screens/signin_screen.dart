import 'package:flutter/material.dart';

class SigninScreen extends StatefulWidget {
  const SigninScreen({super.key});

  @override
  State<SigninScreen> createState() {
    return _SiginScreenState();
  }
}

class _SiginScreenState extends State<SigninScreen> {
  var _usrName;
  var _userPasswd;

  final _loginFormKey = GlobalKey<FormState>();

  @override 
  Widget build(BuildContext context) {
    print("=============== build method =================");
    return Scaffold(
      appBar: AppBar(
        title: const Text("Attdance System"),
        actions: [
          TextButton.icon(
            icon: const Icon(Icons.person),
            label: const Text("Sign up"),
            onPressed: () {
            },
          )
        ],
      ),
      body:  Container(
        margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
        padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 200),
        decoration: BoxDecoration(
          // border: Border.all(width: 1, color: Theme.of(context).colorScheme.primary),
          // borderRadius: const BorderRadius.all(
            // Radius.circular(1)
          // )
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Form(
              key: _loginFormKey,
              child: Column(
                children: [
                  TextFormField(
                    decoration: const InputDecoration(
                      icon: Icon(Icons.account_circle_sharp),
                      label: Text("user name"),
                    ),
                    onSaved: (value) {
                      _usrName = value;
                    },
                    validator: (value) {
                      if(value == null || value.trim().isEmpty || value.trim().length > 50) {
                        return "Enter valid username";
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 20,),
                  TextFormField(
                    decoration: const InputDecoration(
                      icon: Icon(Icons.key_sharp),
                      label: Text("password")
                    ),
                    onSaved: (value) {
                      _userPasswd = value;
                    },
                    validator: (value) {
                      if(value == null || value.trim().isEmpty || value.trim().length > 50) {
                        return "Enter valid username";
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 16,),
                  Center(
                    child: TextButton.icon(onPressed: () {

                    }, icon: const Icon(Icons.amp_stories_rounded), label: Text("Log in"))
                  )
                ],
              ),
            ),
            const SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Crate a new Account"),
                TextButton(onPressed: () {

                }, child: const Text("Sign up"))
              ],
            )
          ],
        ),
      ),
    );
  }
}