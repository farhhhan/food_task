import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DeliverBox extends StatelessWidget {
  const DeliverBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170,
      margin: const EdgeInsets.symmetric(horizontal: 16.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(11.0),
        gradient: const LinearGradient(
          colors: [
            Color.fromARGB(255, 255, 255, 255),
            Color.fromARGB(255, 226, 200, 162)
          ], // Gradient colors
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 10),
                  const Text(
                    "Delivery Box",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.person,
                        size: 19,
                        color: Color.fromARGB(255, 150, 94, 74),
                      ),
                      Text(
                        " Min 10 - Max 120",
                        style: TextStyle(
                            color: const Color.fromARGB(255, 155, 108, 28),
                            fontSize: 14),
                      ),
                    ],
                  ),
                  const SizedBox(height: 40),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      width: 130,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 8),
                      decoration: const BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(
                                30), // Change this to round a different edge
                            bottomRight: Radius.circular(30),
                            bottomLeft: Radius.circular(30),
                            topLeft: Radius.circular(30)),
                      ),
                      child: Center(
                        child: const Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'See All ',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Icon(
                              Icons.arrow_forward,
                              size: 16,
                              color: Colors.white,
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(width: 10),
            Image.asset(
              'images/e-removebg-preview.png',
              height: 390,
              width: 190,
              fit: BoxFit.cover,
            ),
          ],
        ),
      ),
    );
  }
}
