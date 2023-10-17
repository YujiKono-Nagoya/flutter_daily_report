import 'package:flutter/material.dart';

class MyTitleContainer extends StatelessWidget {
  final String title;

  const MyTitleContainer({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Color(0xFFBCBCBC)),
        color: Color(0xFFDEEBF7),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 7.8, vertical: 9.8),
        child: Text(
          title,
          style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}

class MyContentContainer extends StatelessWidget {
  final String content;
  const MyContentContainer({super.key, required this.content});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Color(0xFFBCBCBC)),
      ),
      child: Padding(
        padding: const EdgeInsets.all(7.0),
        child: Text(
          content,
          style: TextStyle(fontSize: 14),
        ),
      ),
    );
  }
}

class MyTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final double width;
  const MyTextField(
      {super.key,
      required this.hintText,
      required this.width,
      required this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: null,
      width: width,
      child: TextField(
        controller: controller,
        maxLines: null,
        textInputAction: TextInputAction.newline,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade200),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),
          fillColor: Colors.white,
          filled: true,
          hintText: hintText,
          hintStyle: const TextStyle(color: Colors.grey),
        ),
      ),
    );
  }
}

class MyDropdownButton extends StatelessWidget {
  final String selectedValue;
  final List<String> items;
  final ValueSetter<String?>? onChanged; // ValueSetter<String?>?型に修正

  MyDropdownButton({
    required this.selectedValue,
    required this.items,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: selectedValue,
      onChanged: onChanged,
      items: items.map((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}

class MyContainer extends StatelessWidget {
  const MyContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Color(0xFFBCBCBC)),
      ),
    );
  }
}

class MyWordCount extends StatelessWidget {
  final String count;
  const MyWordCount({super.key, required this.count});

  @override
  Widget build(BuildContext context) {
    return Text('※ $count 字以上');
  }
}

class MyTextButton extends StatelessWidget {
  final void Function()? onPressed;
  final String buttonName;

  const MyTextButton(
      {super.key, required this.buttonName, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: onPressed, child: Text(buttonName));
  }
}

class ContentField extends StatelessWidget {
  final TextEditingController controller;
  final String title;
  const ContentField({
    super.key,
    required this.title,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
            right: BorderSide(
              color: Colors.black,
              width: 1,
            ),
            left: BorderSide(
              color: Colors.black,
              width: 2,
            ),
            top: BorderSide(
              color: Colors.black,
              width: 2,
            ),
            bottom: BorderSide(
              color: Colors.black,
              width: 2,
            )),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  title,
                  style: TextStyle(fontSize: 8, fontWeight: FontWeight.bold),
                ),
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    border: Border(
                      left: BorderSide(
                        color: Colors.black,
                        width: 1,
                      ),
                    ),
                  ),
                  child: TextField(
                    textAlign: TextAlign.center,
                    controller: controller,
                    maxLines: null,
                    textInputAction: TextInputAction.newline,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey.shade200),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      fillColor: Colors.white,
                      filled: true,
                      hintStyle: const TextStyle(color: Colors.grey),
                    ),
                  ),
                ),
              )
            ],
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              border: Border(
                top: BorderSide(
                  color: Colors.black,
                  width: 1,
                ),
              ),
            ),
            child: Align(
              alignment: Alignment.center, // 横方向の中央に配置
              child: Padding(
                padding: const EdgeInsets.all(17),
                child: Text(
                  '遅刻者→○　当欠者→×',
                  style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ContentsecondField extends StatelessWidget {
  final TextEditingController subcontroller;
  final TextEditingController controller;
  final String subtitle;
  final String title;
  const ContentsecondField({
    super.key,
    required this.title,
    required this.subtitle,
    required this.controller,
    required this.subcontroller,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
            left: BorderSide(
              color: Colors.black,
              width: 1,
            ),
            right: BorderSide(
              color: Colors.black,
              width: 1,
            ),
            top: BorderSide(
              color: Colors.black,
              width: 2,
            ),
            bottom: BorderSide(
              color: Colors.black,
              width: 1,
            )),
      ),
      child: Column(
        children: [
          //同伴者
          Row1(
            title: title,
            controller: controller,
          ),
          //応援
          Row1(
            title: subtitle,
            controller: subcontroller,
          ),
        ],
      ),
    );
  }
}

class ContentThirdField extends StatelessWidget {
  final TextEditingController controller;
  final String title;
  const ContentThirdField({
    super.key,
    required this.title,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
            left: BorderSide(
              color: Colors.black,
              width: 1,
            ),
            right: BorderSide(
              color: Colors.black,
              width: 2,
            ),
            top: BorderSide(
              color: Colors.black,
              width: 2,
            ),
            bottom: BorderSide(
              color: Colors.black,
              width: 2,
            )),
      ),
      child: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Colors.black,
                  width: 1,
                ),
              ),
            ),
            child: Align(
              alignment: Alignment.center, // 横方向の中央に配置
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Text(
                  '作業員数',
                  style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          Container(
            child: TextField(
              textAlign: TextAlign.center,
              controller: controller,
              maxLines: null,
              textInputAction: TextInputAction.newline,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey.shade200),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
                fillColor: Colors.white,
                filled: true,
                hintStyle: const TextStyle(color: Colors.grey),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class Row2 extends StatelessWidget {
  final TextEditingController controller;
  final String secondtitle;
  const Row2({
    super.key,
    required this.secondtitle,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: EdgeInsets.all(7.0),
          child: Text(
            secondtitle,
            style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
          ),
        ),
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              border: Border(
                left: BorderSide(
                  color: Colors.black,
                  width: 1,
                ),
              ),
            ),
            child: TextField(
              textAlign: TextAlign.center,
              controller: controller,
              maxLines: null,
              textInputAction: TextInputAction.newline,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey.shade200),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
                fillColor: Colors.white,
                filled: true,
                hintStyle: const TextStyle(color: Colors.grey),
              ),
            ),
          ),
        )
      ],
    );
  }
}

