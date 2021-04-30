class Activity {
  String imageUrl;
  String type;

  Activity({
    this.imageUrl,
    this.type,
  });
}

List<Activity> activity = [
  Activity(
    imageUrl: 'assets/villa.png',
    type: 'Villa',
  ),
  Activity(
    imageUrl: 'assets/vila02.png',
    type: 'Paris',
  ),
  Activity(
    imageUrl: 'assets/apartment.png',
    type: 'New Delhi',
  ),
  Activity(
    imageUrl: 'assets/group.png',
  )
];
