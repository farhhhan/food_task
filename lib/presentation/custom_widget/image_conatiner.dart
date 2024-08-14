import 'package:flutter/material.dart';
import 'package:food_app/domain/mealBox/mealBoxModel.dart';

class ItemBox extends StatelessWidget {
MealBoxModel mealBoxModel;

  ItemBox({
    required this.mealBoxModel
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
          width: 250,
          height: 150,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            gradient: LinearGradient(
              colors: mealBoxModel.gradientColors,
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            image: DecorationImage(
              image: AssetImage(mealBoxModel.imagePath!),
              fit: BoxFit.cover,
            ),
          ),
          child: Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              margin: const EdgeInsets.only(bottom: 15),
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color.fromARGB(255, 26, 5, 103),
                    Color.fromARGB(255, 139, 122, 194)
                  ], // Start and end colors
                  begin: Alignment.topLeft, // Gradient start position
                  end: Alignment.bottomRight, // Gradient end position
                ),
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(8),
                  topRight: Radius.circular(8),
                ),
              ),
              child: Text(
                mealBoxModel.itemCount!,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          )),
    );
  }
}

class MealBoxWidget extends StatelessWidget {
  const MealBoxWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150, // Ensure height is constrained
      child:ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: mealBoxList.length,
        itemBuilder: (context, index) {
        return ItemBox(mealBoxModel: mealBoxList[index]);
      },)
    );
  }
}
