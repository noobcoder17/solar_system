import 'package:flutter/material.dart';

//models
import '../models/comet.dart';

class Data {
  final String title;
  final String details;

  Data(this.title, this.details);
}


class CometsData with ChangeNotifier{
  Comet _cometsData = new Comet(
    whatIsComet: "Comets, like asteroids, are small celestial bodies that orbit the Sun. However, unlike asteroids, comets are composed primarily of frozen ammonia, methane or water, and contain only small amounts of rocky material. As a result of this composition comets have been given the nickname of dirty snowballs.",
    partsOfComet: {
      'topicName' : "Parts of Comet",
      'intro' : "Some comets have highly elliptical orbits that bring them relatively close to the Sun. As these comets near the Sun the ices found within them melt and brilliant features are formed. Below is a list of these features.",
      'data' : [
        Data('Nucleus',"The nucleus of a comet is composed of ice and rocky material. The nucleus of most comets ranges from about 10 to 100 km in diameter, though they can be as large as 100 km in diameter."),
        Data('Coma',"The cloud of gases that forms around the nucleus as the coma is heated is know as the coma. These gases are usually a mixture of water vapor, ammonia, carbon dioxide."),
        Data('Dust Tail',"The dust tail of a comet is composed of gases and tiny dust particles blown away from the nucelus as the comet is heated. The dust tail is the most visible part of a comet."),
        Data('Ion Tail',"The ion tail is a stream of ionized gases that are blown directly away from the Sun as a result of the comet’s contact with the solar wind."),
      ]
    },
    famousComets: {
      'topicName' : 'Famous Comets',
      'intro' : "There are several famous comets, with some being known to ancient humans and some only recently appearing. Below are the most well known comets.",
      'data' : [
        Data('Halley’s Comet',"In 1705, while studying the orbits of several known comets, Edmond Halley found that the comet observed in 1531, 1607 and 1682 was one in the same. As a result of Halley’s discovery, the comet was named after him. Halley’s Comet is visible every 75 to 76 years."),
        Data('Comet Hale-Bopp',"Comet Hale-Bopp is best known to most people for the much publicized Californian cult who believed the comet to be a spacecraft. Comet Hale-Bopp was last visible in 1997 and will not be visible again for approximately 2,300 years. It is named after its co-discoverers, Alan Hale and Thomas Bopp."),
        Data('Comet Shoemaker-Levy 9',"Shoemaker-Levy 9, also known as SL 9, was a string of comets that was captured by the gravity of Jupiter and subsequently began an orbit about the planet. The orbit of SL 9 assumed about Jupiter was, however, highly irregular and as a result of this irregularity SL 9 crashed into Jupiter in a brilliant display during the week of July 16, 1994. Shoemake-Levy 9 is named after its discoverers, Gene Shoemaker, Carolyon Shoemaker and David Levy."),
      ]
    }
  );

  Comet get getData{
    return _cometsData;
  }
}