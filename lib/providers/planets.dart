import 'package:flutter/material.dart';

//models
import '../models/planet.dart';


class Planets with ChangeNotifier{
  List<Planet> _planets = [
    Planet(
      id: 'mercury',
      planetName: 'Mercury',
      imageSrc: 'assets/images/planets/mercury.png',

      //numeric data
      volumeCompareToEarth: 0.056,
      noOfMoons: 0,
      avgTemp: 340, //kelvin
      timeToOrbitSun: 0.240,
      dictanceFromEarth: 48,//million
      positionInSolarSystem: 1,

      smallIntro: "Mercury is the smallest and innermost planet in the Solar System. Its orbit around the Sun takes only 87.97 days, the shortest of all the planets in the Solar System. It is named after the Roman deity Mercury, the messenger of the gods.",
      longDetails: "Mercury appears to have a solid silicate crust and mantle overlying a solid, iron sulfide outer core layer, a deeper liquid core layer, and a solid inner core.Mercury is one of four terrestrial planets in the Solar System, and is a rocky body like Earth. It is the smallest planet in the Solar System.Mercury's surface is similar in appearance to that of the Moon, showing extensive mare-like plains and heavy cratering, indicating that it has been geologically inactive for billions of years. Because knowledge of Mercury's geology had been based only on the 1975 Mariner 10 flyby and terrestrial observations, it is the least understood of the terrestrial planets. As data from MESSENGER orbiter are processed, this knowledge will increase. For example, an unusual crater with radiating troughs has been discovered that scientists called 'the spider'. It was later named Apollodorus.",

      specialTopicDetail: "The surface is similar to that of the Moon, as unlike most planets, Mercury isn’t geologically active and cannot “self heal” from impacts with asteroids and comets. Most of the Mercurian craters are named after famous writers and artists. If a crater is larger than 250 km in diameter, it is known as a Basin. The largest Basin on Mercury, the Caloris Basin, is around 1,550 km in diameter and was discovered by the Mariner 10.",
    ),
    Planet(
      id: 'venus',
      planetName: 'Venus',
      imageSrc: 'assets/images/planets/venus.png',

      //numeric data
      volumeCompareToEarth: 0.866,
      noOfMoons: 0,
      avgTemp: 737 , //kelvin
      timeToOrbitSun: 0.615,
      dictanceFromEarth: 38,//million
      positionInSolarSystem: 2,

      smallIntro: "Venus is the second planet from the Sun. It is named after the Roman goddess of love and beauty. As the second-brightest natural object in the night sky,it is visible to the naked eye in broad daylight. Venus orbits the Sun every 224.7 Earth days.",
      longDetails: "Venus is a terrestrial planet and is sometimes called Earth's 'sister planet' because of their similar size, mass, proximity to the Sun, and bulk composition.t is radically different from Earth in other respects. It has the densest atmosphere of the four terrestrial planets, consisting of more than 96% carbon dioxide. The atmospheric pressure at the planet's surface is 92 times that of Earth, or roughly the pressure found 900 m (3,000 ft) underwater on Earth. Venus is by far the hottest planet in the Solar System, with a mean surface temperature of 735 K (462 °C; 863 °F), even though Mercury is closer to the Sun.It was the first planet beyond Earth visited by a spacecraft Mariner 2 in 1962, and the first to be successfully landed on by Venera 7 in 1970. Venus's thick clouds render observation of its surface impossible in visible light, and the first detailed maps did not emerge until the arrival of the Magellan orbiter in 1991. Plans have been proposed for rovers or more complex missions, but they are hindered by Venus's hostile surface conditions.",

      specialTopicDetail: "Billions of years ago, the climate of Venus may been similar to that of Earth and scientists believe that Venus once possessed large amounts of water or oceans. However, due to the high temperatures produce from the extreme greenhouse effect, this water boiled off long ago and the surface of the planet is now too hot and hostile to sustain life.The estimated age of the Venusian surface is around 300-400 million years old. By comparison, the surface of the Earth is about 100 million years old.",
    ),
    Planet(
      id: 'earth',
      planetName: 'Earth',
      imageSrc: 'assets/images/planets/earth.png',

      //numeric data
      volumeCompareToEarth: 1,
      noOfMoons: 1,
      avgTemp: 288, //kelvin
      timeToOrbitSun: 1,
      dictanceFromEarth: 0,//million
      positionInSolarSystem: 3,

      smallIntro: "Earth is the third planet from the Sun and the only astronomical object known to harbor life. According to radiometric dating and other sources of evidence, Earth formed over 4.5 billion years ago.Earth orbits around the Sun in 365 days.",
      longDetails: "Within the first billion years of Earth's history, life appeared in the oceans and began to affect the Earth's atmosphere and surface, leading to the proliferation of anaerobic and, later, aerobic organisms. Some geological evidence indicates that life may have arisen as early as 4.1 billion years ago. Since then, the combination of Earth's distance from the Sun, physical properties and geological history have allowed life to evolve and thrive.In the history of life on Earth, biodiversity has gone through long periods of expansion, occasionally punctuated by mass extinction events. Over 99% of all species that ever lived on Earth are extinct. Estimates of the number of species on Earth today vary widely most species have not been described. Over 7.6 billion humans live on Earth and depend on its biosphere and natural resources for their survival. Humans have developed diverse societies and cultures; politically, the world has around 200 sovereign states.",

      specialTopicDetail: "Earth is the only planet in the Solar System with plate tectonics. Basically, the outer crust of the Earth is broken up into regions known as tectonic plates. These are floating on top of the magma interior of the Earth and can move against one another. When two plates collide, one plate will subduct (go underneath another), and where they pull apart, they will allow fresh crust to form.Without the action of plate tectonics, there would be no way to recycle this carbon, and the Earth would become an overheated, hellish place.",
    ),
    Planet(
      id: 'mars',
      planetName: 'Mars',
      imageSrc: 'assets/images/planets/mars.png',

      //numeric data
      volumeCompareToEarth: 0.151,
      noOfMoons: 2,
      avgTemp: 210, //kelvin
      timeToOrbitSun: 1.88,
      dictanceFromEarth: 54.6,//million
      positionInSolarSystem: 4,

      smallIntro: "Mars is the fourth planet from the Sun and the second-smallest planet in the Solar System after Mercury. In English, Mars carries a name of the Roman god of war and is often referred to as the 'Red Planet'.",
      longDetails: "Mars is approximately half the diameter of Earth, with a surface area only slightly less than the total area of Earth's dry land. Mars is less dense than Earth, having about 15% of Earth's volume and 11% of Earth's mass, resulting in about 38% of Earth's surface gravity. The red-orange appearance of the Martian surface is caused by iron(III) oxide, or rust. It can look like butterscotch other common surface colors include golden, brown, tan, and greenish, depending on the minerals present.Mars can easily be seen from Earth with the naked eye, as can its reddish coloring. Its apparent magnitude reaches −2.94, which is surpassed only by Jupiter, Venus, the Moon, and the Sun. Optical ground-based telescopes are typically limited to resolving features about 300 kilometers (190 mi) across when Earth and Mars are closest because of Earth's atmosphere.",

      specialTopicDetail: "Dozens of crewless spacecraft, including orbiters, landers, and rovers, have been sent to Mars by the Soviet Union, the United States, Europe, and India to study the planet's surface, climate, and geology.On September 24, 2014, Mars Orbiter Mission (MOM), launched by the Indian Space Research Organisation, reached Mars orbit. ISRO launched MOM on November 5, 2013, with the aim of analyzing the Martian atmosphere and topography. The Mars Orbiter Mission used a Hohmann transfer orbit to escape Earth's gravitational influence and catapult into a nine-month-long voyage to Mars. The mission is the first successful Asian interplanetary mission.",
    ),
    Planet(
      id: 'jupiter',
      planetName: 'Jupiter',
      imageSrc: 'assets/images/planets/jupiter.png',

      //numeric data
      volumeCompareToEarth: 1321,
      noOfMoons: 79,
      avgTemp: 165, //kelvin
      timeToOrbitSun: 11.862,
      dictanceFromEarth: 588,//million
      positionInSolarSystem: 5,

      smallIntro: "Jupiter is the fifth planet from the Sun and the largest in the Solar System. It is a gas giant with a mass one-thousandth that of the Sun, but two-and-a-half times that of all the other planets in the Solar System combined.It is named after the Roman god Jupiter.",
      longDetails: "Jupiter is primarily composed of hydrogen with a quarter of its mass being helium, though helium comprises only about a tenth of the number of molecules. It may also have a rocky core of heavier elements, but like the other giant planets, Jupiter lacks a well-defined solid surface. Because of its rapid rotation, the planet's shape is that of an oblate spheroid (it has a slight but noticeable bulge around the equator). The outer atmosphere is visibly segregated into several bands at different latitudes, resulting in turbulence and storms along their interacting boundaries.Jupiter has been explored on several occasions by robotic spacecraft, most notably during the early Pioneer and Voyager flyby missions and later by the Galileo orbiter. In late February 2007, Jupiter was visited by the New Horizons probe, which used Jupiter's gravity to increase its speed and bend its trajectory en route to Pluto.",

      specialTopicDetail: "The best known feature of Jupiter is the Great Red Spot, a persistent anticyclonic storm that is larger than Earth, located 22° south of the equator. It is known to have been in existence since at least 1831, and possibly since 1665. Images by the Hubble Space Telescope have shown as many as two 'red spots' adjacent to the Great Red Spot. The storm is large enough to be visible through Earth-based telescopes with an aperture of 12 cm or larger. The oval object rotates counterclockwise, with a period of about six days. The maximum altitude of this storm is about 8 km (5 mi) above the surrounding cloudtops.",
    ),
    Planet(
      id: 'saturn',
      planetName: 'Saturn',
      imageSrc: 'assets/images/planets/saturn.png',

      //numeric data
      volumeCompareToEarth: 763,
      noOfMoons: 82,
      avgTemp: 	134, //kelvin
      timeToOrbitSun: 29.4,
      dictanceFromEarth: 1.2,//billion
      positionInSolarSystem: 6,

      smallIntro: "Saturn is the sixth planet from the Sun and the second-largest in the Solar System, after Jupiter. It is a gas giant with an average radius about nine times that of Earth. It has only one-eighth the average density of Earth.",
      longDetails: "The planet's most famous feature is its prominent ring system that is composed mostly of ice particles, with a smaller amount of rocky debris and dust. At least 82 moons are known to orbit Saturn, of which 53 are officially named. This does not include the hundreds of moonlets in the rings. Titan, Saturn's largest moon, and the second-largest in the Solar System, is larger than the planet Mercury, although less massive, and is the only moon in the Solar System to have a substantial atmosphere.Saturn's interior is most likely composed of a core of iron–nickel and rock (silicon and oxygen compounds). This core is surrounded by a deep layer of metallic hydrogen, an intermediate layer of liquid hydrogen and liquid helium, and finally a gaseous outer layer. Wind speeds on Saturn can reach 1,800 km/h higher than on Jupiter, but not as high as those on Neptune.",

      specialTopicDetail: "Saturn is probably best known for the system of planetary rings that makes it visually unique. The rings extend from 6,630 to 120,700 kilometers outward from Saturn's equator and average approximately 20 meters in thickness. They are composed predominantly of water ice with trace amounts of tholin impurities, and a peppered coating of approximately 7% amorphous carbon. The particles that make up the rings range in size from specks of dust up to 10 m. While the other gas giants also have ring systems, Saturn's is the largest and most visible.",
    ),
    Planet(
      id: 'uranus',
      planetName: 'Uranus',
      imageSrc: 'assets/images/planets/uranus.png',

      //numeric data
      volumeCompareToEarth: 63,
      noOfMoons: 27,
      avgTemp: 	76, //kelvin
      timeToOrbitSun: 84,
      dictanceFromEarth: 2.6,//billion
      positionInSolarSystem: 7,

      smallIntro: "Uranus is the seventh planet from the Sun. It has the third-largest planetary radius and fourth-largest planetary mass in the Solar System. Uranus is similar in composition to Neptune, and both have bulk chemical compositions which differ from that of the larger gas giants Jupiter and Saturn.",
      longDetails: "Scientists often classify Uranus and Neptune as ice giants to distinguish them from the gas giants. Uranus' atmosphere is similar to Jupiter's and Saturn's in its primary composition of hydrogen and helium, but it contains more ices such as water, ammonia, and methane, along with traces of other hydrocarbons. It has the coldest planetary atmosphere in the Solar System, with a minimum temperature of 49 K (−224 °C; −371 °F), and has a complex, layered cloud structure with water thought to make up the lowest clouds and methane the uppermost layer of clouds. The interior of Uranus is mainly composed of ices and rock.Uranus is the only planet whose name is derived directly from a figure from Greek mythology, from the Latinised version of the Greek god of the sky Ouranos.",

      specialTopicDetail: "The Uranian rings are composed of extremely dark particles, which vary in size from micrometres to a fraction of a metre.  Thirteen distinct rings are presently known, the brightest being the ε ring. All except two rings of Uranus are extremely narrow – they are usually a few kilometres wide. The rings are probably quite young; the dynamics considerations indicate that they did not form with Uranus.The matter in the rings may once have been part of a moon (or moons) that was shattered by high-speed impacts. From numerous pieces of debris that formed as a result of those impacts, only a few particles survived, in stable zones corresponding to the locations of the present rings.",
    ),
    Planet(
      id: 'neptune',
      planetName: 'Neptune',
      imageSrc: 'assets/images/planets/neptune.png',

      //numeric data
      volumeCompareToEarth: 57,
      noOfMoons: 14,
      avgTemp: 72, //kelvin
      timeToOrbitSun: 164.8,
      dictanceFromEarth: 4.4,//billion
      positionInSolarSystem: 8,

      smallIntro: "Neptune is the eighth and farthest known planet from the Sun in the Solar System. In the Solar System, it is the fourth-largest planet by diameter, the third-most-massive planet, and the densest giant planet. Neptune is 17 times the mass of Earth, slightly more massive than its near-twin Uranus.",
      longDetails: "Neptune is not visible to the unaided eye and is the only planet in the Solar System found by mathematical prediction rather than by empirical observation. Unexpected changes in the orbit of Uranus led Alexis Bouvard to deduce that its orbit was subject to gravitational perturbation by an unknown planet. It is named after the Roman god of the sea and has the astronomical symbol ♆, a stylised version of the god Neptune's trident.Its largest moon, Triton, was discovered shortly thereafter, though none of the planet's remaining known 13 moons were located telescopically until the 20th century. The planet's distance from Earth gives it a very small apparent size, making it challenging to study with Earth-based telescopes. Neptune was visited by Voyager 2, when it flew by the planet on 25 August 1989.",

      specialTopicDetail: "In 1989, the Great Dark Spot, an anti-cyclonic storm system spanning 13,000 × 6,600 km, was discovered by NASA's Voyager 2 spacecraft. The storm resembled the Great Red Spot of Jupiter. Some five years later, on 2 November 1994, the Hubble Space Telescope did not see the Great Dark Spot on the planet. Instead, a new storm similar to the Great Dark Spot was found in Neptune's northern hemisphere.Neptune's dark spots are thought to occur in the troposphere at lower altitudes than the brighter cloud features, so they appear as holes in the upper cloud decks. As they are stable features that can persist for several months, they are thought to be vortex structures.",
    ),
  ];

  List<Planet> get getPlanets{
    return [..._planets];
  }

  Planet getSinglePlanetData(String name){
    return _planets.firstWhere((planet)=>planet.planetName==name);
  }
}