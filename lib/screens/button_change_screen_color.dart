import 'package:flutter/material.dart';

class ButtonChangeScreenColor extends StatefulWidget {
  const ButtonChangeScreenColor({Key? key}) : super(key: key);

  @override
  State<ButtonChangeScreenColor> createState() =>
      ButtonChangeScreenColorState();
}

class ButtonChangeScreenColorState extends State<ButtonChangeScreenColor> {
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
