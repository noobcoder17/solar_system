import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

//model
import '../models/topic.dart';
import '../models/comet.dart';

//provide
import '../providers/topics.dart';
import '../providers/comet_data.dart';

class CometsOverviewScreen extends StatelessWidget {
  static const routeName = '/comets-overview-screen';
  @override
  Widget build(BuildContext context) {

    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    final topicId = ModalRoute.of(context).settings.arguments as String;
    final Topic topic = Provider.of<Topics>(context).getSingleTopic(topicId);
    final Comet cometsData = Provider.of<CometsData>(context).getData;
    
    return Scaffold(
      backgroundColor: topic.gradient[0],
      body: Stack(
        children: <Widget>[
          heroBackground(height, width,topic.bgHeroTagName,topic.gradient),
          mainContent(height,width,topic.imageSrc,topic.imageHeroTagName,cometsData,context),
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

Widget topicContainer(String title,String data){
  return Container(
    padding: const EdgeInsets.only(left: 0,right: 0,top: 10,bottom: 10),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          title,
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
            data,
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
  );
}

Widget pointWiseDataContainer(Map<String,dynamic> data){
  return Container(
    padding: const EdgeInsets.only(left: 0,right: 0,top: 10,bottom: 10),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          data['topicName'],
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
            data['intro'],
            textAlign: TextAlign.justify,
            style: TextStyle(
              fontSize: 15,
              height: 1.4,
              color: Colors.white,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 15),
          child: Column(
            children: <Widget>[
              ...data['data'].map((item){
                return Padding(
                  padding: const EdgeInsets.only(top:8.0,bottom:8.0),
                  child: Text(
                    "${item.title} : ${item.details}",
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontSize: 15,
                      height: 1.4,
                      color: Colors.white,
                    )
                  ),
                );
              }).toList()
            ],
          ),
        )
      ],
    ),
  );
}


Widget mainContent(double height,double width,String imageSrc,String heroImageTagName,Comet data,BuildContext context){
  return Container(
    height: height,
    width: width,
    child: SingleChildScrollView(
      child: Column(
        children: <Widget>[
          backButton(context),
          Container(
            padding: EdgeInsets.fromLTRB(30,30,30,0),
            child: Column(
              children: <Widget>[
                Text("Know about the most mysterious objects",style: TextStyle(fontSize: 30,color: Colors.white,letterSpacing: 1,wordSpacing: 2)),
                SizedBox(height: 15,),
                Hero(tag:heroImageTagName,child:Image.asset(imageSrc,width: width*0.70,),),
                SizedBox(height: 30,),
                topicContainer("What is a comet?", data.whatIsComet),
                pointWiseDataContainer(data.partsOfComet),
                pointWiseDataContainer(data.famousComets),
              ],
            ),
          ),
        ],
      ),
    )
  );
}