class Row1 extends StatelessWidget {
  final TextEditingController controller;
  final String title;
  const Row1({
    super.key,
    required this.title,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(color: Colors.black, width: 1)),
      ),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.all(7.0),
            child: Text(
              title,
              style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                border: Border(
                  left: BorderSide(
                    color: Colors.black,
                    width: 1,
                  ),
                ),
              ),
              child: TextField(
                textAlign: TextAlign.center,
                controller: controller,
                maxLines: null,
                textInputAction: TextInputAction.newline,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey.shade200),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  fillColor: Colors.white,
                  filled: true,
                  hintStyle: const TextStyle(color: Colors.grey),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class MyTextField2 extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  const MyTextField2({
    super.key,
    required this.hintText,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      textAlign: TextAlign.center,
      controller: controller,
      maxLines: null,
      textInputAction: TextInputAction.newline,
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey.shade200),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
        ),
        fillColor: Colors.white,
        filled: true,
        hintText: hintText,
        hintStyle: const TextStyle(color: Colors.grey),
      ),
    );
  }
}

class MyTextField3 extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  const MyTextField3({
    super.key,
    required this.hintText,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      textAlign: TextAlign.center,
      controller: controller,
      maxLines: null,
      textInputAction: TextInputAction.newline,
      decoration: InputDecoration(
        border: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.grey.shade200),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
        ),
        hintText: hintText,
        hintStyle: const TextStyle(color: Colors.grey),
        filled: true,
        fillColor: Colors.white,
      ),
    );
  }
}

