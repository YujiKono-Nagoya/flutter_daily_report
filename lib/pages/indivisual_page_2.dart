import 'package:flutter/material.dart';
import 'package:flutter_daily_report/contents/my_title_container.dart';

import 'exsample.dart';
import 'indivisual_page_submit.dart';

final DateTime now = DateTime.now();

class IndivisualPage2 extends StatefulWidget {
  final String title;
  const IndivisualPage2({super.key, required this.title});

  @override
  State<IndivisualPage2> createState() => _IndivisualPage2State();
}

class _IndivisualPage2State extends State<IndivisualPage2> {
  int year = now.year - 2018;
  String month = now.month.toString();
  String day = now.day.toString();
  String dayOfWeek = getDayOfWeek(now.weekday);

  final _authorController = TextEditingController();
  final _numberController = TextEditingController();
  final _companionController = TextEditingController();
  final _primeConstractorController = TextEditingController();
  final _outsideCompanionController = TextEditingController();
  final _placeController = TextEditingController();
  final _carController = TextEditingController();
  final _contentController = TextEditingController();
  final _etcController = TextEditingController();
  final _parkingPriceController = TextEditingController();
  final _outsideController = TextEditingController();
  final _insideController = TextEditingController();
  final _kisoController = TextEditingController();
  final _liftingEquipmentStepController = TextEditingController();
  final _liftingEquipmentgroupController = TextEditingController();
  final _liftingEquipmentSurfaceController = TextEditingController();
  final _liftingEquipmentStep2Controller = TextEditingController();
  final _liftingEquipmentSurface2Controller = TextEditingController();
  final _rampStepController = TextEditingController();
  final _rampplaceController = TextEditingController();
  final _curingDirectionController = TextEditingController();
  final _squareController = TextEditingController();
  final _meshController = TextEditingController();
  final _openingSurfaceController = TextEditingController();
  final _openingPlaceController = TextEditingController();
  final _5400SurfaceController = TextEditingController();
  final _5400PlaceController = TextEditingController();
  final _spanEastController = TextEditingController();
  final _spanWestController = TextEditingController();
  final _spanSouthController = TextEditingController();
  final _spanNorthController = TextEditingController();
  final _heightEastController = TextEditingController();
  final _heightWestController = TextEditingController();
  final _heightSouthController = TextEditingController();
  final _heightNorthController = TextEditingController();
  final _rollingStepController = TextEditingController();
  final _rollingHeightController = TextEditingController();
  final _rollingWidthController = TextEditingController();
  final _rollingVerticalController = TextEditingController();
  final _carryOutToolController = TextEditingController();
  final _startTimeController = TextEditingController();
  final _closingTimeController = TextEditingController();
  final _contactController = TextEditingController();
  final _freeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '＜＜ 作 業 日 報 ＞＞',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '有限会社',
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
                //　上部
                Container(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            flex: 7,
                            child: ContentField(
                              title: '記入者名',
                              controller: _authorController,
                            ),
                          ),
                          Expanded(
                            flex: 3,
                            child: ContentThirdField(
                              title: '作業員数',
                              controller: _numberController,
                            ),
                          )
                        ],
                      ),
                      ContentsecondField(
                        title: '同伴者',
                        subtitle: '　　　応援\n(社名・作業員名)',
                        controller: _companionController,
                        subcontroller: _outsideCompanionController,
                      ),
                      ContentsecondField(
                        title: '元請会社',
                        subtitle: '現場名\n(場所)',
                        controller: _primeConstractorController,
                        subcontroller: _placeController,
                      ),
                      Row(
                        children: [
                          Expanded(
                              flex: 3,
                              child: ContentsecondField(
                                title: '使用車輌',
                                subtitle: '作業内容',
                                controller: _carController,
                                subcontroller: _contentController,
                              )),
                          Expanded(
                              flex: 2,
                              child: ContentsecondField(
                                title: 'ETC',
                                subtitle: '駐車場代',
                                controller: _etcController,
                                subcontroller: _parkingPriceController,
                              ))
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                // 中部
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
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Expanded(
                                    child: MyTextField2(
                                  hintText: 'W=600,900,1200',
                                  controller: _outsideController,
                                )),
                              ],
                            ),
                          ),
                          SizedBox(width: 10),
                          Expanded(
                            flex: 1,
                            child: Row(
                              children: [
                                Text(
                                  '内部',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Expanded(
                                    child: MyTextField2(
                                  hintText: 'W=600,900,1200',
                                  controller: _insideController,
                                )),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      Row(
                        children: [
                          Text(
                            '基礎渡り',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Expanded(
                              child: MyTextField2(
                            hintText: 'W=600 W=900 W=1200',
                            controller: _kisoController,
                          )),
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
                              child: MyTextField3(
                                hintText: '段',
                                controller: _liftingEquipmentStepController,
                              )),
                          SizedBox(width: 3),
                          Expanded(
                              flex: 1,
                              child: MyTextField3(
                                hintText: '基',
                                controller: _liftingEquipmentgroupController,
                              )),
                          SizedBox(width: 3),
                          Expanded(
                              flex: 1,
                              child: MyTextField3(
                                hintText: '面',
                                controller: _liftingEquipmentSurfaceController,
                              ))
                        ],
                      ),
                      SizedBox(height: 5),
                      Row(
                        children: [
                          Expanded(flex: 3, child: Container()),
                          SizedBox(width: 3),
                          Expanded(
                              flex: 2,
                              child: MyTextField3(
                                hintText: '基',
                                controller: _liftingEquipmentStep2Controller,
                              )),
                          SizedBox(width: 3),
                          Expanded(
                              flex: 2,
                              child: MyTextField3(
                                hintText: '面',
                                controller: _liftingEquipmentSurface2Controller,
                              )),
                        ],
                      ),
                      SizedBox(height: 5),
                      Row(
                        children: [
                          Expanded(flex: 1, child: Container()),
                          SizedBox(width: 3),
                          Text('タラップ'),
                          SizedBox(width: 5),
                          Expanded(
                              flex: 2,
                              child: MyTextField3(
                                hintText: '基',
                                controller: _rampStepController,
                              )),
                          SizedBox(width: 3),
                          Expanded(
                              flex: 2,
                              child: MyTextField3(
                                hintText: 'ヶ所',
                                controller: _rampplaceController,
                              )),
                        ],
                      ),
                      SizedBox(height: 20),
                      Row(
                        children: [
                          Text(
                            '養生シート',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          SizedBox(width: 5),
                          Expanded(
                              child: MyTextField2(
                            hintText: '東・西・南・北',
                            controller: _curingDirectionController,
                          )),
                          SizedBox(width: 3),
                          Expanded(
                              flex: 1,
                              child: MyTextField3(
                                hintText: 'm²',
                                controller: _squareController,
                              ))
                        ],
                      ),
                      SizedBox(height: 5),
                      Row(
                        children: [
                          Expanded(flex: 1, child: Container()),
                          Expanded(
                              flex: 4,
                              child: MyTextField2(
                                hintText: 'メッシュ(一類 / 二類)・防音・防災',
                                controller: _meshController,
                              )),
                        ],
                      ),
                      SizedBox(height: 20),
                      Row(
                        children: [
                          Text(
                            '開口',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          SizedBox(width: 10),
                          Container(
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Colors.black, width: 1)),
                              child: Align(
                                  alignment: Alignment.center, // 横方向の中央に配置
                                  child: Padding(
                                      padding: const EdgeInsets.all(17),
                                      child: Text('W=3600',
                                          style: TextStyle(fontSize: 14))))),
                          SizedBox(width: 3),
                          Expanded(
                              flex: 1,
                              child: MyTextField3(
                                hintText: '面',
                                controller: _openingSurfaceController,
                              )),
                          SizedBox(width: 3),
                          Expanded(
                              flex: 1,
                              child: MyTextField3(
                                hintText: 'ヶ所',
                                controller: _openingPlaceController,
                              ))
                        ],
                      ),
                      SizedBox(height: 5),
                      Row(
                        children: [
                          Expanded(flex: 1, child: Container()),
                          SizedBox(width: 3),
                          Container(
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Colors.black, width: 1)),
                              child: Align(
                                  alignment: Alignment.center, // 横方向の中央に配置
                                  child: Padding(
                                      padding: const EdgeInsets.all(17),
                                      child: Text('W=5400',
                                          style: TextStyle(fontSize: 14))))),
                          SizedBox(width: 3),
                          Expanded(
                              flex: 2,
                              child: MyTextField3(
                                hintText: '面',
                                controller: _5400SurfaceController,
                              )),
                          SizedBox(width: 3),
                          Expanded(
                              flex: 2,
                              child: MyTextField3(
                                hintText: 'ヶ所',
                                controller: _5400PlaceController,
                              ))
                        ],
                      ),
                      SizedBox(height: 20),
                      Row(
                        children: [
                          Text(
                            'スパン数',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          SizedBox(width: 10),
                          Container(
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Colors.black, width: 1)),
                              child: Align(
                                  alignment: Alignment.center, // 横方向の中央に配置
                                  child: Padding(
                                      padding: const EdgeInsets.all(17),
                                      child: Text('架・払',
                                          style: TextStyle(fontSize: 14))))),
                          SizedBox(width: 3),
                          Expanded(
                              flex: 1,
                              child: MyTextField3(
                                hintText: '東',
                                controller: _spanEastController,
                              )),
                        ],
                      ),
                      SizedBox(height: 5),
                      Row(
                        children: [
                          Expanded(flex: 1, child: Container()),
                          SizedBox(width: 3),
                          Container(
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Colors.black, width: 1)),
                              child: Align(
                                  alignment: Alignment.center, // 横方向の中央に配置
                                  child: Padding(
                                      padding: const EdgeInsets.all(17),
                                      child: Text('架・払',
                                          style: TextStyle(fontSize: 14))))),
                          SizedBox(width: 3),
                          Expanded(
                              flex: 2,
                              child: MyTextField3(
                                hintText: '西',
                                controller: _spanWestController,
                              )),
                        ],
                      ),
                      SizedBox(height: 5),
                      Row(
                        children: [
                          Expanded(flex: 1, child: Container()),
                          SizedBox(width: 3),
                          Container(
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Colors.black, width: 1)),
                              child: Align(
                                  alignment: Alignment.center, // 横方向の中央に配置
                                  child: Padding(
                                      padding: const EdgeInsets.all(17),
                                      child: Text('架・払',
                                          style: TextStyle(fontSize: 14))))),
                          SizedBox(width: 3),
                          Expanded(
                              flex: 2,
                              child: MyTextField3(
                                hintText: '南',
                                controller: _spanSouthController,
                              )),
                        ],
                      ),
                      SizedBox(height: 5),
                      Row(
                        children: [
                          Expanded(flex: 1, child: Container()),
                          SizedBox(width: 3),
                          Container(
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Colors.black, width: 1)),
                              child: Align(
                                  alignment: Alignment.center, // 横方向の中央に配置
                                  child: Padding(
                                      padding: const EdgeInsets.all(17),
                                      child: Text('架・払',
                                          style: TextStyle(fontSize: 14))))),
                          SizedBox(width: 3),
                          Expanded(
                              flex: 2,
                              child: MyTextField3(
                                hintText: '北',
                                controller: _spanNorthController,
                              )),
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
                              child: MyTextField3(
                                hintText: '東',
                                controller: _heightEastController,
                              )),
                          SizedBox(width: 3),
                          Expanded(
                              flex: 1,
                              child: MyTextField3(
                                hintText: '西',
                                controller: _heightWestController,
                              )),
                        ],
                      ),
                      SizedBox(height: 5),
                      Row(
                        children: [
                          SizedBox(width: 20),
                          Expanded(
                              flex: 2,
                              child: MyTextField3(
                                hintText: '南',
                                controller: _heightSouthController,
                              )),
                          SizedBox(width: 3),
                          Expanded(
                              flex: 2,
                              child: MyTextField3(
                                hintText: '北',
                                controller: _heightNorthController,
                              )),
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
                                  alignment: Alignment.center, // 横方向の中央に配置
                                  child: Padding(
                                      padding: const EdgeInsets.all(14),
                                      child: Text('架・払',
                                          style: TextStyle(fontSize: 14))))),
                          SizedBox(width: 3),
                          Expanded(
                              flex: 1,
                              child: MyTextField3(
                                hintText: '基',
                                controller: _rollingStepController,
                              )),
                          SizedBox(width: 3),
                          Text('H=',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold)),
                          Expanded(
                              flex: 1,
                              child: MyTextField3(
                                hintText: '',
                                controller: _rollingHeightController,
                              )),
                        ],
                      ),
                      SizedBox(height: 5),
                      Row(
                        children: [
                          Expanded(flex: 1, child: Container()),
                          Expanded(
                              flex: 2,
                              child: MyTextField3(
                                hintText: '',
                                controller: _rollingWidthController,
                              )),
                          SizedBox(width: 3),
                          Text('×',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20)),
                          Expanded(
                              flex: 2,
                              child: MyTextField3(
                                hintText: '',
                                controller: _rollingVerticalController,
                              )),
                        ],
                      ),
                      SizedBox(height: 20),
                      Text(
                        '持出し工具',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 3),
                      Text('インパクト・ヒルディ・親綱・ワイヤー・杭打ち機・丸ノコ・サンダー・バイブカッター・その他'),
                      SizedBox(height: 3),
                      MyTextField2(
                        hintText: '',
                        controller: _carryOutToolController,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10),
                //　下部
                Container(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                              flex: 1,
                              child: Row3(
                                title: '始業時間',
                                controller: _startTimeController,
                              )),
                          Expanded(
                              flex: 1,
                              child: Row3(
                                title: '就業時間',
                                controller: _closingTimeController,
                              )),
                        ],
                      ),
                      SizedBox(height: 3),
                      Row3(
                        title: '連絡事項',
                        controller: _contactController,
                      ),
                      SizedBox(height: 3),
                      MyTextField3(
                        hintText: 'フリースペース',
                        controller: _freeController,
                      )
                    ],
                  ),
                ),
                SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      child: Text('保存'),
                    ),
                    SizedBox(width: 20),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SubmitPage(
                                    auth: _authorController.text,
                                    number: _numberController.text,
                                    companion: _companionController.text,
                                    outsideCompanion:
                                        _outsideCompanionController.text,
                                    primeConstractor:
                                        _primeConstractorController.text,
                                    place: _placeController.text,
                                    car: _carController.text,
                                    content: _contentController.text,
                                    etc: _etcController.text,
                                    parking: _parkingPriceController.text,
                                    outside: _outsideController.text,
                                    inside: _insideController.text,
                                    kiso: _kisoController.text,
                                    liftingEquipmentStep:
                                        _liftingEquipmentStepController.text,
                                    liftingEquipmentgroup:
                                        _liftingEquipmentgroupController.text,
                                    liftingEquipmentSurface:
                                        _liftingEquipmentSurfaceController.text,
                                    liftingEquipmentStep2:
                                        _liftingEquipmentStep2Controller.text,
                                    liftingEquipmentSurface2:
                                        _liftingEquipmentSurface2Controller
                                            .text,
                                    rampStep: _rampStepController.text,
                                    rampplace: _rampplaceController.text,
                                    curingDirection:
                                        _curingDirectionController.text,
                                    square: _squareController.text,
                                    mesh: _meshController.text,
                                    openingSurface:
                                        _openingSurfaceController.text,
                                    openingPlace: _openingPlaceController.text,
                                    fivefourzerozeroSurface:
                                        _5400SurfaceController.text,
                                    fivefourzerozeroPlace:
                                        _5400PlaceController.text,
                                    spanEast: _spanEastController.text,
                                    spanWest: _spanWestController.text,
                                    spanSouth: _spanSouthController.text,
                                    spanNouth: _spanNorthController.text,
                                    heightEast: _heightEastController.text,
                                    heightWest: _heightWestController.text,
                                    heightSouth: _heightSouthController.text,
                                    heightNouth: _heightNorthController.text,
                                    rollingHeight:
                                        _rollingHeightController.text,
                                    rollingStep: _rollingStepController.text,
                                    rollingWidth: _rollingWidthController.text,
                                    rollingVertical:
                                        _rollingVerticalController.text,
                                    carryOutTool: _carryOutToolController.text,
                                    startTime: _startTimeController.text,
                                    closingTime: _closingTimeController.text,
                                    contact: _contactController.text,
                                    free: _freeController.text,
                                  )),
                        );
                      },
                      child: Text('確認'),
                    ),
                    SizedBox(width: 5),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SubmitWebPage(
                                    auth: _authorController.text,
                                    number: _numberController.text,
                                    companion: _companionController.text,
                                    outsideCompanion:
                                        _outsideCompanionController.text,
                                    primeConstractor:
                                        _primeConstractorController.text,
                                    place: _placeController.text,
                                    car: _carController.text,
                                    content: _contentController.text,
                                    etc: _etcController.text,
                                    parking: _parkingPriceController.text,
                                    outside: _outsideController.text,
                                    inside: _insideController.text,
                                    kiso: _kisoController.text,
                                    liftingEquipmentStep:
                                        _liftingEquipmentStepController.text,
                                    liftingEquipmentgroup:
                                        _liftingEquipmentgroupController.text,
                                    liftingEquipmentSurface:
                                        _liftingEquipmentSurfaceController.text,
                                    liftingEquipmentStep2:
                                        _liftingEquipmentStep2Controller.text,
                                    liftingEquipmentSurface2:
                                        _liftingEquipmentSurface2Controller
                                            .text,
                                    rampStep: _rampStepController.text,
                                    rampplace: _rampplaceController.text,
                                    curingDirection:
                                        _curingDirectionController.text,
                                    square: _squareController.text,
                                    mesh: _meshController.text,
                                    openingSurface:
                                        _openingSurfaceController.text,
                                    openingPlace: _openingPlaceController.text,
                                    fivefourzerozeroSurface:
                                        _5400SurfaceController.text,
                                    fivefourzerozeroPlace:
                                        _5400PlaceController.text,
                                    spanEast: _spanEastController.text,
                                    spanWest: _spanWestController.text,
                                    spanSouth: _spanSouthController.text,
                                    spanNouth: _spanNorthController.text,
                                    heightEast: _heightEastController.text,
                                    heightWest: _heightWestController.text,
                                    heightSouth: _heightSouthController.text,
                                    heightNouth: _heightNorthController.text,
                                    rollingHeight:
                                        _rollingHeightController.text,
                                    rollingStep: _rollingStepController.text,
                                    rollingWidth: _rollingWidthController.text,
                                    rollingVertical:
                                        _rollingVerticalController.text,
                                    carryOutTool: _carryOutToolController.text,
                                    startTime: _startTimeController.text,
                                    closingTime: _closingTimeController.text,
                                    contact: _contactController.text,
                                    free: _freeController.text,
                                  )),
                        );
                      },
                      child: Text('確認Web'),
                    ),
                  ],
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
