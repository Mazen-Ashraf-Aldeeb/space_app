import 'package:space_assignment/models/planet_model/PlanetModel.dart';

 List<String> images = [
  "assets/images/earth.png",
  "assets/images/jupiter.png",
  "assets/images/mars.png",
  "assets/images/mercury.png",
  "assets/images/neptune.png",
  "assets/images/saturn.png",
  "assets/images/sun.png",
  "assets/images/uranus.png",
  "assets/images/venus.png",
];

 List<String> modelsImages = [
  "assets/models/Earth_1_12756.glb",
  "assets/models/Jupiter_1_142984.glb",
  "assets/models/24881_Mars_1_6792.glb",
  "assets/models/Mercury_1_4878.glb",
  "assets/models/Neptune_1_49528.glb",
  "assets/models/Saturn_1_120536.glb",
  "assets/models/Sun.glb",
  "assets/models/Uranus_1_51118.glb",
  "assets/models/Venus_1_12103.glb",
];


final List<PlanetModel> planets = [
  PlanetModel(
    name: "Earth",
    title: "Earth: Our Blue Marble",
    about:
    "Earth is the only known planet in the universe that supports life. Its unique combination of factors, including liquid water, a breathable atmosphere, and a suitable distance from the Sun, has created the ideal conditions for the development of complex organisms. Earth's magnetic field protects it from harmful solar radiation, and its atmosphere helps to regulate temperature and weather patterns.",
    distanceFromSun: "149,598,026",
    lengthOfDay: "23.93",
    orbitalPeriod: "1",
    radius: "6,371",
    mass: "5.972 × 10²⁴",
    gravity: "9.81",
    surfaceArea: "5.10 × 10⁸",
  ),

  PlanetModel(
    name: "Jupiter",
    title: "Jupiter: The Gas Giant",
    about:
    "Jupiter is the largest planet in our solar system, a gas giant composed primarily of hydrogen and helium. Its Great Red Spot, a massive storm that has been raging for centuries, is a testament to its turbulent atmosphere. Jupiter has a strong magnetic field and numerous moons, including Europa, which is believed to have a subsurface ocean that could potentially harbor life.",
    distanceFromSun: "778,547,669",
    lengthOfDay: "9.92",
    orbitalPeriod: "11.86",
    radius: "69,911",
    mass: "1.898 × 10²⁷",
    gravity: "24.79",
    surfaceArea: "6.21 × 10¹⁵",
  ),

  PlanetModel(
    name: "Mars",
    title: "Mars: The Red Planet",
    about:
    "Mars, often called the Red Planet due to its reddish hue caused by iron oxide, is a cold, rocky world with a thin atmosphere. It has polar ice caps, ancient riverbeds, and evidence of past volcanic activity, suggesting that it once had a warmer, wetter climate. Mars is a prime target for exploration due to its potential for past or present life.",
    distanceFromSun: "227,943,824",
    lengthOfDay: "24.62",
    orbitalPeriod: "1.88",
    radius: "3,389.50",
    mass: "6.39 × 10²³",
    gravity: "3.71",
    surfaceArea: "1.45 × 10⁸",
  ),

  PlanetModel(
    name: "Mercury",
    title: "Mercury: The Closest Planet",
    about:
    "Mercury is the smallest planet in our solar system and the closest planet to the Sun. It has a rocky surface covered with craters and experiences extreme temperature changes between day and night.",
    distanceFromSun: "57,909,227",
    lengthOfDay: "1,407.60",
    orbitalPeriod: "0.24",
    radius: "2,439.70",
    mass: "3.301 × 10²³",
    gravity: "3.7",
    surfaceArea: "7.48 × 10⁷",
  ),

  PlanetModel(
    name: "Neptune",
    title: "Neptune: The Distant World",
    about:
    "Neptune is the farthest planet from the Sun and is another ice giant. Its atmosphere is similar to Uranus, but it is a deeper blue color due to the presence of methane. Neptune has several moons, including Triton.",
    distanceFromSun: "4,498,252,900",
    lengthOfDay: "16.11",
    orbitalPeriod: "164.8",
    radius: "24,622",
    mass: "1.024 × 10²⁶",
    gravity: "11.15",
    surfaceArea: "7.65 × 10¹⁵",
  ),

  PlanetModel(
    name: "Saturn",
    title: "Saturn: The Ringed Planet",
    about:
    "Saturn is best known for its spectacular rings, which are composed of countless ice particles and rocks. It is a gas giant with a composition similar to Jupiter, but its rings and moons give it a distinct appearance.",
    distanceFromSun: "1,426,666,422",
    lengthOfDay: "10.66",
    orbitalPeriod: "29.46",
    radius: "58,232",
    mass: "5.683 × 10²⁶",
    gravity: "10.44",
    surfaceArea: "4.27 × 10¹⁵",
  ),

  PlanetModel(
    name: "Sun",
    title: "The Sun: Our Solar System's Star",
    about:
    "The Sun is the heart of our solar system, a massive ball of plasma that provides heat, light, and energy to everything within its gravitational pull. Its immense size and temperature are fueled by nuclear fusion, a process that combines hydrogen atoms into helium, releasing vast amounts of energy.",
    distanceFromSun: "0",
    lengthOfDay: "0",
    orbitalPeriod: "0",
    radius: "695,700",
    mass: "1.989 × 10³⁰",
    gravity: "274",
    surfaceArea: "6.09 × 10¹²",
  ),

  PlanetModel(
    name: "Uranus",
    title: "Uranus: The Tilted Planet",
    about:
    "Uranus is an ice giant with a unique axial tilt, causing its seasons to be extreme. It is surrounded by faint rings and has numerous moons. Uranus's atmosphere is composed primarily of hydrogen, helium, and methane, giving it a pale blue color.",
    distanceFromSun: "2,870,990,000",
    lengthOfDay: "17.24",
    orbitalPeriod: "84.01",
    radius: "25,362",
    mass: "8.681 × 10²⁵",
    gravity: "8.69",
    surfaceArea: "8.1 × 10¹⁵",
  ),

  PlanetModel(
    name: "Venus",
    title: "Venus: Earth's Toxic Twin",
    about:
    "Venus is often referred to as Earth's twin due to its similar size and composition. However, its thick atmosphere, composed primarily of carbon dioxide, traps heat, making it the hottest planet in our solar system.",
    distanceFromSun: "108,209,072",
    lengthOfDay: "5,832.20",
    orbitalPeriod: "0.62",
    radius: "6,051.80",
    mass: "4.867 × 10²⁴",
    gravity: "8.87",
    surfaceArea: "4.60 × 10⁸",
  ),
];
