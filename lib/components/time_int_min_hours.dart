import 'dart:async';
import 'package:flutter/material.dart';

import '../size_config.dart';

class TimeInHourAndMinute extends StatefulWidget {
  @override
  _TimeInHourAndMinuteState createState() => _TimeInHourAndMinuteState();
}

class _TimeInHourAndMinuteState extends State<TimeInHourAndMinute> {
  TimeOfDay _time = TimeOfDay.now();
  @override
  void initState() {
    // TODO: implement initState
    Timer.periodic(Duration(seconds: 1), (timer) {
      if(_time.minute!=TimeOfDay.now().minute){
        setState(() {
          _time = TimeOfDay.now();
        });
      }
    });
    super.initState();

  }
  @override
  Widget build(BuildContext context) {
    String _period = _time.period == DayPeriod.am ? "AM" : "PM";
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "${_time.hourOfPeriod}:${_time.minute}",
          style: Theme.of(context).textTheme.headline1,
        ),
        SizedBox(width: 5),
        RotatedBox(
          quarterTurns: 3,
          child: Text(
            _period,
            style: TextStyle(
              fontSize: getProportionateScreenWidth(18),
            ),
          ),
        ),
      ],
    );
  }
}
