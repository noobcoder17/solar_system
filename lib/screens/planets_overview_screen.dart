import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

//model
import '../models/topic.dart';
import '../models/planet.dart';

//providers
import '../providers/topics.dart';
import '../providers/planets.dart';

//widgets
import '../widgets/planet_card.dart';

class PlanetsOverviewScreen extends StatelessWidget {
  static const routeName = '/planets-overview-screen';
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    final topicId = ModalRoute.of(context).settings.arguments as String;
    final Topic topic = Provider.of<Topics>(context).getSingleTopic(topicId);
    final planetsData = Provider.of<Planets>(context).getPlanets;

    return Scaffold(
      backgroundColor: topic.gradient[0],
      body: Stack(
        children: <Widget>[
          heroBackground(height, width,topic.bgHeroTagName,topic.gradient),
          mainContent(height,width,topic.imageSrc,planetsData,context),
        ],
      ),
    );
  }
}

Widget heroBackground(double height,double width,String bgTag,List<Color> gradient){
  return  Hero(
    tag: bgTag,
    child: Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: gradient,
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      )
    )
  );
}

Widget backButton(BuildContext context){
  return Padding(
    padding: const EdgeInsets.only(left:20,top: 15),
    child: Row(
      children: <Widget>[
        IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: (){Navigator.of(context).pop();},
        )
      ],
    ),
  );
}


Widget mainContent(double height,double width,String imageSrc,List<Planet> data,BuildContext context){
  return Container(
    height: height,
    width: width,
    child: SingleChildScrollView(
      child: Column(
        children: <Widget>[
          backButton(context),
          Container(
            padding: EdgeInsets.fromLTRB(30,30,30,0),
            child: Column(children: <Widget>[
              Text("Visit the planets of Solar System",style: TextStyle(fontSize: 30,color: Colors.white,letterSpacing: 1,wordSpacing: 2)),
              SizedBox(height: 10,),
              Text(
                "The Solar System is the gravitationally bound system of the Sun and the objects that orbit it, either directly or indirectly. Of the objects that orbit the Sun directly, the largest are the eight planets, with the remainder being smaller objects, such as the five dwarf planets and small Solar System bodies.",
                textAlign:TextAlign.justify,
                style: TextStyle(color: Colors.white,fontSize: 15,wordSpacing: 1),
              ),
            ],
            ),
          ),
          Container(
            height: 360,
            padding: const EdgeInsets.only(top:70),
            child:ListView.builder(
              padding: EdgeInsets.only(left: 23),
              scrollDirection: Axis.horizontal,
              itemCount: data.length,
              itemBuilder: (ctx,i)=> ChangeNotifierProvider.value(
                value: data[i],
                child: PlanetCard(),
              ),
            ),
          ),
        ],
      ),
    )
  );
}