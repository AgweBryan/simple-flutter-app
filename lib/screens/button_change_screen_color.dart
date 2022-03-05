import 'package:flutter/material.dart';

class ButtonChangeScreenColor extends StatelessWidget {
  final Function? changeScreenColor;
  ButtonChangeScreenColor({this.changeScreenColor});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Stack(
            children: [
              Center(
                child: ElevatedButton(
                  child: Text(
                    'Change Screen Color',
                  ),
                  onPressed: () {
                    changeScreenColor!();
                  },
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
