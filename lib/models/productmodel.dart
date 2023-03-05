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
      imageUrl: 'assets/images/image15.jpeg',
      type: 'Set Serumand skin care ',
      country: 'Laos',
      description: '472.000 LAK',),

  ProductsList(
      imageUrl: 'assets/images/image9.jpeg',
      type: 'Nivea Sun ',
      country: 'Laos',
      description: '65.000 LAK',
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