// import 'package:flutter/material.dart';
// import 'package:flutter_daily_report/contents/my_title_container.dart';

// class ReportPage extends StatefulWidget {
//   const ReportPage({super.key});

//   @override
//   State<ReportPage> createState() => _ReportPageState();
// }

// class _ReportPageState extends State<ReportPage> {
//   final homeworkcheckController = TextEditingController();
//   final contentController = TextEditingController();
//   final goodpointController = TextEditingController();
//   final themeController = TextEditingController();
//   final solveController = TextEditingController();
//   final nexthomeworkContoller = TextEditingController();
//   late String selectedValue = '1.00';

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: SingleChildScrollView(
//           child: Padding(
//             padding: const EdgeInsets.all(10.0),
//             child: Center(
//               child: Column(
//                 children: [
//                   // 1列目
//                   IntrinsicHeight(
//                     child: Row(
//                       crossAxisAlignment: CrossAxisAlignment.stretch,
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Expanded(
//                             flex: 2,
//                             child: MyTitleContainer(
//                               title: '科目',
//                             )),

//                         SizedBox(width: 5),

//                         Expanded(
//                             flex: 3,
//                             child: MyContentContainer(content: '数学、理科')),

//                         SizedBox(width: 5),

//                         // コースNO
//                         Expanded(
//                             flex: 2,
//                             child: MyTitleContainer(
//                               title: 'コースNo',
//                             )),

//                         SizedBox(width: 5),

//                         Expanded(
//                             flex: 3,
//                             child: MyContentContainer(content: '26502')),
//                       ],
//                     ),
//                   ),

//                   SizedBox(height: 5),
//                   // ２列目
//                   IntrinsicHeight(
//                     child: Row(
//                       crossAxisAlignment: CrossAxisAlignment.stretch,
//                       children: [
//                         Expanded(
//                             flex: 2,
//                             child: MyTitleContainer(
//                               title: '指導開始日時',
//                             )),
//                         SizedBox(width: 5),
//                         Expanded(
//                             flex: 3,
//                             child: MyContentContainer(
//                                 content: '2023年8月6日（日）18時00分')),
//                         SizedBox(width: 5),
//                         // 実指導
//                         Expanded(
//                             flex: 2,
//                             child: MyTitleContainer(
//                               title: '実指導',
//                             )),
//                         SizedBox(width: 5),
//                         Expanded(
//                             flex: 3,
//                             child: Container(
//                               decoration: BoxDecoration(
//                                   border: Border.all(color: Color(0xFFBCBCBC))),
//                               child: Padding(
//                                 padding: const EdgeInsets.all(7.0),
//                                 child: MyDropdownButton(
//                                   selectedValue: selectedValue,
//                                   items: ['1.00', '1.25', '1.50', '1.75'],
//                                   onChanged: (newValue) {
//                                     setState(() {
//                                       selectedValue = newValue!;
//                                     });
//                                   },
//                                 ),
//                               ),
//                             )),
//                       ],
//                     ),
//                   ),

//                   SizedBox(height: 5),

//                   // 3列目
//                   IntrinsicHeight(
//                     child: Row(
//                       crossAxisAlignment: CrossAxisAlignment.stretch,
//                       children: [
//                         Container(
//                           width: MediaQuery.of(context).size.width * 0.2,
//                           child: MyTitleContainer(
//                             title: '1.前回の宿題チェック',
//                           ),
//                         ),
//                         SizedBox(width: 5),
//                         Expanded(
//                           flex: 8,
//                           child: Container(
//                             decoration: BoxDecoration(
//                                 border: Border.all(color: Color(0xFFBCBCBC))),
//                             child: Padding(
//                               padding: const EdgeInsets.all(7.0),
//                               child: Column(
//                                 children: [
//                                   MyTextField(
//                                     controller: homeworkcheckController,
//                                     hintText: '５０字以上',
//                                   ),
//                                   SizedBox(height: 7),
//                                   Row(
//                                     mainAxisAlignment:
//                                         MainAxisAlignment.spaceBetween,
//                                     children: [
//                                       Row(
//                                         children: [
//                                           MyTitleContainer(
//                                             title: '完了率',
//                                           ),
//                                           MyDropdownButton(
//                                             selectedValue: selectedValue,
//                                             items: [
//                                               '1.00',
//                                               '1.25',
//                                               '1.50',
//                                               '1.75'
//                                             ],
//                                             onChanged: (newValue) {
//                                               setState(() {
//                                                 selectedValue = newValue!;
//                                               });
//                                             },
//                                           ),
//                                         ],
//                                       ),
//                                       Row(
//                                         children: [
//                                           MyTitleContainer(
//                                             title: '正答率',
//                                           ),
//                                           MyDropdownButton(
//                                             selectedValue: selectedValue,
//                                             items: [
//                                               '1.00',
//                                               '1.25',
//                                               '1.50',
//                                               '1.75'
//                                             ],
//                                             onChanged: (newValue) {
//                                               setState(() {
//                                                 selectedValue = newValue!;
//                                               });
//                                             },
//                                           ),
//                                         ],
//                                       ),
//                                       MyWordCount(count: '50')
//                                     ],
//                                   ),
//                                 ],
//                               ),
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),

//                   SizedBox(height: 5),

//                   // 4列目
//                   IntrinsicHeight(
//                     child: Row(
//                       crossAxisAlignment: CrossAxisAlignment.stretch,
//                       children: [
//                         Expanded(
//                             flex: 2,
//                             child: MyTitleContainer(
//                               title: '2.今回の指導内容',
//                             )),
//                         SizedBox(width: 5),
//                         Expanded(
//                           flex: 8,
//                           child: Container(
//                             decoration: BoxDecoration(
//                                 border: Border.all(color: Color(0xFFBCBCBC))),
//                             child: Padding(
//                               padding: const EdgeInsets.all(7.0),
//                               child: Column(
//                                 children: [
//                                   MyTextField(
//                                     controller: contentController,
//                                     hintText: '100字以上',
//                                   ),
//                                   SizedBox(height: 7),
//                                   Row(
//                                     children: [
//                                       MyTitleContainer(
//                                         title: '生徒理解度',
//                                       ),
//                                       MyDropdownButton(
//                                         selectedValue: selectedValue,
//                                         items: ['1.00', '1.25', '1.50', '1.75'],
//                                         onChanged: (newValue) {
//                                           setState(() {
//                                             selectedValue = newValue!;
//                                           });
//                                         },
//                                       ),
//                                       MyWordCount(count: '100'),
//                                     ],
//                                   ),
//                                 ],
//                               ),
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),

