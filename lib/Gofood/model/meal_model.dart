class MealModel {
  final String img;
  final String name;
  final double price;
  final String description;
  final bool isFav;

  MealModel({
    required this.img,
    required this.name,
    required this.price,
    required this.description,
    this.isFav = false,
  });
}

List <MealModel> meals = [
  MealModel(
    name: "Curly Fries",
    img: "assets/meal/f1.jpg",
    price: 5.99,
    isFav: false,
    description:
        "Delicious curly fries topped with melted cheese sauce, perfect as a snack or side dish perfect as a snack or side dishperfect as a snack or side dishperfect as a snack or side dish.",
  ),
  MealModel(
    name: "Cheese Burger",
    img: "assets/meal/b2.jpg",
    price: 8.99,
    isFav: false,
    description:
        "Juicy beef patty topped with extra cheese, lettuce, tomato, and our special sauce, served on a toasted bun.",
  ),
  MealModel(
    name: "Grilled Chicken",
    img: "assets/meal/c1.jpg",
    price: 10.99,
    isFav: false,
    description:
        "Tender grilled chicken breast served with a side of fresh vegetables, seasoned to perfection.",
  ),
  MealModel(
    name: "Burger Caesar ",
    img: "assets/meal/b1.jpg",
    price: 6.99,
    isFav: false,
    description:
        "Crisp romaine lettuce tossed with Caesar dressing, topped with crunchy croutons and Parmesan cheese.",
  ),
  MealModel(
    name: "Curly Fries1",
    img: "assets/meal/f1.jpg",
    price: 5.99,
    isFav: false,
    description:
        "Delicious curly fries topped with melted cheese sauce, perfect as a snack or side dish.",
  ),
  MealModel(
    name: "Cheese Burger1",
    img: "assets/meal/b2.jpg",
    price: 8.99,
    isFav: false,
    description:
        "Juicy beef patty topped with extra cheese, lettuce, tomato, and our special sauce, served on a toasted bun.",
  ),
  MealModel(
    name: "Grilled Chicken1",
    img: "assets/meal/c1.jpg",
    price: 10.99,
    isFav: false,
    description:
        "Tender grilled chicken breast served with a side of fresh vegetables, seasoned to perfection.",
  ),
  MealModel(
    name: "Burger Caesar1",
    img: "assets/meal/b1.jpg",
    price: 6.99,
    isFav: false,
    description:
        "Crisp romaine lettuce tossed with Caesar dressing, topped with crunchy croutons and Parmesan cheese.",
  ),

];