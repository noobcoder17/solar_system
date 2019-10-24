import 'package:flutter/material.dart';

class Planet with ChangeNotifier{
  final String id;
  final String planetName;
  final String imageSrc;
  //final List<Color> gradient;

  //numeric data
  final double volumeCompareToEarth;
  final int noOfMoons;
  final int avgTemp;
  final double timeToOrbitSun;
  final double dictanceFromEarth;
  final int positionInSolarSystem;

  final String smallIntro;
  final String longDetails;

  final String specialTopicDetail;

  Planet({
    @required this.id, 
    @required this.planetName, 
    @required this.imageSrc, 
    @required this.volumeCompareToEarth, 
    @required this.noOfMoons,
    @required this.avgTemp, 
    @required this.timeToOrbitSun, 
    @required this.dictanceFromEarth, 
    @required this.positionInSolarSystem, 
    @required this.smallIntro, 
    @required this.longDetails, 
    @required this.specialTopicDetail});

}