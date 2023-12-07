String path = "assets/images/";

class Food {
  final String foodImage;

  final String foodName;

  Food({required this.foodImage, required this.foodName});

  static List<Food> foodlist = [
    Food(foodImage: "${path}royal.jpg", foodName: "العسل الملكي"),
    Food(foodImage: "${path}white.jpg", foodName: "العسل الأبيض القرغيزي"),
    Food(foodImage: "${path}zohor.jpg", foodName: "عسل زهورات جبلية"),
    Food(foodImage: "${path}akasia.jpg", foodName: "عسل الأكاسيا"),
    Food(foodImage: "${path}barb.jpg", foodName: "عسل برباريس"),
  ];
}
