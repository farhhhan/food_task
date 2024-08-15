import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:food_app/utils/color.dart';

class CateringMenus extends StatelessWidget {
  const CateringMenus({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.04),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            flex: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Catering Menus',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: screenWidth * 0.05, // Responsive font size
                        color: CustomColor.blueColor(),
                      ),
                    ),
                    Text(
                      " ( ",
                      style: TextStyle(color: Colors.grey),
                    ),
                    Icon(
                      Icons.person,
                      color: Colors.grey,
                      size: screenWidth * 0.04, 
                    ),
                    Text(
                      " Min 200 )",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
                SizedBox(height: screenWidth * 0.005), // Responsive spacing
                Text(
                  "Best for wedding Corporate Event, Birthdays etc",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: screenWidth * 0.026 // Responsive font size
                  ),
                ),
              ],
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.expand_more_outlined, size: screenWidth * 0.05), // Responsive icon size
          ),
        ],
      ),
    );
  }
}