//                   SizedBox(height: 5),

//                   // 5列目
//                   IntrinsicHeight(
//                     child: Row(
//                       crossAxisAlignment: CrossAxisAlignment.stretch,
//                       children: [
//                         Expanded(
//                             flex: 2,
//                             child: MyTitleContainer(
//                               title: '3.生徒さんの良かった点',
//                             )),
//                         SizedBox(width: 5),
//                         Expanded(
//                           flex: 8,
//                           child: Container(
//                             decoration: BoxDecoration(
//                                 border: Border.all(color: Color(0xFFBCBCBC))),
//                             child: Padding(
//                               padding: const EdgeInsets.all(7.0),
//                               child: Column(
//                                 children: [
//                                   MyTextField(
//                                       controller: goodpointController,
//                                       hintText: '５０字以上'),
//                                   MyWordCount(count: '50')
//                                 ],
//                               ),
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),

//                   SizedBox(height: 5),

//                   // 6列目
//                   IntrinsicHeight(
//                     child: Row(
//                       crossAxisAlignment: CrossAxisAlignment.stretch,
//                       children: [
//                         Expanded(
//                             flex: 2,
//                             child: MyTitleContainer(
//                               title: '4.今後の課題と解決策',
//                             )),
//                         SizedBox(width: 5),
//                         Expanded(
//                           flex: 8,
//                           child: Container(
//                             decoration: BoxDecoration(
//                                 border: Border.all(color: Color(0xFFBCBCBC))),
//                             child: Padding(
//                               padding: const EdgeInsets.all(7.0),
//                               child: Column(
//                                 children: [
//                                   Text('課題'),
//                                   MyTextField(
//                                       controller: themeController,
//                                       hintText: '５０字以上'),
//                                   Text('解決策'),
//                                   MyTextField(
//                                       controller: solveController,
//                                       hintText: '５０字以上'),
//                                 ],
//                               ),
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),

//                   SizedBox(height: 5),

//                   // 7列目
//                   IntrinsicHeight(
//                     child: Row(
//                       crossAxisAlignment: CrossAxisAlignment.stretch,
//                       children: [
//                         Expanded(
//                           flex: 2,
//                           child: MyTitleContainer(
//                             title: '5.次回までの宿題',
//                           ),
//                         ),
//                         SizedBox(width: 5),
//                         Expanded(
//                           flex: 8,
//                           child: Container(
//                             decoration: BoxDecoration(
//                               border: Border.all(color: Color(0xFFBCBCBC)),
//                             ),
//                             child: Column(
//                               children: [
//                                 Padding(
//                                   padding: const EdgeInsets.all(8.0),
//                                   child: MyTextField(
//                                     controller: nexthomeworkContoller,
//                                     hintText: '',
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                   SizedBox(height: 20),

//                   //送信ボタン
//                   ElevatedButton(
//                       onPressed: () {
//                         setState(() {});
//                       },
//                       child: Padding(
//                         padding: const EdgeInsets.all(8.0),
//                         child: const Text('送信'),
//                       ))
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
