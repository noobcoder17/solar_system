import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

//model
import '../models/topic.dart';
import '../models/moon.dart';

//provide
import '../providers/topics.dart';
import '../providers/moons.dart';

class MoonsOverviewScreen extends StatelessWidget {
  static const routeName = '/moons-overview-screen';
  @override
  Widget build(BuildContext context) {

    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    final topicId = ModalRoute.of(context).settings.arguments as String;
    final Topic topic = Provider.of<Topics>(context).getSingleTopic(topicId);
    final moonsData = Provider.of<Moons>(context).getData;

    return Scaffold(
      backgroundColor: topic.gradient[0],
      body: Stack(
        children: <Widget>[
          heroBackground(height, width,topic.bgHeroTagName,topic.gradient),
          mainContent(height,width,topic.imageSrc,topic.imageHeroTagName,moonsData,context),
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


Widget mainContent(double height,double width,String imageSrc,String heroImageTagName,Moon data,BuildContext context){
  final style = TextStyle(
    fontSize: 16,
    color: Colors.white,
    height: 1.6,
  );
  return Container(
    height: height,
    width: width,
    child: SingleChildScrollView(
      child: Column(
        children: <Widget>[
          backButton(context),
          Hero(tag:heroImageTagName,child:Image.asset(imageSrc,height: width*0.5,),),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: Text(
              data.name,
              style: TextStyle(
                fontSize: 40,
                color: Colors.white,
                letterSpacing: 2
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 4),
            child: Text(
              "Our only natural satellite",
              style: TextStyle(
                fontSize: 18,
                color: Colors.white,
                letterSpacing: 2
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(30,20,30,20),
            child: Text(
              data.subTopic,
              style: TextStyle(fontSize: 15,color: Colors.white,wordSpacing: -2,letterSpacing: 1,height: 1.5),
              textAlign: TextAlign.justify,
            ),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(30, 20, 30, 20),
            padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 20),
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(5),
              boxShadow: [new BoxShadow(
                color: Colors.black54,
                blurRadius: 5.0,
                ),
              ]
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text("Distance from Earth : ${data.distanceFromEarth} km",style: style,),
                Text("Orbital Period : ${data.orbitalPeriod} days",style: style,),
                Text("Volume : ${data.volumeCompareToEarth} x Earth",style: style,),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.only(left: 30,right: 30,top: 20,bottom: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "First mission to Moon",
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 1
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 15),
                  child: Text(
                    data.firstMissionToMoon,
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontSize: 15,
                      height: 1.4,
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    )
  );
}