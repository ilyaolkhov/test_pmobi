class FoodInfo{
  String nameFood;
  int price;
  double? oldPrice;
  String image;
  FoodInfo({required this.nameFood, required this.price, required this.oldPrice, required this.image});
}

class FoodInfoList{
  static List<FoodInfo> getInfoFood(){
    return [
      FoodInfo(nameFood: 'Комбо с Воппером Дж.', price: 189, oldPrice: null, image: 'assets/food/kombo_voper.jpg'),
      FoodInfo(nameFood: 'Воппер с сыром', price: 249, oldPrice: 274.8, image: 'assets/food/voper_cheese.png'),
      FoodInfo(nameFood: 'Комбо на двоих с Чизбургером', price: 399, oldPrice: null, image: 'assets/food/kombo_on_two.png'),
      FoodInfo(nameFood: 'Кинг Наггетс(стандю.)', price: 199, oldPrice: null, image: 'assets/food/naggets.jpg')
    ];
  }
}

