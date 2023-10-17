// import 'package:flutter/material.dart';
// import 'package:flutter_daily_report/contents/my_title_container.dart';
// import 'package:intl/intl.dart';

// final DateTime now = DateTime.now();

// class IndividualPage extends StatefulWidget {
//   final String title;

//   const IndividualPage({super.key, required this.title});

//   @override
//   State<IndividualPage> createState() => _IndividualPageState();
// }

// class _IndividualPageState extends State<IndividualPage> {
//   final _monthController = TextEditingController();
//   final _dateController = TextEditingController();
//   final _dayofweekController = TextEditingController();
//   final _authorController = TextEditingController();
//   final _companionController = TextEditingController();
//   final _supportMemberController = TextEditingController();
//   final _primeContractorController = TextEditingController();

//   int year = now.year - 2018;
//   String month = now.month.toString();
//   String day = now.day.toString();
//   String dayOfWeek = getDayOfWeek(now.weekday);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text(widget.title)),
//       body: Padding(
//         padding: const EdgeInsets.all(15.0),
//         child: Container(
//           color: Colors.amber,
//           width: MediaQuery.of(context).size.width,
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Text(''),
//                   Text(
//                     '＜＜ 作 業 日 報 ＞＞',
//                     style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
//                   ),
//                   Text(
//                     '有限会社田中工業',
//                     style: TextStyle(fontWeight: FontWeight.bold),
//                   ),
//                 ],
//               ),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.start,
//                 children: [
//                   Text('令和 $year 年 $month 月 $day 日（ $dayOfWeek ）'),
//                 ],
//               ),
//               Container(
//                 color: Colors.blue,
//                 child: Column(
//                   children: [
//                     //１列目
//                     Row(
//                       children: [
//                         //記入社名
//                         Expanded(
//                           flex: 2,
//                           child: ContentField(
//                             title: '記入社名',
//                           ),
//                         ),
//                         //同伴者、応援
//                         Expanded(
//                           flex: 7,
//                           child: ContentsecondField(
//                             title: '同伴者',
//                             subtitle: '　　　応援\n(社名・作業員名)',
//                           ),
//                         ),
//                         //作業員数
//                         Expanded(
//                           flex: 1,
//                           child: ContentThirdField(
//                             title: '作業員数',
//                           ),
//                         )
//                       ],
//                     ),
//                     Row(
//                       children: [
//                         Expanded(
//                             flex: 4,
//                             child: ContentsecondField(
//                               title: '元請会社',
//                               subtitle: '現場名\n(場所)',
//                             )),
//                         Expanded(
//                             flex: 3,
//                             child: ContentsecondField(
//                               title: '使用車輌',
//                               subtitle: '作業内容',
//                             )),
//                         Expanded(
//                             flex: 2,
//                             child: ContentsecondField(
//                               title: 'ETC',
//                               subtitle: '駐車場代',
//                             ))
//                       ],
//                     ),
//                   ],
//                 ),
//               ),
//               Container(
//                 child: Column(
//                   children: [],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// String getDayOfWeek(int dayNumber) {
//   List<String> days = ['月', '火', '水', '木', '金', '土', '日'];
//   return days[dayNumber - 1]; // weekdayは1から始まるため、インデックスに合わせて調整
// }
