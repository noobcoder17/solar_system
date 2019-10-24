import 'package:flutter/material.dart';

//models
import '../models/sun.dart';


class Sundata with ChangeNotifier{
  Sun _sundata = Sun(
    topicName: 'The Sun',
    subTopic: "The Sun is the star at the center of the Solar System.It is by far the most important source of energy for life on Earth.Its diameter is about 1.39 million kilometers or 109 times that of Earth, and its mass is about 330,000 times that of Earth.It accounts for about 99.86% of the total mass of the Solar System.Roughly three quarters of the Sun's mass consists of hydrogen, the rest is mostly helium, with much smaller quantities of heavier elements, including oxygen, carbon, neon, and iron.The Sun currently fuses about 600 million tons of hydrogen into helium every second, converting 4 million tons of matter into energy every second as a result.This energy, which can take between 10,000 and 170,000 years to escape from its core, is the source of the Sun's light and heat.",
    //numeric data
    distanceFromEarth: 149.6 ,//million km
    distanceFromCenterOfMilkyWay: 27200, //light years
    velocity: 220, //km/s orbit around the center of the Milky Way
    volumeCompareToEarth: 1300000, //x Earth
    age: 46, //billion years
    surfaceTemp: 6050, //*c

    solarFlairDetail: "A solar flare is a sudden flash of increased brightness on the Sun, usually observed near its surface and in close proximity to a sunspot group.Powerful flares are often, but not always, accompanied by a coronal mass ejection.Even the most powerful flares are barely detectable in the total solar irradiance.On July 23, 2012, a massive, potentially damaging, solar storm barely missed Earth.Solar flares strongly influence the local space weather in the vicinity of the Earth.They can produce streams of highly energetic particles in the solar wind or stellar wind, known as a solar proton event.These particles can impact the Earth's magnetosphere, and present radiation hazards to spacecraft and astronauts.Additionally, massive solar flares are sometimes accompanied by coronal mass ejections which can trigger geomagnetic storms that have been known to disable satellites and knock out terrestrial electric power grids for extended periods of time.",
  );

  Sun get getData{
    return _sundata;
  }  
}