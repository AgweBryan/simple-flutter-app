import 'package:flutter/material.dart';

class CounterScreen extends StatelessWidget {
  final int? count;
  final Function? increment;
  CounterScreen({this.count, this.increment});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Stack(
            children: [
              Center(
                child: Text(
                  'You have clicked the button $count times',
                ),
              ),
              Positioned(
                bottom: 10,
                right: 10,
                child: FloatingActionButton(
                  onPressed: () {
                    increment!();
                  },
                  child: Icon(
                    Icons.add,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
