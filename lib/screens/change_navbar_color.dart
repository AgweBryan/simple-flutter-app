import 'package:flutter/material.dart';

class ChangeNavBarColor extends StatefulWidget {
  const ChangeNavBarColor({Key? key}) : super(key: key);

  @override
  State<ChangeNavBarColor> createState() => ChangeNavBarColorState();
}

class ChangeNavBarColorState extends State<ChangeNavBarColor> {
  int index = 0;

  List<Color> colorList = [
    Colors.brown,
    Colors.black,
    Colors.white,
    Colors.green,
    Colors.indigo,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorList[index],
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            if (index == 4) {
              setState(() {
                index = -1;
              });
            }
            setState(() {
              index++;
            });
          },
          child: Text(
            'Change screen color',
          ),
        ),
      ),
    );
  }
}
