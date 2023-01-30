class PlanetInfo {
  final int position;
  final String name;
  final String iconImage;
  final String description;
  final List<String> images;

  PlanetInfo(
    this.position, {
    required this.name,
    required this.iconImage,
    required this.description,
    required this.images,
  });
}

List<PlanetInfo> planets = [
  PlanetInfo(1,
      name: "Sun",
      iconImage: "assets/img/sun.png",
      description:
          "Our Sun is a 4.5 billion-year-old star, a hot glowing ball of hydrogen and helium at the center of our solar system. The Sun is about 93 million miles (150 million kilometers) from Earth, and without its energy, life as we know it could not exist here on our home planet. The Sun is the largest object in our solar system. The Suns volume would need 1.3 million Earths to fill it. Its gravity holds the solar system together, keeping everything from the biggest planets to the smallest bits of debris in orbit around it. The hottest part of the Sun is its core, where temperatures top 27 million degrees Fahrenheit (15 million degrees Celsius). The Suns activity, from its powerful eruptions to the steady stream of charged particles it sends out, influences the nature of space throughout the solar system.",
      images: [
        "https://cdn.pixabay.com/photo/2016/07/09/14/28/space-1506349_1280.jpg",
        "https://cdn.pixabay.com/photo/2016/07/13/20/47/sun-1515503_1280.jpg",
        "https://images.unsplash.com/photo-1614642264762-d0a3b8bf3700?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=880&q=80",
        "https://images.unsplash.com/photo-1641606158379-f7e9bde81238?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1064&q=80"
      ]),
  PlanetInfo(2,
      name: "Mercury",
      iconImage: "assets/img/mercury.png",
      description:
          "The smallest planet in our solar system and nearest to the Sun, Mercury is only slightly larger than Earth's Moon. From the surface of Mercury, the Sun would appear more than three times as large as it does when viewed from Earth, and the sunlight would be as much as seven times brighter. Despite its proximity to the Sun, Mercury is not the hottest planet in our solar system, that title belongs to nearby Venus, thanks to its dense atmosphere. Because of Mercury's elliptical, egg-shaped, orbit, and sluggish rotation, the Sun appears to rise briefly, set, and rise again from some parts of the planet's surface. The same thing happens in reverse at sunset.",
      images: [
        "https://images.unsplash.com/photo-1614728894747-a83421e2b9c9?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1074&q=80",
        "https://cdn.pixabay.com/photo/2016/02/28/02/27/mercury-1226433_1280.jpg",
        "https://cdn.pixabay.com/photo/2012/01/09/09/33/mercury-11591_1280.png",
        "https://cdn.pixabay.com/photo/2020/09/08/23/58/mercury-5556108_1280.jpg",
      ]),
  PlanetInfo(3,
      name: "Venus",
      iconImage: "assets/img/venus.png",
      description:
          "Venus is the second planet from the Sun and is Earths closest planetary neighbor. Its one of the four inner, terrestrial (or rocky) planets, and its often called Earths twin because its similar in size and density. These are not identical twins, however, there are radical differences between the two worlds. Venus has a thick, toxic atmosphere filled with carbon dioxide and its perpetually shrouded in thick, yellowish clouds of sulfuric acid that trap heat, causing a runaway greenhouse effect. Its the hottest planet in our solar system, even though Mercury is closer to the Sun. Surface temperatures on Venus are about 900 degrees Fahrenheit (475 degrees Celsius), hot enough to melt lead. The surface is a rusty color and its peppered with intensely crunched mountains and thousands of large volcanoes. Scientists think its possible some volcanoes are still active.",
      images: [
        "https://cdn.pixabay.com/photo/2016/04/25/01/30/venus-1351056_1280.png",
        "https://cdn.pixabay.com/photo/2022/06/29/20/37/venus-7292552_1280.jpg",
        "https://images.unsplash.com/photo-1590907043334-8eba76905b92?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=880&q=80",
        "https://cdn.pixabay.com/photo/2020/09/08/23/58/venus-5556107_1280.jpg",
      ]),
  PlanetInfo(4,
      name: "Earth",
      iconImage: "assets/img/earth.png",
      description:
          "Our home planet is the third planet from the Sun, and the only place we know of so far thats inhabited by living things. While Earth is only the fifth largest planet in the solar system, it is the only world in our solar system with liquid water on the surface. Just slightly larger than nearby Venus, Earth is the biggest of the four planets closest to the Sun, all of which are made of rock and metal. The name Earth is at least 1,000 years old. All of the planets, except for Earth, were named after Greek and Roman gods and goddesses. However, the name Earth is a Germanic word, which simply means, the ground.",
      images: [
        "https://cdn.pixabay.com/photo/2016/10/20/18/35/earth-1756274_1280.jpg",
        "https://cdn.pixabay.com/photo/2011/12/13/14/31/earth-11015_1280.jpg",
        "https://cdn.pixabay.com/photo/2017/01/18/16/53/earth-1990298_1280.jpg",
        "https://cdn.pixabay.com/photo/2011/12/13/14/28/earth-11009_1280.jpg",
      ]),
  PlanetInfo(5,
      name: "Mars",
      iconImage: "assets/img/mars.png",
      description:
          "Mars is the fourth planet from the Sun - a dusty, cold, desert world with a very thin atmosphere. Mars is also a dynamic planet with seasons, polar ice caps, canyons, extinct volcanoes, and evidence that it was even more active in the past. Mars is one of the most explored bodies in our solar system, and it's the only planet where we've sent rovers to roam the alien landscape. NASA currently has two rovers (Curiosity and Perseverance), one lander (InSight), and one helicopter (Ingenuity) exploring the surface of Mars.",
      images: [
        "https://cdn.pixabay.com/photo/2016/04/13/06/40/mars-1326108_1280.jpg",
        "https://cdn.pixabay.com/photo/2012/11/28/09/08/mars-67522_1280.jpg",
        "https://cdn.pixabay.com/photo/2012/01/09/10/17/mars-11604_1280.jpg",
        "https://cdn.pixabay.com/photo/2017/02/09/12/02/mars-2051748_1280.png",
      ]),
  PlanetInfo(6,
      name: "Jupiter",
      iconImage: "assets/img/jupiter.png",
      description:
          "Jupiter has a long history of surprising scientists-all the way back to 1610 when Galileo Galilei found the first moons beyond Earth. That discovery changed the way we see the universe. Fifth in line from the Sun, Jupiter is, by far, the largest planet in the solar system - more than twice as massive as all the other planets combined. Jupiter's familiar stripes and swirls are actually cold, windy clouds of ammonia and water, floating in an atmosphere of hydrogen and helium. Jupiter's iconic Great Red Spot is a giant storm bigger than Earth that has raged for hundreds of years.",
      images: [
        "https://cdn.pixabay.com/photo/2021/10/14/12/02/jupiter-6708922_1280.jpg",
        "https://cdn.pixabay.com/photo/2016/09/28/17/16/jupiter-1700974_1280.jpg",
        "https://cdn.pixabay.com/photo/2016/07/16/19/36/space-probe-1522546_1280.jpg",
        "https://images.unsplash.com/photo-1630839437035-dac17da580d0?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1315&q=80",
      ]),
  PlanetInfo(7,
      name: "Saturn",
      iconImage: "assets/img/saturn.png",
      description:
          "Saturn is the sixth planet from the Sun and the second-largest planet in our solar system. Adorned with thousands of beautiful ringlets, Saturn is unique among the planets. It is not the only planet to have rings - made of chunks of ice and rock - but none are as spectacular or as complicated as Saturn's. Like fellow gas giant Jupiter, Saturn is a massive ball made mostly of hydrogen and helium.",
      images: [
        "https://images.unsplash.com/photo-1614732414444-096e5f1122d5?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1074&q=80",
        "https://cdn.pixabay.com/photo/2017/02/14/00/18/astronomy-2064254_1280.jpg",
        "https://cdn.pixabay.com/photo/2022/12/28/16/52/saturn-7683367_1280.jpg",
        "https://cdn.pixabay.com/photo/2020/02/20/01/26/planets-4863644_1280.jpg",
      ]),
  PlanetInfo(8,
      name: "Uranus",
      iconImage: "assets/img/uranus.png",
      description:
          "Uranus is the seventh planet from the Sun, and has the third-largest diameter in our solar system. It was the first planet found with the aid of a telescope, Uranus was discovered in 1781 by astronomer William Herschel, although he originally thought it was either a comet or a star. It was two years later that the object was universally accepted as a new planet, in part because of observations by astronomer Johann Elert Bode. Herschel tried unsuccessfully to name his discovery Georgium Sidus after King George III. Instead, the scientific community accepted Bode's suggestion to name it Uranus, the Greek god of the sky, as suggested by Bode.",
      images: [
        "https://cdn.pixabay.com/photo/2020/09/10/01/58/uranus-5559037_1280.jpg",
        "https://images.unsplash.com/photo-1614732484003-ef9881555dc3?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1074&q=80",
        "https://images.unsplash.com/photo-1639874897442-8b6d5a181cf3?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1315&q=80",
        "https://images.unsplash.com/photo-1639921884918-8d28ab2e39a4?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1315&q=80",
      ]),
  PlanetInfo(9,
      name: "Neptune",
      iconImage: "assets/img/neptune.png",
      description:
          "Dark, cold, and whipped by supersonic winds, ice giant Neptune is the eighth and most distant planet in our solar system. More than 30 times as far from the Sun as Earth, Neptune is the only planet in our solar system not visible to the naked eye and the first predicted by mathematics before its discovery. In 2011 Neptune completed its first 165-year orbit since its discovery in 1846. NASA's Voyager 2 is the only spacecraft to have visited Neptune up close. It flew past in 1989 on its way out of the solar system.",
      images: [
        "https://images.unsplash.com/photo-1614313913007-2b4ae8ce32d6?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1074&q=80",
        "https://cdn.pixabay.com/photo/2019/11/26/13/34/neptune-4654560_1280.jpg",
        "https://cdn.pixabay.com/photo/2020/09/13/17/38/neptune-5568916_1280.png",
        "https://cdn.pixabay.com/photo/2021/10/25/14/02/neptune-6741029_1280.png",
      ]),
];
