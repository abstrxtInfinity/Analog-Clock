import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

import 'clock.dart';
import 'time_int_min_hours.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          // Text(
          //   'Tezpur, Assam, India IST',
          //   style: Theme.of(context).textTheme.bodyText1,
          // ),
          TimeInHourAndMinute(),
          Clock(),
        ],
      ),
    );
  }
}

