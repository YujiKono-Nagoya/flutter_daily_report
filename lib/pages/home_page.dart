import 'package:flutter/material.dart';

import 'indivisual_page_2.dart';

class HomePage extends StatefulWidget {
  final String companyName;

  const HomePage({super.key, required this.companyName});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _newDataController = TextEditingController();
  final _workScheduleControler = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.companyName),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => NewDataPage(title: '新規作成')),
                );
              },
              child: Text('新規作成'),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => WorkSchedulePage(title: '出勤表')),
                );
              },
              child: Text('出勤表'),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => IndivisualPage2(title: '名前')),
                );
              },
              child: Text('日報'),
            ),
          ],
        ),
      ),
    );
  }
}

class NewDataPage extends StatelessWidget {
  final String title;
  const NewDataPage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
    );
  }
}

class WorkSchedulePage extends StatelessWidget {
  final String title;
  const WorkSchedulePage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
    );
  }
}
