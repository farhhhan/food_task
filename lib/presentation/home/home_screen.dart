import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:food_app/presentation/custom_widget/catering_menu.dart';
import 'package:food_app/presentation/custom_widget/custom_location.dart';
import 'package:food_app/presentation/custom_widget/delivery_box.dart';
import 'package:food_app/presentation/custom_widget/image_conatiner.dart';
import 'package:food_app/presentation/custom_widget/meal_box.dart';
import 'package:food_app/presentation/custom_widget/meal_catering.dart';
import 'package:food_app/presentation/custom_widget/menu_card.dart';
import 'package:food_app/presentation/custom_widget/offer_box.dart';
import 'package:food_app/presentation/custom_widget/plater_choosing.dart';
import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            ListView(
              padding: EdgeInsets.only(bottom: screenHeight * 0.1),
              children: [
                LocationandUser(),
                OfferContainerWidget(),
                SizedBox(height: screenHeight * 0.02),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.04),
                  child: Text('Start Crafting',
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: screenWidth * 0.05,
                          color: Colors.black)),
                ),
                SizedBox(height: screenHeight * 0.01),
                DeliverBox(),
                SizedBox(height: screenHeight * 0.01),
                DeliveryBoxWidget(),
                SizedBox(height: screenHeight * 0.04),
                Plater_choosing(),
                SizedBox(height: screenHeight * 0.02),
                DeliveryBox3Widget(),
                SizedBox(height: screenHeight * 0.03),
                MealBox(),
                SizedBox(height: screenHeight * 0.02),
                MealBoxWidget(),
                CateringMenus(),
                CateringMenusWidget(),
                SizedBox(height: screenHeight * 0.05),
              ],
            ),
            Positioned(
              bottom: 10,
              left: 0,
              right: 0,
              child: Container(
                height: screenHeight * 0.17,
                child: FloatingNavbar(
                  backgroundColor: const Color.fromARGB(255, 253, 254, 255),
                  selectedItemColor: const Color.fromARGB(255, 4, 4, 4),
                  unselectedItemColor:
                      const Color.fromARGB(255, 0, 0, 0).withOpacity(0.7),
                  borderRadius: 20,
                  items: [
                    FloatingNavbarItem(
                      customWidget: Icon(
                        Icons.account_circle,
                        size: screenWidth * 0.12,
                        color: Colors.grey,
                      ),
                      title: 'Profile',
                    ),
                    FloatingNavbarItem(
                      icon: Icons.image,
                      customWidget: CircleAvatar(
                        backgroundColor: Colors.yellow,
                        radius: screenWidth * 0.08, 
                        child: CircleAvatar(
                          backgroundImage: AssetImage('images/bottom.jpg'),
                          radius: screenWidth * 0.07, 
                        ),
                      ),
                    ),
                    FloatingNavbarItem(
                        title: 'Orders',
                        customWidget: CircleAvatar(
                          maxRadius: screenWidth * 0.05, 
                          backgroundColor: Colors.grey,
                          child: CircleAvatar(
                            maxRadius: screenWidth * 0.045, 
                            backgroundColor: Colors.white,
                            child: Center(
                              child: Icon(
                                Icons.restaurant,
                                size: screenWidth * 0.05,
                                color: Color.fromARGB(255, 71, 71, 71),
                              ),
                            ),
                          ),
                        )),
                  ],
                  currentIndex: _selectedIndex,
                  onTap: _onItemTapped,
                  iconSize: screenWidth * 0.07,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
