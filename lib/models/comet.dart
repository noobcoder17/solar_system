import 'package:flutter/material.dart';


class Comet with ChangeNotifier{
  final String whatIsComet;
  final Map<String,dynamic> partsOfComet;
  final Map<String,dynamic> famousComets;

  Comet({
    @required this.whatIsComet, 
    @required this.partsOfComet, 
    @required this.famousComets
  });
}