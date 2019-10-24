import 'package:flutter/material.dart';

class Sun with ChangeNotifier{
  final String topicName;
  final String subTopic;
  //numeric data
  final double distanceFromEarth;
  final int distanceFromCenterOfMilkyWay;
  final int velocity;
  final int volumeCompareToEarth;
  final int age;
  final int surfaceTemp;

  final String solarFlairDetail;

  Sun({
    @required this.topicName,
    @required this.subTopic,
    //numeric data
    @required this.distanceFromEarth,
    @required this.distanceFromCenterOfMilkyWay,
    @required this.velocity,
    @required this.volumeCompareToEarth,
    @required this.age,
    @required this.surfaceTemp,

    @required this.solarFlairDetail,
  });
}