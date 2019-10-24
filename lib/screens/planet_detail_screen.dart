import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

//providers
import '../providers/planets.dart';

//model
import '../models/planet.dart';

class PlanetDetailScreen extends StatelessWidget {
  static const routeName = '/planet-detail-page';
  @override
  Widget build(BuildContext context) {

    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    final planetName = ModalRoute.of(context).settings.arguments as String;
    final planetData = Provider.of<Planets>(context).getSinglePlanetData(planetName);
    return Scaffold(
      backgroundColor: Color(0xFF050504),
      body:Stack(
        children: <Widget>[
          heroBackground(height, width,planetName),
          //Hero(tag:'planetHeroImage-$planetId',child: Image.asset('assets/images/planets/venus.png')),
          //Hero(tag: "planetHeroName-$planetId",child: Text('Venus',style: TextStyle(color: Colors.white,fontSize: 30),))
          mainContent(height,width,context,planetName,planetData),
        ],
      ),
    );
  }
}

Widget heroBackground(double height,double width,String planetName){
  return  Hero(
    tag: 'planetDetailScreen-$planetName',
    child: Container(
      height: height,
      width: width,
      color: Color(0xFF050504),
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


Widget mainContent(double height,double width,BuildContext context,String planetName,Planet data){
   final style = TextStyle(
    fontSize: 16,
    color: Colors.black,
    height: 1.6,
  );
  int orbitDays;
  if(data.timeToOrbitSun<1){
    orbitDays = (data.timeToOrbitSun*365).toInt();
  }

  Widget timePreiod;
  if(data.timeToOrbitSun<1){ 
    timePreiod = Text("Time to orbit Sun : $orbitDays days",style: style,);
  }else{
    timePreiod = Text("Time to orbit Sun : ${data.timeToOrbitSun} year",style: style,);
  }

  Widget distanceFromEarth;
  if(data.dictanceFromEarth<10){ 
    distanceFromEarth = Text("Distance from Earth : ${data.dictanceFromEarth} billion km",style: style,);
  }else{
    distanceFromEarth = Text("Distance from Earth : ${data.dictanceFromEarth} million km",style: style,);
  }


  return Container(
    height: height,
    width: width,
    child: SingleChildScrollView(
      child: Column(
        children: <Widget>[
          backButton(context),
          Hero(
            tag:'planetHeroImage-$planetName',
            child: Image.asset(data.imageSrc,height: height*0.4,width: width*0.6,)
          ),
          Hero(
            tag: "planetHeroName-$planetName",
            child: Material(
              color: Colors.transparent,
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 20),
                child: Text(
                  data.planetName,
                  style: TextStyle(fontSize: 30,color: Colors.white),
                )
              )
            )
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(30,20,30,20),
            child: Text(
              data.smallIntro,
              style: TextStyle(fontSize: 15,color: Colors.white,wordSpacing: -2,letterSpacing: 1,height: 1.5),
              textAlign: TextAlign.justify,
            ),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(30, 20, 30, 20),
            padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5),
              boxShadow: [new BoxShadow(
                color: Colors.white54,
                blurRadius: 5.0,
                ),
              ]
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text("Planet No. : ${data.positionInSolarSystem}",style: style,),
                //Text("Distance from Earth : ${data.dictanceFromEarth} million km",style: style,),
                distanceFromEarth,
                timePreiod,
                Text("Moons : ${data.noOfMoons}",style: style,),
                Text("Avg. Temperature : ${data.avgTemp} Kelvin",style: style,)
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(30,20,30,20),
            child: Text(
              data.longDetails,
              style: TextStyle(fontSize: 15,color: Colors.white,wordSpacing: -2,letterSpacing: 1,height: 1.5),
              textAlign: TextAlign.justify,
            ),
          ),
          Container(
            padding: const EdgeInsets.only(left: 30,right: 30,top: 20,bottom: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Interesting",
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
                    data.specialTopicDetail,
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
