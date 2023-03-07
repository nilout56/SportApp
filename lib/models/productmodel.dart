class ProductsList {
  late String imageUrl;
  late String type;
  late String country;
  late String description;

  ProductsList({
    required this.imageUrl,
    required this.type,
    required this.country,
    required this.description,
  });
}


List<ProductsList> productsLists = [
  ProductsList(
      imageUrl: 'assets/images/robe.jpg',
      type: 'Robe black ',
      country: 'Laos',
      description: '472.000 LAK',),

  ProductsList(
      imageUrl: 'assets/images/blueshirt.jpg',
      type: 'Nivea Sun ',
      country: 'Laos',
      description: '165.000 LAK',
      ),
  ProductsList(
      imageUrl: 'assets/images/image13.jpeg',
      type: 'Noelie serum cream',
      country: 'Laos',
      description: '359.000 LAK',
      ),
  ProductsList(
      imageUrl: 'assets/images/image4.jpeg',
      type: '',
      country: '',
      description: '',
  ),
  ProductsList(
      imageUrl: 'assets/images/image5.jpeg',
      type: '',
      country: '',
      description: '',
      ),
  ProductsList(
      imageUrl: 'assets/images/image5.jpeg',
      type: '',
      country: '',
      description: '',
  ),
];