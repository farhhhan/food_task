import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:food_box/domain/menu/menuModel.dart';
import 'package:food_box/presentation/custom_widget/see_all.dart';
import 'package:food_box/utils/color.dart';

class MenuCard extends StatelessWidget {
  MenuModel menuModel;

  MenuCard({required this.menuModel});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16.0,
        vertical: 4
      ),
      child: Container(
        width: 330,
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
        child: ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    width: double.infinity,
                    height: 150,
                    child: Image.asset(
                      'images/h.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      margin: const EdgeInsets.only(top: 15),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 3),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Color.fromARGB(255, 53, 23, 128),
                            Color.fromARGB(255, 123, 73, 210),
                          ],
                          begin: Alignment.centerRight,
                          end: Alignment.centerLeft,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.5),
                            offset: Offset(2, 4),
                            blurRadius: 4,
                          ),
                        ],
                        borderRadius: const BorderRadius.only(
                          bottomRight: Radius.circular(8),
                          topRight: Radius.circular(8),
                        ),
                      ),
                      child: const Text(
                        'Popular', // Add your text here
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    SizedBox(
                      height: 25,
                      width: 25,
                      child: Image.asset('images/veg-logo-png-6.png'),
                    ),
                    const SizedBox(width: 5),
                    Text(menuModel.title!,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        )),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: const DottedLine(
                  alignment: WrapAlignment.start,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(menuModel.subtitle!,
                        style: TextStyle(
                            color: CustomColor.blueColor(),
                            fontSize: 16,
                            fontWeight: FontWeight.w400)),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: const Text("See all",
                          style: TextStyle(color: Colors.grey)),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: const DottedLine(
                  alignment: WrapAlignment.start,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 6, top: 2),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Text(
                          "Start at ",
                          style: TextStyle(color: Colors.grey),
                        ),
                        Text(menuModel.price!),
                      ],
                    ),
                    const Row(
                      children: [
                        Icon(
                          Icons.person,
                          size: 15,
                          color: Colors.grey,
                        ),
                        Text(
                          " 10 - 600",
                          style: TextStyle(fontSize: 15, color: Colors.grey),
                        ),
                        SizedBox(
                          width: 10,
                        )
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 4),
                child: Column(
                  children: [
                    Row(
                      children: [
                        SizedBox(width: 3),
                        Text(
                          "⭐ ",
                          style: TextStyle(fontSize: 13),
                        ),
                        Text("₹299",
                            style: TextStyle(
                                color: CustomColor.blueColor(), fontSize: 20)),
                        Text(" / Person  ",
                            style: TextStyle(color: Colors.grey)),
                        Icon(Icons.arrow_downward_outlined,
                            size: 18, color: Color.fromARGB(255, 4, 95, 28)),
                        Text("20%",
                            style: TextStyle(
                                color: Color.fromARGB(255, 4, 95, 28))),
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 8,
                        ),
                        Text("with Dynamic Price for ",
                            style: TextStyle(
                                color: CustomColor.blueColor(),
                                fontWeight: FontWeight.w400,
                                fontSize: 13)),
                        Text("100 Guests"),
                      ],
                    ),
                    SizedBox(height: 10),
                  ],
                ),
              ),
            ],
          ),
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
              return MenuCard(menuModel: menuList2[index]);
            }
          },
        ));
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
      width: 300,
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
