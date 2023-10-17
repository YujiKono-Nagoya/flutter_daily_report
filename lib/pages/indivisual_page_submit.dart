import 'package:flutter/material.dart';
import 'package:flutter_daily_report/contents/my_title_container.dart';

final DateTime now = DateTime.now();

// ignore: must_be_immutable
class SubmitWebPage extends StatelessWidget {
  final String companion;
  final String outsideCompanion;
  final String primeConstractor;
  final String place;
  final String car;
  final String content;
  final String etc;
  final String parking;
  final String outside;
  final String inside;
  final String kiso;
  final String liftingEquipmentStep;
  final String liftingEquipmentgroup;
  final String liftingEquipmentSurface;
  final String liftingEquipmentStep2;
  final String liftingEquipmentSurface2;
  final String rampStep;
  final String rampplace;
  final String curingDirection;
  final String square;
  final String mesh;
  final String openingSurface;
  final String openingPlace;
  final String fivefourzerozeroSurface;
  final String fivefourzerozeroPlace;
  final String spanEast;
  final String spanWest;
  final String spanSouth;
  final String spanNouth;
  final String heightEast;
  final String heightWest;
  final String heightSouth;
  final String heightNouth;
  final String rollingHeight;
  final String rollingStep;
  final String rollingWidth;
  final String rollingVertical;
  final String carryOutTool;
  final String startTime;
  final String closingTime;
  final String contact;
  final String free;
  final String number;
  final String auth;
  SubmitWebPage(
      {super.key,
      required this.auth,
      required this.number,
      required this.companion,
      required this.outsideCompanion,
      required this.primeConstractor,
      required this.place,
      required this.car,
      required this.content,
      required this.etc,
      required this.parking,
      required this.outside,
      required this.inside,
      required this.kiso,
      required this.liftingEquipmentStep,
      required this.liftingEquipmentgroup,
      required this.liftingEquipmentSurface,
      required this.liftingEquipmentStep2,
      required this.liftingEquipmentSurface2,
      required this.rampStep,
      required this.rampplace,
      required this.curingDirection,
      required this.square,
      required this.mesh,
      required this.openingSurface,
      required this.openingPlace,
      required this.fivefourzerozeroSurface,
      required this.fivefourzerozeroPlace,
      required this.spanEast,
      required this.spanWest,
      required this.spanSouth,
      required this.spanNouth,
      required this.heightEast,
      required this.heightWest,
      required this.heightSouth,
      required this.heightNouth,
      required this.rollingHeight,
      required this.rollingStep,
      required this.rollingWidth,
      required this.rollingVertical,
      required this.carryOutTool,
      required this.startTime,
      required this.closingTime,
      required this.contact,
      required this.free});

  int year = now.year - 2018;

  String month = now.month.toString();

  String day = now.day.toString();

