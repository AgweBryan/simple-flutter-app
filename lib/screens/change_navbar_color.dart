import 'package:flutter/material.dart';

class ChangeNavBarColor extends StatelessWidget {
  final Function? changeAppBarColor;
  final Function? changeBottomBarColor;
  ChangeNavBarColor({this.changeAppBarColor, this.changeBottomBarColor});

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
                    'Change Appbar color',
                  ),
                  onPressed: () {
                    changeAppBarColor!();
                    changeBottomBarColor!();
                  },
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
