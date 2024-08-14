import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:food_box/utils/color.dart';

class CateringMenus extends StatelessWidget {
  const CateringMenus({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text('Catering Menus',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 18,
                              color: CustomColor.blueColor())),
                      Row(
                        children: [
                          Text(
                            "( ",
                            style: TextStyle(color: Colors.grey),
                          ),
                          Icon(
                            Icons.person,
                            color: Colors.grey,
                            size: 15,
                          ),
                          Text(
                            " Min 200 )",
                            style: TextStyle(color: Colors.grey),
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),
              Text(
                "Best for wedding Corparate Event, Birthdays etc",
                style: TextStyle(color: Colors.grey, fontSize: 12),
              ),
            ],
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                    onPressed: () {}, icon: Icon(Icons.expand_more_outlined)),
              ],
            ),
          )
        ],
      ),
    );
  }
}
