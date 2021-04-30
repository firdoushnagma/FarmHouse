class Destination {
  String imageUrl;
  String city;
  int ratings;

  Destination({
    this.imageUrl,
    this.city,
    this.ratings,
  });
}

List<Destination> destinations = [
  Destination(
    imageUrl: 'assets/h1.png',
    city: 'Villa',
    ratings: 4,
  ),
  Destination(
    imageUrl: 'assets/h2.png',
    city: 'FarmHouse',
    ratings: 4,
  ),
  Destination(
    imageUrl: 'assets/h3.png',
    city: 'New Delhi',
    ratings: 4,
  ),
];
