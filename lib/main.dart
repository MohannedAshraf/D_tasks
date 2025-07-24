import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: const MyHomePage());
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text(
          "Column & Row",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 70),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                FirstCoulmn(
                  color1: MyColors.purple1,
                  color2: MyColors.purple2,
                  color3: MyColors.purple3,
                  color4: MyColors.purple4,
                ),
                Spacer(),
                FirstCoulmn(
                  color1: MyColors.green1,
                  color2: MyColors.green2,
                  color3: MyColors.green3,
                  color4: MyColors.green4,
                ),
                Spacer(),
                FirstCoulmn(
                  color1: MyColors.blue1,
                  color2: MyColors.blue2,
                  color3: MyColors.blue3,
                  color4: MyColors.blue4,
                ),
              ],
            ),
            Spacer(),
            Row(
              children: [
                SecondCoulmn(
                  color1: MyColors.purple1,
                  color2: MyColors.purple2,
                  color3: MyColors.purple3,
                  color4: MyColors.purple4,
                  cross: CrossAxisAlignment.start,
                ),
                Spacer(),
                SecondCoulmn(
                  color1: MyColors.green1,
                  color2: MyColors.green2,
                  color3: MyColors.green3,
                  color4: MyColors.green4,
                  cross: CrossAxisAlignment.center,
                ),
                Spacer(),
                SecondCoulmn(
                  color1: MyColors.blue1,
                  color2: MyColors.blue2,
                  color3: MyColors.blue3,
                  color4: MyColors.blue4,
                  cross: CrossAxisAlignment.end,
                ),
              ],
            ),
            Spacer(),
            Row(
              children: [
                ThirdCoulmn(
                  color1: MyColors.purple1,
                  color2: MyColors.purple2,
                  color3: MyColors.purple3,
                  color4: MyColors.purple4,
                  cross: CrossAxisAlignment.start,
                ),
                Spacer(),
                ThirdCoulmn(
                  color1: MyColors.green1,
                  color2: MyColors.green2,
                  color3: MyColors.green3,
                  color4: MyColors.green4,
                  cross: CrossAxisAlignment.center,
                ),
                Spacer(),
                ThirdCoulmn(
                  color1: MyColors.blue1,
                  color2: MyColors.blue2,
                  color3: MyColors.blue3,
                  color4: MyColors.blue4,
                  cross: CrossAxisAlignment.end,
                ),
              ],
            ),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                FourthCoulmn(
                  color1: MyColors.purple1,
                  color2: MyColors.purple2,
                  color3: MyColors.purple3,
                  color4: MyColors.purple4,
                ),
                Spacer(),
                FourthCoulmn(
                  color1: MyColors.green1,
                  color2: MyColors.green2,
                  color3: MyColors.green3,
                  color4: MyColors.green4,
                ),
                Spacer(),
                FourthCoulmn(
                  color1: MyColors.blue1,
                  color2: MyColors.blue2,
                  color3: MyColors.blue3,
                  color4: MyColors.blue4,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

abstract class MyColors {
  static const blue1 = Color(0xff42A5F6);
  static const blue2 = Color(0xff64B5F6);
  static const blue3 = Color(0xff8FCBFD);
  static const blue4 = Color(0xffBDDCF8);
  static const green1 = Color(0xff64BC68);
  static const green2 = Color(0xff90C783);
  static const green3 = Color(0xffA5D6A7);
  static const green4 = Color(0xffC8E6CA);
  static const purple1 = Color(0xffAB46BC);
  static const purple2 = Color(0xffBB67C7);
  static const purple3 = Color(0xffCF94D8);
  static const purple4 = Color(0xffE1BEE8);
}

class FirstCoulmn extends StatelessWidget {
  const FirstCoulmn({
    super.key,
    required this.color1,
    required this.color2,
    required this.color3,
    required this.color4,
  });

  final Color color1;
  final Color color2;
  final Color color3;
  final Color color4;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final boxWidth = screenWidth * 0.22;
    final boxHeight = MediaQuery.of(context).size.height * 0.025;

    return Column(
      children: [
        Container(width: boxWidth, height: boxHeight, color: color1),
        Container(width: boxWidth, height: boxHeight, color: color2),
        Container(width: boxWidth, height: boxHeight, color: color3),
        Container(width: boxWidth, height: boxHeight, color: color4),
      ],
    );
  }
}

class SecondCoulmn extends StatelessWidget {
  const SecondCoulmn({
    super.key,
    required this.color1,
    required this.color2,
    required this.color3,
    required this.color4,
    required this.cross,
  });

  final Color color1;
  final Color color2;
  final Color color3;
  final Color color4;
  final CrossAxisAlignment cross;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height * 0.025;

    return Column(
      crossAxisAlignment: cross,
      children: [
        Container(width: screenWidth * 0.22, height: height, color: color1),
        Container(width: screenWidth * 0.17, height: height, color: color2),
        Container(width: screenWidth * 0.12, height: height, color: color3),
        Container(width: screenWidth * 0.07, height: height, color: color4),
      ],
    );
  }
}

class ThirdCoulmn extends StatelessWidget {
  const ThirdCoulmn({
    super.key,
    required this.color1,
    required this.color2,
    required this.color3,
    required this.color4,
    required this.cross,
  });

  final Color color1;
  final Color color2;
  final Color color3;
  final Color color4;
  final CrossAxisAlignment cross;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width * 0.05;
    final screenHeight = MediaQuery.of(context).size.height;

    return Row(
      crossAxisAlignment: cross,
      children: [
        Container(width: width, height: screenHeight * 0.10, color: color1),
        Container(width: width, height: screenHeight * 0.08, color: color2),
        Container(width: width, height: screenHeight * 0.06, color: color3),
        Container(width: width, height: screenHeight * 0.04, color: color4),
      ],
    );
  }
}

class FourthCoulmn extends StatelessWidget {
  const FourthCoulmn({
    super.key,
    required this.color1,
    required this.color2,
    required this.color3,
    required this.color4,
  });

  final Color color1;
  final Color color2;
  final Color color3;
  final Color color4;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width * 0.05;
    final height = MediaQuery.of(context).size.height * 0.10;

    return Row(
      children: [
        Container(width: width, height: height, color: color1),
        Container(width: width, height: height, color: color2),
        Container(width: width, height: height, color: color3),
        Container(width: width, height: height, color: color4),
      ],
    );
  }
}
