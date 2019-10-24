import 'package:flutter/material.dart';

class Topic with ChangeNotifier{
  final String id;
  final String topicName;
  final String subTopic;
  final String imageSrc;
  final List<Color> gradient;
  final String routeName;
  final String imageHeroTagName;
  final String bgHeroTagName;

  Topic({
    @required this.id,
    @required this.topicName,
    @required this.subTopic,
    @required this.imageSrc,
    @required this.gradient,
    @required this.routeName,
    @required this.bgHeroTagName,
    @required this.imageHeroTagName,
  });
}