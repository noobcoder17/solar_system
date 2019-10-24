import 'package:flutter/material.dart';

//models
import '../models/asteroid.dart';


class AsteroidData with ChangeNotifier{
  Asteroid _asteroidData = Asteroid(
    topicName: 'Asteroids',
    whatIsAsteroid: "An asteroid is a small body orbiting the Sun that is composed primarily of rock or metal.",
    discovery: "In 1801, Giuseppe Piazzi discovered what he believed to be a new planet. He named the newfound object Ceres, after the Roman goddess of the harvest. Soon after Ceres’ discovery similar objects were found. It was soon realized that these new objects were not, in fact, planets, but some other type of celestial body. One characteristic these objects shared was their resemblance to distant stars as viewed through the telescopes of the time. As a result of their similar appearance to stars the objects were named asteroids, meaning star shaped.",
    asteroidBelt: "The majority of the known asteroids in the Solar System orbit the Sun in a band between the orbits of Mars and Jupiter. This band is commonly referred to as the Asteroid Belt.Although there are hundreds of thousands of asteroids in the Asteroid Belt, there are only around 200 known that exceed 100 km in diameter, making the majority of the asteroids realtively small objects.Current theories suggests that the asteroids found in the Asoteroid Belt are the remnants of a planet that failed to form during the development of the Solar System. More specifically, it is believed that when Jupiter formed its huge mass and gravitational pull disrupted the material in the Asteroid Belt to accrete, or join together, to form into a planet. If all the material in the Asteroid Belt were to be combined, the resulting object’s diameter is projected to be at most about half that of Earth’s moon.",
  );

  Asteroid get getData{
    return _asteroidData;
  }

  
}