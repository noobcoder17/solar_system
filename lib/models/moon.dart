import 'package:flutter/material.dart';

class Moon extends ChangeNotifier {
  final String id;
  final String name;
  final String parentPlanetName;
  final String subTopic;
  //numeric data
  final int distanceFromEarth;
  final int orbitalPeriod;
  final double volumeCompareToEarth;

  final String firstMissionToMoon;

  Moon({
    @required this.id, 
    @required this.name, 
    @required this.parentPlanetName, 
    @required this.subTopic, 
    @required this.distanceFromEarth, 
    @required this.orbitalPeriod, 
    @required this.volumeCompareToEarth, 
    @required this.firstMissionToMoon
  });
}