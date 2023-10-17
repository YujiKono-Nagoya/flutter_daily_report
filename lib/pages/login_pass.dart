import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../contents/my_title_container.dart';

class LoginPassPage extends StatefulWidget {
  final String companyName;
  const LoginPassPage({super.key, required this.companyName});

  @override
  State<LoginPassPage> createState() => _LoginPassPageState();
}

class _LoginPassPageState extends State<LoginPassPage> {
  bool _isSignedIn = false;
  String userId = '';
  TextEditingController _companyNameController = TextEditingController();

  void checkSignInState() {
    FirebaseAuth.instance.authStateChanges().listen((User? user) {
      if (user == null) {
        setState(() {
          _isSignedIn = false;
        });
      } else {
        userId = user.uid;
        setState(() {
          _isSignedIn = true;
        });
      }
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    checkSignInState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.companyName),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MyTextField(
                hintText: 'ログイン',
                width: MediaQuery.of(context).size.width * 0.8,
                controller: _companyNameController,
              ),
              const SizedBox(height: 50),
              MyTextButton(
                buttonName: 'ログイン',
                onPressed: () {
                  setState(() {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => LoginPassPage(
                                companyName: _companyNameController.text,
                              )),
                    );
                  });
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
