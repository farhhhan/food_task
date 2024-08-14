import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:food_box/utils/color.dart';

class Plater_choosing extends StatelessWidget {
  const Plater_choosing({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Row(
          children: [
            const Text(
              'Choose Your Platter',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                shadows: [
                  Shadow(
                    offset: Offset(2.0, 3.0), // Position of the shadow
                    blurRadius: 2.0, // Blur radius of the shadow
                    color: Color.fromARGB(147, 192, 190, 190), // Color and opacity of the shadow
                  ),
                ],
              ),
            ),
            const SizedBox(width: 10),
            const Expanded(child: Divider()),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Row(
                children: [
                  Text('Delivery Box ',
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                          color: CustomColor.blueColor())),
                  const Row(
                    children: [
                      Text(
                        "(",
                        style: TextStyle(color: Colors.grey),
                      ),
                      Icon(
                        Icons.person,
                        color: Colors.grey,
                        size: 15,
                      ),
                      Text(
                        "Min 10 - Max 50)",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  )
                ],
              ),
              const Text(
                "More",
                style: TextStyle(color: Color.fromARGB(255, 31, 30, 30), fontSize: 15,fontWeight: FontWeight.w500),
              ),
            ]),
            const Text(
              "Best for small gathering and house-parties",
              style: TextStyle(color: Colors.grey,fontSize: 12),
            )
          ],
        ),
      ]),
    );
  }
}
