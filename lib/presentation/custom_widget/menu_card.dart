import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:food_app/domain/menu/menuModel.dart';
import 'package:food_app/presentation/custom_widget/see_all.dart';
import 'package:food_app/utils/color.dart';

class MenuCard extends StatelessWidget {
  final MenuModel menuModel;

  MenuCard({required this.menuModel});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final cardWidth = screenWidth * 0.82; // Adjust width to 80% of screen width
    final cardHeight = cardWidth * 0.6; // Adjust height relative to width

    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: screenWidth * 0.032, // 3% of screen width
        vertical: screenWidth * 0.02, // 2% of screen width
      ),
      child: Container(
        width: cardWidth,
        height: cardHeight,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: Colors.grey.shade300),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              offset: Offset(0, 2),
              blurRadius: 2,
              spreadRadius: 2,
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Image at the top of the card
            ClipRRect(
              borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
              child: Image.asset(
                'images/h.jpg',
                fit: BoxFit.fill,
                width: cardWidth,
                height: cardHeight * 0.65, // 60% of card height
              ),
            ),
            Padding(
              padding: EdgeInsets.all(screenWidth * 0.02), // 2% of screen width
              child: Row(
                children: [
                  SizedBox(
                    height: screenWidth * 0.08, // 8% of screen width
                    width: screenWidth * 0.08, // 8% of screen width
                    child: Image.asset('images/veg-logo-png-6.png'),
                  ),
                  SizedBox(width: screenWidth * 0.02), // 2% of screen width
                  Text(
                    menuModel.title!,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: screenWidth * 0.04, // Responsive font size
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: screenWidth * 0.02, // 2% of screen width
              ),
              child: const DottedLine(
                alignment: WrapAlignment.start,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: screenWidth * 0.02, // 2% of screen width
                vertical: screenWidth * 0.01, // 1% of screen width
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    menuModel.subtitle!,
                    style: TextStyle(
                      color: CustomColor.blueColor(),
                      fontSize: screenWidth * 0.04, // Responsive font size
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: screenWidth * 0.02), // 2% of screen width
                    child: const Text(
                      "See all",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: screenWidth * 0.02, // 2% of screen width
              ),
              child: const DottedLine(
                alignment: WrapAlignment.start,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: screenWidth * 0.02, // 2% of screen width
                vertical: screenWidth * 0.01, // 1% of screen width
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Start at ",
                        style: TextStyle(color: Colors.grey),
                      ),
                      Text(menuModel.price!),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.person,
                        size: screenWidth * 0.04, // Responsive icon size
                        color: Colors.grey,
                      ),
                      Text(
                        " 10 - 600",
                        style: TextStyle(fontSize: screenWidth * 0.04, color: Colors.grey), // Responsive font size
                      ),
                      SizedBox(
                        width: screenWidth * 0.02, // 2% of screen width
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: screenWidth * 0.02, // 2% of screen width
                vertical: screenWidth * 0.01, // 1% of screen width
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        "⭐ ",
                        style: TextStyle(fontSize: screenWidth * 0.04), // Responsive font size
                      ),
                      Text(
                        "₹299",
                        style: TextStyle(
                          color: CustomColor.blueColor(),
                          fontSize: screenWidth * 0.05, // Responsive font size
                        ),
                      ),
                      Text(
                        " / Person  ",
                        style: TextStyle(color: Colors.grey),
                      ),
                      Icon(
                        Icons.arrow_downward_outlined,
                        size: screenWidth * 0.04, // Responsive icon size
                        color: Color.fromARGB(255, 4, 95, 28),
                      ),
                      Text(
                        "20%",
                        style: TextStyle(
                          color: Color.fromARGB(255, 4, 95, 28),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "with Dynamic Price for ",
                        style: TextStyle(
                          color: CustomColor.blueColor(),
                          fontWeight: FontWeight.w400,
                          fontSize: screenWidth * 0.03, // Responsive font size
                        ),
                      ),
                      Text("100 Guests"),
                    ],
                  ),
                  SizedBox(height: screenWidth * 0.02), // 2% of screen width
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DeliveryBox3Widget extends StatelessWidget {
  const DeliveryBox3Widget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 340,
      width: 300,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: menuList1.length + 1,
        itemBuilder: (context, index) {
          if (index == menuList1.length) {
            return SeeAllConatiner();
          } else {
            return MenuCard(menuModel: menuList1[index]);
          }
        },
      ),
    );
  }
}

class CateringMenusWidget extends StatelessWidget {
  const CateringMenusWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 340,
      width: 320,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: menuList2.length + 1,
        itemBuilder: (context, index) {
          if (index == menuList2.length) {
            return SeeAllConatiner();
          } else {
            return MenuCard(menuModel: menuList2[index]);
          }
        },
      ),
    );
  }
}