  String dayOfWeek = getDayOfWeek(now.weekday);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('')),
      body: Padding(
        padding: const EdgeInsets.all(50.0),
        child: SingleChildScrollView(
          child: Container(
            width: MediaQuery.of(context).size.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(''),
                    Text(
                      '＜＜ 作 業 日 報 ＞＞',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '有限会社田中工業',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('令和 $year 年 $month 月 $day 日（ $dayOfWeek ）'),
                  ],
                ),
                Container(
                  child: Column(
                    children: [
                      //１列目
                      Row(
                        children: [
                          //記入社名
                          Expanded(
                            flex: 2,
                            child: ContentText(title: '記入者名', controller: auth),
                          ),
                          //同伴者、応援
                          Expanded(
                            flex: 7,
                            child: ContentsecondText(
                                title: '同伴者',
                                subtitle: '応援\n(社名・作業員名)',
                                controller: companion,
                                subcontroller: outside),
                          ),
                          //作業員数
                          Expanded(
                              flex: 1,
                              child: ContentThirdText(
                                title: '作業員数',
                                controller: number,
                              ))
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            flex: 4,
                            child: ContentsecondText(
                              title: '元請会社',
                              subtitle: '現場名\n(場所)',
                              controller: primeConstractor,
                              subcontroller: place,
                            ),
                          ),
                          Expanded(
                            flex: 3,
                            child: ContentsecondText(
                              title: '使用車輌',
                              subtitle: '作業内容',
                              controller: car,
                              subcontroller: content,
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: ContentsecondText(
                              title: 'ETC',
                              subtitle: '駐車場代',
                              controller: etc,
                              subcontroller: parking,
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 20),

                      //中部
                      Container(
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Expanded(
                                    flex: 1,
                                    child: Row(
                                      children: [
                                        Text(
                                          '外部',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Expanded(
                                            child: MyText2(
                                          controller: outside,
                                          unit: '',
                                        ))
                                      ],
                                    )),
                                Expanded(
                                    flex: 1,
                                    child: Row(
                                      children: [
                                        Text(
                                          '内部',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Expanded(
                                            child: MyText2(
                                          controller: inside,
                                          unit: '',
                                        ))
                                      ],
                                    )),
                                Expanded(
                                    flex: 1,
                                    child: Row(
                                      children: [
                                        Text(
                                          '基礎渡り',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Expanded(
                                            child: MyText2(
                                          controller: kiso,
                                          unit: '',
                                        ))
                                      ],
                                    ))
                              ],
                            ),
                            SizedBox(height: 20),
                            Row(
                              children: [
                                Text(
                                  '昇降設備',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                SizedBox(width: 5),
                                Expanded(
                                    flex: 1,
                                    child: MyText3(
                                      controller: liftingEquipmentStep,
                                      unit: '段',
                                    )),
                                SizedBox(width: 3),
                                Expanded(
                                    flex: 1,
                                    child: MyText3(
                                      controller: liftingEquipmentgroup,
                                      unit: '基',
                                    )),
                                SizedBox(width: 3),
                                Expanded(
                                    flex: 1,
                                    child: MyText3(
                                      controller: liftingEquipmentSurface,
                                      unit: '面',
                                    )),
                                SizedBox(width: 3),
                                Text('タラップ'),
                                SizedBox(width: 3),
                                Expanded(
                                    flex: 1,
                                    child: MyText3(
                                        controller: rampStep, unit: '基')),
                                SizedBox(width: 3),
                                Expanded(
                                    flex: 1,
                                    child: MyText3(
                                        controller: rampplace, unit: 'ヶ所'))
                              ],
                            ),
                            SizedBox(height: 20),
                            Row(
                              children: [
                                Text('養生シート',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold)),
                                SizedBox(width: 5),
                                Expanded(
                                    flex: 1,
                                    child: MyText2(
                                      controller: curingDirection,
                                      unit: '',
                                    )),
                                SizedBox(width: 3),
                                Expanded(
                                    flex: 1,
                                    child: MyText3(
                                        controller: square, unit: 'm²')),
                                SizedBox(width: 3),
                                Expanded(
                                    flex: 1,
                                    child: MyText2(
                                      controller: mesh,
                                      unit: '',
                                    )),
                              ],
                            ),
                            SizedBox(height: 20),
                            Row(
                              children: [
                                Text('開口',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold)),
                                SizedBox(width: 5),
                                Expanded(
                                  flex: 1,
                                  child: Container(
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              color: Colors.black, width: 1)),
                                      child: Align(
                                          alignment: Alignment.center,
                                          child: Padding(
                                              padding: const EdgeInsets.all(17),
                                              child: Text('W=3600',
                                                  style: TextStyle(
                                                      fontSize: 14))))),
                                ),
                                SizedBox(width: 3),
                                Expanded(
                                    flex: 1,
                                    child: MyText3(
                                      controller: openingSurface,
                                      unit: '面',
                                    )),
                                SizedBox(width: 3),
                                Expanded(
                                    flex: 1,
                                    child: MyText3(
                                      controller: openingPlace,
                                      unit: 'ヶ所',
                                    )),
                                Expanded(
                                  flex: 1,
                                  child: Container(
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              color: Colors.black, width: 1)),
                                      child: Align(
                                          alignment: Alignment.center,
                                          child: Padding(
                                              padding: const EdgeInsets.all(17),
                                              child: Text('W=5400',
                                                  style: TextStyle(
                                                      fontSize: 14))))),
                                ),
                                SizedBox(width: 3),
                                Expanded(
                                    flex: 1,
                                    child: MyText3(
                                      controller: fivefourzerozeroSurface,
                                      unit: '面',
                                    )),
                                SizedBox(width: 3),
                                Expanded(
                                    flex: 1,
                                    child: MyText3(
                                      controller: fivefourzerozeroPlace,
                                      unit: 'ヶ所',
                                    )),
                              ],
                            ),
                            SizedBox(height: 5),
                            Row(
                              children: [
                                Text(
                                  'スパン数',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                SizedBox(width: 10),
                                Expanded(
                                  flex: 1,
                                  child: Container(
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              color: Colors.black, width: 1)),
                                      child: Align(
                                          alignment: Alignment.center,
                                          child: Padding(
                                              padding: const EdgeInsets.all(17),
                                              child: Text('架・払',
                                                  style: TextStyle(
                                                      fontSize: 14))))),
                                ),
                                SizedBox(width: 3),
                                Expanded(
                                    flex: 1,
                                    child: MyText4(
                                        controller: spanEast, unit: '東')),
                                SizedBox(width: 3),
                                Expanded(
                                    flex: 1,
                                    child: MyText4(
                                        controller: spanWest, unit: '西')),
                              ],
                            ),
                            SizedBox(height: 5),
                            Row(
                              children: [
                                Text(
                                  '　　　',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                SizedBox(width: 10),
                                Expanded(
                                  flex: 1,
                                  child: Container(
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              color: Colors.black, width: 1)),
                                      child: Align(
                                          alignment: Alignment.center,
                                          child: Padding(
                                              padding: const EdgeInsets.all(17),
                                              child: Text('架・払',
                                                  style: TextStyle(
                                                      fontSize: 14))))),
                                ),
                                SizedBox(width: 3),
                                Expanded(
                                    flex: 1,
                                    child: MyText4(
                                        controller: spanSouth, unit: '南')),
                                SizedBox(width: 3),
                                Expanded(
                                    flex: 1,
                                    child: MyText4(
                                        controller: spanNouth, unit: '北')),
                              ],
                            ),
                            SizedBox(height: 20),
                            Row(
                              children: [
                                Text(
                                  '高さ',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                SizedBox(width: 5),
                                Expanded(
                                    flex: 1,
                                    child: MyText4(
                                        controller: heightEast, unit: '東')),
                                SizedBox(width: 3),
                                Expanded(
                                    flex: 1,
                                    child: MyText4(
                                        controller: heightWest, unit: '西')),
                                SizedBox(width: 3),
                                Expanded(
                                    flex: 1,
                                    child: MyText4(
                                        controller: heightSouth, unit: '南')),
                                SizedBox(width: 3),
                                Expanded(
                                    flex: 1,
                                    child: MyText4(
                                        controller: heightNouth, unit: '北')),
                              ],
                            ),
                            SizedBox(height: 20),
                            Row(
                              children: [
                                Text(
                                  'ローリング',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                SizedBox(width: 10),
                                Container(
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Colors.black, width: 1)),
                                    child: Align(
                                        alignment:
                                            Alignment.center, // 横方向の中央に配置
                                        child: Padding(
                                            padding: const EdgeInsets.all(14),
                                            child: Text('架・払',
                                                style:
                                                    TextStyle(fontSize: 14))))),
                                SizedBox(width: 3),
                                Expanded(
                                    flex: 1,
                                    child: MyText3(
                                        controller: rollingStep, unit: '基')),
                                SizedBox(width: 3),
                                Expanded(
                                    flex: 1,
                                    child: MyText3(
                                        controller: rollingWidth, unit: '')),
                                SizedBox(width: 3),
                                Text('×',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20)),
                                Expanded(
                                    flex: 1,
                                    child: MyText3(
                                        controller: rollingVertical, unit: '')),
                                SizedBox(width: 3),
                                Text('H=',
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold)),
                                Expanded(
                                    flex: 1,
                                    child: MyText3(
                                        controller: rollingHeight, unit: '')),
                              ],
                            ),
                            SizedBox(height: 20),
                            Text(
                              '持出し工具',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 3),
                            Text(
                                'インパクト・ヒルディ・親綱・ワイヤー・杭打ち機・丸ノコ・サンダー・バイブカッター・その他'),
                            SizedBox(height: 3),
                            MyText2(
                              controller: carryOutTool,
                              unit: '',
                            ),
                          ],
                        ),
                      ),

                      //下部
                      Container(
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Expanded(
                                    flex: 1,
                                    child: MyText3(
                                        controller: startTime, unit: '')),
                                Expanded(
                                    flex: 1,
                                    child: MyText3(
                                        controller: closingTime, unit: '')),
                                Expanded(
                                  flex: 2,
                                  child: MyText3(
                                    controller: contact,
                                    unit: '',
                                  ),
                                )
                              ],
                            ),
                            SizedBox(height: 3),
                            MyText2(
                              controller: free,
                              unit: '',
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    children: [],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

String getDayOfWeek(int dayNumber) {
  List<String> days = ['月', '火', '水', '木', '金', '土', '日'];
  return days[dayNumber - 1]; // weekdayは1から始まるため、インデックスに合わせて調整
}
