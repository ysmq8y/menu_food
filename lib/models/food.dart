String path = "assets/images/";

class Food {
  final String foodImage;

  final String foodName;

  Food({required this.foodImage, required this.foodName});

  static List<Food> foodlist = [
    Food(foodImage: "${path}biryani.jpg", foodName: "biryani"),
    Food(foodImage: "${path}burger.png", foodName: "burger"),
    Food(foodImage: "${path}pasta.jpg", foodName: "pasta"),
    Food(foodImage: "${path}pizza.jpg", foodName: "pizza"),
    Food(foodImage: "${path}suchi.jpg", foodName: "suchi"),
  ];
}
