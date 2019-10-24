import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

//screens
import './screens/home_page.dart';
import './screens/sun_detail_screen.dart';
import './screens/planets_overview_screen.dart';
import './screens/moons_overview_screen.dart';
import './screens/comets_overview_screen.dart';
import './screens/asteroids_overview_screen.dart';
import './screens/planet_detail_screen.dart';

//providers
import './providers/topics.dart';
import './providers/sundata.dart';
import './providers/planets.dart';
import './providers/asteroid_data.dart';
import './providers/comet_data.dart';
import './providers/moons.dart';

void main(){
  SystemChrome.setEnabledSystemUIOverlays ([]);
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(MyApp());
} 

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(builder: (ctx)=>Topics(),),
        ChangeNotifierProvider(builder: (ctx)=>Planets(),),
        ChangeNotifierProvider(builder: (ctx)=>Sundata()),
        ChangeNotifierProvider(builder: (ctx)=>AsteroidData()),
        ChangeNotifierProvider(builder: (ctx)=>CometsData()),
        ChangeNotifierProvider(builder: (ctx)=>Moons()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Solar System',
        home: HomePage(),
        routes: {
          SunDetailScreen.routeName: (ctx)=>SunDetailScreen(),
          PlanetsOverviewScreen.routeName :(ctx)=>PlanetsOverviewScreen(),
          PlanetDetailScreen.routeName: (ctx)=>PlanetDetailScreen(),
          MoonsOverviewScreen.routeName: (ctx)=>MoonsOverviewScreen(),
          CometsOverviewScreen.routeName: (ctx)=>CometsOverviewScreen(),
          AsteroidsOverviewScreen.routeName:(ctx)=>AsteroidsOverviewScreen(),
        },
      ),
    );
  }
}