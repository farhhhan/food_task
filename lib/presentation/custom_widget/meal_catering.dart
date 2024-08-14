import 'package:flutter/material.dart';
import 'package:food_app/domain/meal/mealModel.dart';

Widget buildHorizontalCard(MealModel mealModel, BuildContext context) {
  final screenWidth = MediaQuery.of(context).size.width;
  final cardWidth = screenWidth * 0.4; // 40% of screen width
  final cardHeight = cardWidth * 1.60; // 70% of card width (aspect ratio 1:1.75)
   double screenHeight = MediaQuery.of(context).size.height;
  return Container(
    height: cardHeight,
    width: cardWidth,
    margin: EdgeInsets.only(left: screenWidth * 0.04), // 4% of screen width
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
    child: Stack(
      children: [
        // Positioned image at the bottom-left of the card
        Positioned(
          bottom: 0,
          left: 0,
          child: Image.asset(
            'images/${mealModel.image}',
            fit: BoxFit.cover,
          ),
        ),
        // Content over the image
        Padding(
          padding: EdgeInsets.all(screenWidth * 0.025), // 2.5% of screen width
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                mealModel.name!,
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                  fontSize: screenWidth * 0.045, // Responsive font size
                ),
              ),
              Text(
                "Min ${mealModel.count} Guests",
                style: TextStyle(
                  color: mealModel.color2,
                  fontSize: screenWidth * 0.035, // Responsive font size
                ),
              ),
              Spacer(), // Pushes content up
            ],
          ),
        ),
        // CircleAvatar positioned in the top-right corner
        Positioned(
          top: screenHeight * 0.02, // Adjust position from the top
          right: screenWidth * 0.02, // Adjust position from the right
          child: CircleAvatar(
            radius: screenWidth * 0.04, // Responsive radius
            backgroundColor: mealModel.color2,
            child: Icon(
              Icons.arrow_forward,
              size: screenWidth * 0.04,
              color: const Color.fromARGB(255, 248, 245, 245),
            ),
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
    final screenHeight = MediaQuery.of(context).size.height;

    return Container(
      padding: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.03), // 3% of screen width
      height: screenHeight * 0.25, // 25% of screen height
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: mealList.length,
        itemBuilder: (context, index) {
          return buildHorizontalCard(mealList[index], context);
        },
      ),
    );
  }
}
