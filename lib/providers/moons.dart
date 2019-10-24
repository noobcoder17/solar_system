import 'package:flutter/material.dart';

//model
import '../models/moon.dart';

class Moons extends ChangeNotifier{
  Moon _moon = new Moon(
      id: 'moon',
      name: "The Moon",
      parentPlanetName: "Earth",
      subTopic: "The Moon, occasionally distinguished as Luna, is an astronomical body that orbits the Earth as its only permanent natural satellite.The Moon is thought to have formed about 4.51 billion years ago, not long after Earth. The most widely accepted explanation is that the Moon formed from the debris left over after a giant impact between Earth and a Mars-sized body called Theia. New research of moon rocks, although not rejecting the Theia hypothesis, suggests that the moon may be older than previously thought.The Moon is in synchronous rotation with Earth, and thus always shows the same side to Earth, the near side. The near side is marked by dark volcanic maria that fill the spaces between the bright ancient crustal highlands and the prominent impact craters. After the Sun, the Moon is the second-brightest regularly visible celestial object in Earth's sky. Its surface is actually dark, although compared to the night sky it appears very bright, with a reflectance just slightly higher than that of worn asphalt. Its gravitational influence produces the ocean tides, body tides, and the slight lengthening of the day.",
      distanceFromEarth: 384400, //km
      orbitalPeriod: 27, //days
      volumeCompareToEarth: 0.020,
      firstMissionToMoon: "Neil Armstrong became the first person to walk on the Moon as the commander of the American mission Apollo 11 by first setting foot on the Moon at 02:56 UTC on 21 July 1969.[197] An estimated 500 million people worldwide watched the transmission by the Apollo TV camera, the largest television audience for a live broadcast at that time.[198][199] The Apollo missions 11 to 17 (except Apollo 13, which aborted its planned lunar landing) removed 380.05 kilograms (837.87 lb) of lunar rock and soil in 2,196 separate samples.[200] The American Moon landing and return was enabled by considerable technological advances in the early 1960s, in domains such as ablation chemistry, software engineering, and atmospheric re-entry technology, and by highly competent management of the enormous technical undertaking.",
    );

  Moon get getData{
    return _moon;
  }
}