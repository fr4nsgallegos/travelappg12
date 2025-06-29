class DestinationModel {
  String nombre;
  int tours;
  double stars;
  bool isNew;
  double price;
  String description;
  String urlImage;

  DestinationModel({
    required this.nombre,
    required this.description,
    required this.tours,
    required this.isNew,
    required this.price,
    required this.stars,
    required this.urlImage,
  });
}

List<DestinationModel> destinosList = [
  DestinationModel(
    nombre: "Thailandia",
    description: "10 noches / 25horas etc",
    tours: 20,
    isNew: true,
    price: 15.5,
    stars: 4.6,
    urlImage:
        "https://images.pexels.com/photos/3538245/pexels-photo-3538245.jpeg?_gl=1*4o7u52*_ga*ODI4MzUxMDczLjE3MjI2NDc0MzI.*_ga_8JE65Q40S6*czE3NTExMjMxMjgkbzQ4JGcxJHQxNzUxMTIzMTU4JGozMCRsMCRoMA..",
  ),

  DestinationModel(
    nombre: "Cusco",
    description: "2 noches / 25horas etc",
    tours: 50,
    isNew: false,
    price: 80.5,
    stars: 5.0,
    urlImage:
        "https://images.pexels.com/photos/32673520/pexels-photo-32673520.jpeg?_gl=1*1dn2gw3*_ga*ODI4MzUxMDczLjE3MjI2NDc0MzI.*_ga_8JE65Q40S6*czE3NTEyMDkxMTUkbzUyJGcxJHQxNzUxMjA5MTI1JGo1MCRsMCRoMA..",
  ),
  DestinationModel(
    nombre: "Francia",
    description: "6 noches / 25horas etc",
    tours: 30,
    isNew: true,
    price: 120.0,
    stars: 4.5,
    urlImage:
        "https://images.pexels.com/photos/532826/pexels-photo-532826.jpeg?_gl=1*hr1xs2*_ga*ODI4MzUxMDczLjE3MjI2NDc0MzI.*_ga_8JE65Q40S6*czE3NTEyMDkxMTUkbzUyJGcxJHQxNzUxMjA5MTg5JGo1MyRsMCRoMA..",
  ),
];
