class TrendingTrip {
  final String title;
  final String img;
  final String description;
  final DateTime hour;

  TrendingTrip({
    required this.title,
    required this.img,
    required this.description,
    required this.hour,
  });
}

final List<TrendingTrip> trendingtrips = [
  TrendingTrip(
    title: "Hoja Verde",
    img: "assets/images/verdurasHojaVerde.jpg",
    description:
        "Un país situado en Europa Occidental. Limita al norte con el Canal de la Mancha, el Mar del Norte y Bélgica; al este con Luxemburgo, Alemania y Suiza; al sur con Italia, Mónaco, España y Andorra; y al oeste con España, el Golfo de Vizcaya y el Océano Atlántico. Francia también tiene varias regiones de ultramar en el Caribe, el Océano Índico y el Pacífico.",
    hour: DateTime(
        2023, 5, 18, 5, 0), // Representa la hora 05:00 el 18 de mayo de 2023
  ),
  TrendingTrip(
    title: "Pescados Grasos",
    img: "assets/images/pescadosGrasos.jpg",
    description:
        "El país más grande de América del Sur, destaca por su impresionante diversidad natural, que incluye la selva amazónica, playas paradisíacas y ciudades vibrantes como Río de Janeiro con su icónico Cristo Redentor.",
    hour: DateTime(2023, 5, 18, 7, 0),
  ),
  TrendingTrip(
    title: "Tomates",
    img: "assets/images/tomates.jpeg",
    description:
        "Pais conocido por su rica historia y diversidad cultural. Fue el hogar de antiguas civilizaciones como los Incas, cuyo legado arquitectónico y cultural perdura hasta el día de hoy, especialmente en la ciudad de Machu Picchu, considerada una de las maravillas del mundo.",
    hour: DateTime(2023, 5, 18, 10, 0),
  ),
  TrendingTrip(
    title: "Palta",
    img: "assets/images/palta.jpg",
    description:
        "Pais conocido por su rica historia y diversidad cultural. Fue el hogar de antiguas civilizaciones como los Incas, cuyo legado arquitectónico y cultural perdura hasta el día de hoy, especialmente en la ciudad de Machu Picchu, considerada una de las maravillas del mundo.",
    hour: DateTime(2023, 5, 18, 7, 0),
  ),
  TrendingTrip(
    title: "Grecia",
    img: "assets/images/greece.jpg",
    description:
        "Cuna de la civilización occidental y famosa por sus antiguos monumentos...",
    hour: DateTime(2023, 5, 18, 9, 0),
  ),
  TrendingTrip(
    title: "Japón",
    img: "assets/images/japan.jpg",
    description:
        "Mezcla única de tradiciones milenarias y tecnología moderna...",
    hour: DateTime(2023, 5, 18, 12, 0),
  ),
  TrendingTrip(
    title: "Australia",
    img: "assets/images/australia.jpg",
    description:
        "Continente rodeado de impresionantes playas y biodiversidad única...",
    hour: DateTime(2023, 5, 18, 15, 0),
  ),
];
