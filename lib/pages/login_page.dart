import 'package:flutter/material.dart';
import 'package:flutter_daily_report/contents/my_title_container.dart';
import 'package:flutter_daily_report/pages/login_pass.dart';


class LoginPage extends StatefulWidget {
  final String userId;
  const LoginPage({super.key, required this.userId});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _companyNameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MyTextField(
                hintText: '会社名',
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
