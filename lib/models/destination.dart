class Destination {
  late String imageUrl;
  late String type;
   String title;
  late String country;
  late String description;

  Destination({
    required this.title,
    required this.imageUrl,
    required this.type,
    required this.country,
    required this.description,
  });
}


List<Destination> destinations = [
  Destination(
      imageUrl: 'assets/images/away.jpg',
      type: 'Garnier MEN foam',
      country: 'Laos',
      description: '35.000 LAK', title: 'CeraVe Daily Moisturizing Lotion is a lightweight, oil-free moisturizer that helps hydrate the skin and restore its natural barrier. Formulated with 3 essential ceramides that work together to lock in skins moisture and help restore your skin’s protective barrier. MVE technology encapsulates ceramides to ensure efficient delivery within the skin’s barrier and slow release over time. ',),

  Destination(
      imageUrl: 'assets/images/awayshirt.png',
      type: 'Nivea Sun ',
      country: 'Laos',
      description: '65.000 LAK', title: 'CeraVe Daily Moisturizing Lotion is a lightweight, oil-free moisturizer that helps hydrate the skin and restore its natural barrier. Formulated with 3 essential ceramides that work together to lock in skins moisture and help restore your skin’s protective barrier. MVE technology encapsulates ceramides to ensure efficient delivery within the skin’s barrier and slow release over time. ',
      ),
  Destination(
      imageUrl: 'assets/images/image13.jpeg',
      type: 'Noelie serum cream',
      country: 'Laos',
      description: '359.000 LAK', title: 'CeraVe Daily Moisturizing Lotion is a lightweight, oil-free moisturizer that helps hydrate the skin and restore its natural barrier. Formulated with 3 essential ceramides that work together to lock in skins moisture and help restore your skin’s protective barrier. MVE technology encapsulates ceramides to ensure efficient delivery within the skin’s barrier and slow release over time. ',
      ),
  Destination(
      imageUrl: 'assets/images/image4.jpeg',
      type: 'null',
      country: 'Laos',
      description: 'null', title: 'CeraVe Daily Moisturizing Lotion is a lightweight, oil-free moisturizer that helps hydrate the skin and restore its natural barrier. Formulated with 3 essential ceramides that work together to lock in skins moisture and help restore your skin’s protective barrier. MVE technology encapsulates ceramides to ensure efficient delivery within the skin’s barrier and slow release over time. ',
  ),
  Destination(
      imageUrl: 'assets/images/image5.jpeg',
      type: 'null',
      country: 'Laos',
      description: 'null', title: 'CeraVe Daily Moisturizing Lotion is a lightweight, oil-free moisturizer that helps hydrate the skin and restore its natural barrier. Formulated with 3 essential ceramides that work together to lock in skins moisture and help restore your skin’s protective barrier. MVE technology encapsulates ceramides to ensure efficient delivery within the skin’s barrier and slow release over time. ',
      ),
  Destination(
      imageUrl: 'assets/images/image5.jpeg',
      type: 'null',
      country: 'Laos',
      description: 'null', title: 'CeraVe Daily Moisturizing Lotion is a lightweight, oil-free moisturizer that helps hydrate the skin and restore its natural barrier. Formulated with 3 essential ceramides that work together to lock in skins moisture and help restore your skin’s protective barrier. MVE technology encapsulates ceramides to ensure efficient delivery within the skin’s barrier and slow release over time. ',
  ),
];