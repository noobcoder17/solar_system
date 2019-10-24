import 'package:flutter/material.dart';

class Asteroid with ChangeNotifier{
  final String topicName;
  final String whatIsAsteroid;
  final String discovery;
  final String asteroidBelt;

  Asteroid({
    @required this.topicName, 
    @required this.whatIsAsteroid, 
    @required this.discovery, 
    @required this.asteroidBelt});
}