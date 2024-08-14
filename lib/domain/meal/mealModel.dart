import 'dart:ui';

class MealModel {
  String? image;
  String? name;
  String? count;
  Color color1;
  Color color2;
  MealModel(
      {required this.image, required this.name, required this.count,required this.color1,required this.color2});
}
List mealList = [
   MealModel(
    image: 'b-removebg-preview.png', 
    name: 'Meal Boxes',
    count: '10',
    color1: Color.fromARGB(255, 211, 196, 225),
    color2:  Color.fromARGB(255, 100, 45, 196),
   ),MealModel(
    image: 'd-removebg-preview.png', 
    name: 'Catering',
    count: '120',
    color1:   Color.fromARGB(255, 198, 83, 121),
    color2: Color.fromARGB(255, 233, 30, 99),
   ),
  ];