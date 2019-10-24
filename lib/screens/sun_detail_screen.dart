import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

//providers
import '../providers/topics.dart';
import '../providers/sundata.dart';

//model
import '../models/topic.dart';
import '../models/sun.dart';

class SunDetailScreen extends StatelessWidget {
  static const routeName = '/sun-detail-screen';
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    final topicId = ModalRoute.of(context).settings.arguments as String;
    final Topic topic = Provider.of<Topics>(context).getSingleTopic(topicId);
    final Sun sunData = Provider.of<Sundata>(context).getData;
    //print(sunData.subTopic);
    return Scaffold(
      backgroundColor: topic.gradient[0],
      body: Stack(
        children: <Widget>[
          heroBackground(height, width,topic.bgHeroTagName,topic.gradient),
          mainContent(height,width,topic.imageSrc,topic.imageHeroTagName,sunData,context),
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

Widget mainContent(double height,double width,String imageSrc,String heroImageTagName,Sun data,BuildContext context){
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
              data.topicName,
              style: TextStyle(
                fontSize: 40,
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
                Text("Distance from Earth : ${data.distanceFromEarth} million km",style: style,),
                //Text("Distance from center of Milkyway : ${data.distanceFromCenterOfMilkyWay} light years",style: style,),
                Text("Velocity : ${data.velocity} km/s",style: style,),
                Text("Volume : ${data.volumeCompareToEarth} x Earth",style: style,),
                Text("Age: ${data.age} billion years",style: style,),
                Text("Surface Temperature: ${data.surfaceTemp} Kelvin",style: style,)
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.only(left: 30,right: 30,top: 20,bottom: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Solar Flairs",
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
                    data.solarFlairDetail,
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

