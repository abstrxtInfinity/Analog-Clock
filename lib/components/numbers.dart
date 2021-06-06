import 'package:flutter/material.dart';

class Number extends StatelessWidget {
  String number;
  double top, left, bottom, right;
  Number({
    required this.number,
    required this.bottom,
    required this.right,
    required this.left,
    required this.top,
  });
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top,
      left: left,
      right: right,
      bottom: bottom,
      child: Container(
        alignment: Alignment.center,
        width: double.infinity,
        child: Text(
          number,
          style: Theme.of(context).textTheme.bodyText2!.copyWith(
                fontSize: 22,
              ),
        ),
      ),
    );
  }
}
