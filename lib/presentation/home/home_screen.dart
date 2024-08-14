import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:food_box/presentation/custom_widget/catering_menu.dart';
import 'package:food_box/presentation/custom_widget/custom_location.dart';
import 'package:food_box/presentation/custom_widget/delivery_box.dart';
import 'package:food_box/presentation/custom_widget/image_conatiner.dart';
import 'package:food_box/presentation/custom_widget/meal_box.dart';
import 'package:food_box/presentation/custom_widget/meal_catering.dart';
import 'package:food_box/presentation/custom_widget/menu_card.dart';
import 'package:food_box/presentation/custom_widget/offer_box.dart';
import 'package:food_box/presentation/custom_widget/plater_choosing.dart';
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
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            ListView(
              padding: EdgeInsets.only(bottom: 70),
              children: [
                LocationandUser(),
                OfferContainerWidget(),
                SizedBox(height: 20),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text('Start Crafting',
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 22,
                          color: Colors.black)),
                ),
                SizedBox(height: 10),
                DeliverBox(),
                SizedBox(height: 10),
                DeliveryBoxWidget(),
                SizedBox(height: 35),
                Plater_choosing(),
                SizedBox(height: 15),
                DeliveryBox3Widget(),
                SizedBox(height: 25),
                MealBox(),
                SizedBox(height: 15),
                MealBoxWidget(),
                CateringMenus(),
                CateringMenusWidget(),
                SizedBox(height: 50),
              ],
            ),
            Positioned(
              bottom: 10,
              left: 0,
              right: 0,
              child: Container(
                height: 120,
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
                        size: 40,
                        color: Colors.grey,
                      ),
                      title: 'Profile',
                    ),
                    FloatingNavbarItem(
                      icon: Icons.image,
                      customWidget: CircleAvatar(
                        backgroundColor: Colors.yellow,
                        radius: 24,
                        child: CircleAvatar(
                          backgroundImage: AssetImage('images/bottom.jpg'),
                          radius: 22,
                        ),
                      ),
                    ),
                    FloatingNavbarItem(
                        title: 'Orders',
                        customWidget: CircleAvatar(
                          maxRadius: 18,
                          backgroundColor: Colors.grey,
                          child: CircleAvatar(
                            maxRadius: 17,
                            backgroundColor: Colors.white,
                            child: Center(
                              child: Icon(
                                Icons.restaurant,
                                size: 18,
                                color: Color.fromARGB(255, 71, 71, 71),
                              ),
                            ),
                          ),
                        )),
                  ],
                  currentIndex: _selectedIndex,
                  onTap: _onItemTapped,
                  iconSize: 30,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
