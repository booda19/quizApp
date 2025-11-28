class FruitsModel{

  late final String image;
  late final String typeFruit;

  late final String rate;
  late final String price;
  int quantity;

  FruitsModel({required this.image,required this.typeFruit,required this.rate,required this.price,this.quantity = 0,});

}
List<FruitsModel> fruit_model = [
  FruitsModel(image: 'assets/category/mango.png', typeFruit: 'Fruits', rate: '4.8 (283)', price: '\$3.99'),
  FruitsModel(image: 'assets/fruit/orange.png', typeFruit: 'Orange', rate: '4.8', price: '\$3.99'),
  FruitsModel(image: 'assets/fruit/papper.png', typeFruit: 'papper', rate: '4.8', price: '\$3.99'),
  FruitsModel(image: 'assets/fruit/banana.png', typeFruit: 'Banana', rate: '4.8', price: '\$3.99'),

];