import 'package:flutter/material.dart';
import 'package:solar_system/screens/asteroids_overview_screen.dart';

//models
import '../models/topic.dart';

//screens
import '../screens/sun_detail_screen.dart';
import '../screens/planets_overview_screen.dart';
import '../screens/moons_overview_screen.dart';
import '../screens/comets_overview_screen.dart';


class Topics with ChangeNotifier{
  List<Topic> _topics = [
    Topic(
      id: 'sun',
      topicName: 'Sun',
      subTopic: 'Explore Sun',
      imageSrc: 'assets/images/sun/sun.png',
      gradient: [
        Color(0xFFD20B54),
        Color(0xFFFFB849)
      ],
      routeName: SunDetailScreen.routeName,
      bgHeroTagName: 'sunDetailScreen',
      imageHeroTagName: 'sunDetailScreenImage'
    ),
    Topic(
      id: 'planet',
      topicName: 'Planets',
      subTopic: 'Explore All Planets',
      imageSrc: 'assets/images/planets/earth.png',
      gradient: [
        Color(0xFF303395),
        Color(0xFF27F0F0)
      ],
      routeName: PlanetsOverviewScreen.routeName,
      bgHeroTagName: 'planetsOverviewScreen',
      imageHeroTagName: 'planetsOverviewScreenImage'
    ),
    Topic(
      id: 'moon',
      topicName: 'Moon',
      subTopic: 'Know about moon',
      imageSrc: 'assets/images/moons/moon.png',
      gradient: [
        Color(0xFF05974A),
        Color(0xFFF2E51E)
      ],
      routeName: MoonsOverviewScreen.routeName,
      bgHeroTagName: 'moonsOverviewScreen',
      imageHeroTagName: 'moonsOverviewScreenImage'
    ),
    Topic(
      id: 'comet',
      topicName: 'Comets',
      subTopic: 'Mysterious Comets',
      imageSrc: 'assets/images/comets/comet.png',
      gradient: [
        Color(0xFF2D266F),
        Color(0xFF7C2289)
      ],
      routeName: CometsOverviewScreen.routeName,
      bgHeroTagName: 'cometsOverviewScreen',
      imageHeroTagName: 'cometsOverviewScreenImage'
    ),
    Topic(
      id: 'asteroid',
      topicName: 'Asteroids',
      subTopic: 'Unknown Asteroids',
      imageSrc: 'assets/images/comets/asteroid.png',
      gradient: [
        Color(0xFFF48731),
        Color(0xFFD8E015)
      ],
      routeName: AsteroidsOverviewScreen.routeName,
      bgHeroTagName: 'asteroidsOverviewScreen',
      imageHeroTagName: 'asteroidsOverviewScreenImage'
    )

  ];

  List<Topic> get topics{
    return [..._topics];
  }

  Topic getSingleTopic(String id){
    return _topics.firstWhere((topic)=>topic.id==id);
  }

  int get count{
    return _topics.length;
  }
}