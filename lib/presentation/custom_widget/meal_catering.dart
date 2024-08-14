import 'package:flutter/material.dart';
import 'package:food_box/domain/meal/mealModel.dart';

Widget buildHorizontalCard(MealModel mealModel) {
  return Container(
    height: 300,
    width: 170,
    margin: const EdgeInsets.only(left: 16),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      gradient: LinearGradient(
        colors: [
          mealModel.color1.withOpacity(0.01), 
          mealModel.color2.withOpacity(0.8), 
        ],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      ),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      mealModel.name!,
                      style: const TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                          fontSize: 18),
                    ),
                    Text(
                      "Min ${mealModel.count} Guests",
                      style: TextStyle(color: mealModel.color2),
                    ),
                  ],
                ),
              ),
              CircleAvatar(
                radius: 16,
                backgroundColor: mealModel.color2, 
                child: const Icon(
                  Icons.arrow_forward, 
                  size: 16,
                  color: Color.fromARGB(255, 248, 245, 245), 
                ),
              ),
            ],
          ),
        ),
        const Spacer(), 
        ClipRRect(
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(10),
            bottomRight: Radius.circular(10),
          ),
          child: Image.asset(
            'images/${mealModel.image}',
            fit: BoxFit.cover,
            height: 131, 
            width: double.infinity, 
          ),
        ),
      ],
    ),
  );
}

class DeliveryBoxWidget extends StatelessWidget {
  const DeliveryBoxWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 12),
      height: 200,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: mealList.length,
        itemBuilder: (context, index) {
          return buildHorizontalCard(mealList[index]);
        },
      ),
    );
  }
}
