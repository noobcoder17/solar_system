import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

//model
import '../models/planet.dart';

//screens
import '../screens/planet_detail_screen.dart';


class PlanetCard extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    final cardWidth = width*0.50;
    final cardHeight = height*0.35;

    final data = Provider.of<Planet>(context);

    return GestureDetector(
      onTap: (){
        Navigator.of(context).pushNamed(PlanetDetailScreen.routeName,arguments: data.planetName);
      },
      child: Container(
        margin: EdgeInsets.only(right: 10),
        height: cardHeight,
        width: cardWidth,
        child: Stack(
          children: <Widget>[
            Hero(
              tag: 'planetDetailScreen-${data.planetName}',
              child: Container(
                margin: EdgeInsets.all(8),
                height: cardHeight,
                width: cardWidth,
                decoration: BoxDecoration(
                  //color: Colors.grey[300],              
                  color:Color(0xFF050504),
                  borderRadius: BorderRadius.circular(5),
                  // image: DecorationImage(
                  //   image: AssetImage('assets/images/bg2.png',),
                  //   fit: BoxFit.cover
                  // ),
                  boxShadow: [new BoxShadow(
                    color: Colors.black54,
                    blurRadius: 5.0,
                  ),]
                )
              )
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 8,vertical: 20),
              height: cardHeight,
              width: cardWidth,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Hero(tag:'planetHeroImage-${data.planetName}',child: Image.asset(data.imageSrc,width:cardHeight*0.53,)),
                  Padding(
                    padding: const EdgeInsets.only(left:20.0),
                    child: Align(alignment: Alignment.bottomLeft,child: Hero(tag:"planetHeroName-${data.planetName}",child: Material(color: Colors.transparent,child: Container(child: Text(data.planetName,style: TextStyle(fontSize: 22,color:Colors.white),))))),
                  ),
                ],
              ),
            ),
          ],
          //  child: Hero(
          //   tag: 'planetDetailScreen-${data.id}',
          //   child: Container(
          //     margin: EdgeInsets.all(8),
          //     height: cardHeight,
          //     width: cardWidth,
          //     decoration: BoxDecoration(
          //       //color: Colors.grey[300],              
          //       color:Color(0xFF050504),
          //       borderRadius: BorderRadius.circular(5),
          //       // image: DecorationImage(
          //       //   image: AssetImage('assets/images/bg2.png',),
          //       //   fit: BoxFit.cover
          //       // ),
          //       boxShadow: [new BoxShadow(
          //         color: Colors.black54,
          //         blurRadius: 5.0,
          //       ),]
          //     ),
          //     child: Padding(
          //       padding: const EdgeInsets.symmetric(horizontal: 8,vertical: 20),
          //       child: Column(
          //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //         children: <Widget>[
          //           Image.asset(data.imageSrc,width:cardHeight*0.53,),
          //           Padding(
          //             padding: const EdgeInsets.only(left:20.0),
          //             child: Align(alignment: Alignment.bottomLeft,child: Text(data.planetName,style: TextStyle(fontSize: 22,color:Colors.white),)),
          //           ),
          //         ],
          //       )
          //     ),
          //   ),
          // ),
        ),
          
        
      ),
    );
  }
}