class Row3 extends StatelessWidget {
  final TextEditingController controller;
  final String title;
  const Row3({
    super.key,
    required this.title,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black, width: 1),
      ),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.all(7.0),
            child: Text(
              title,
              style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                border: Border(
                  left: BorderSide(
                    color: Colors.black,
                    width: 1,
                  ),
                ),
              ),
              child: TextField(
                textAlign: TextAlign.center,
                controller: controller,
                maxLines: null,
                textInputAction: TextInputAction.newline,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey.shade200),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  fillColor: Colors.white,
                  filled: true,
                  hintStyle: const TextStyle(color: Colors.grey),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class ContentText extends StatelessWidget {
  final String controller;
  final String title;
  const ContentText({
    super.key,
    required this.title,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
            right: BorderSide(
              color: Colors.black,
              width: 1,
            ),
            left: BorderSide(
              color: Colors.black,
              width: 2,
            ),
            top: BorderSide(
              color: Colors.black,
              width: 2,
            ),
            bottom: BorderSide(
              color: Colors.black,
              width: 2,
            )),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  border: Border(
                    right: BorderSide(
                      color: Colors.black,
                      width: 1,
                    ),
                  ),
                ),
                padding: EdgeInsets.all(8.0),
                child: Text(
                  title,
                  style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                child: Text(controller),
              )
            ],
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              border: Border(
                top: BorderSide(
                  color: Colors.black,
                  width: 1,
                ),
              ),
            ),
            child: Align(
              alignment: Alignment.center, // 横方向の中央に配置
              child: Padding(
                padding: const EdgeInsets.all(17),
                child: Text(
                  '遅刻者→○　当欠者→×',
                  style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ContentThirdText extends StatelessWidget {
  final String controller;
  final String title;
  const ContentThirdText({
    super.key,
    required this.title,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
            left: BorderSide(
              color: Colors.black,
              width: 1,
            ),
            right: BorderSide(
              color: Colors.black,
              width: 2,
            ),
            top: BorderSide(
              color: Colors.black,
              width: 2,
            ),
            bottom: BorderSide(
              color: Colors.black,
              width: 2,
            )),
      ),
      child: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Colors.black,
                  width: 1,
                ),
              ),
            ),
            child: Align(
              alignment: Alignment.center, // 横方向の中央に配置
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Text(
                  '作業員数',
                  style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              child: Text(
                controller,
                maxLines: null,
                textAlign: TextAlign.center,
              ),
            ),
          )
        ],
      ),
    );
  }
}

class ContentsecondText extends StatelessWidget {
  final String subcontroller;
  final String controller;
  final String subtitle;
  final String title;
  const ContentsecondText({
    super.key,
    required this.title,
    required this.subtitle,
    required this.controller,
    required this.subcontroller,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
            left: BorderSide(
              color: Colors.black,
              width: 1,
            ),
            right: BorderSide(
              color: Colors.black,
              width: 1,
            ),
            top: BorderSide(
              color: Colors.black,
              width: 2,
            ),
            bottom: BorderSide(
              color: Colors.black,
              width: 1,
            )),
      ),
      child: Column(
        children: [
          //同伴者
          Row4(
            title: title,
            controller: controller,
          ),
          //応援
          Row4(
            title: subtitle,
            controller: subcontroller,
          ),
        ],
      ),
    );
  }
}

class Row4 extends StatelessWidget {
  final String controller;
  final String title;
  const Row4({
    super.key,
    required this.title,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(color: Colors.black, width: 1)),
      ),
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              decoration: BoxDecoration(
                border: Border(
                  right: BorderSide(
                    color: Colors.black,
                    width: 1,
                  ),
                ),
              ),
              padding: EdgeInsets.all(10.0),
              child: Text(
                title,
                style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Expanded(
            flex: 7,
            child: Container(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  controller,
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class MyText2 extends StatelessWidget {
  final String unit;
  final String controller;
  const MyText2({super.key, required this.controller, required this.unit});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(border: Border.all(color: Colors.black)),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Text(
          controller + unit,
          textAlign: TextAlign.center,
          maxLines: null,
        ),
      ),
    );
  }
}

class MyText3 extends StatelessWidget {
  final String unit;
  final String controller;
  const MyText3({
    super.key,
    required this.controller,
    required this.unit,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Colors.black,
            width: 1,
          ),
        ),
      ),
      child: Text(
        controller + '　' + unit,
        textAlign: TextAlign.center,
      ),
    );
  }
}

class MyText4 extends StatelessWidget {
  final String unit;
  final String controller;
  const MyText4({
    super.key,
    required this.controller,
    required this.unit,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Colors.black,
            width: 1,
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(child: Container(), flex: 1),
          Expanded(child: Text(controller), flex: 1),
          Expanded(
              child: Text(
                unit,
                textAlign: TextAlign.end,
              ),
              flex: 1)
        ],
      ),
    );
  }
}
