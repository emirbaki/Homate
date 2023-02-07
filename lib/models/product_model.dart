class Product {
  final int foodID;
  final String name;
  final int price;
  final int gram;
  final FoodType foodType;

  Product(
    this.foodID,
    this.name,
    this.price,
    this.gram,
    this.foodType,
  );
}

enum FoodType {
  sulu,
  icecek,
  hamurisi,
  evyemegi,
}
