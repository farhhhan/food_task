import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DeliverBox extends StatelessWidget {
  const DeliverBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // Get screen width and height using MediaQuery
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Container(
      height: screenHeight * 0.195, // Responsive height
      margin: EdgeInsets.symmetric(horizontal: screenWidth * 0.04), // Responsive margin
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
      child: Stack(
        children: [
          Align(
            alignment: Alignment.bottomRight, // Align the image to the bottom-left
            child: Container(
              decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(11.0),
              ),
              height: screenHeight * 0.7,
              child: Image.asset(
                'images/e-removebg-preview.png',
                height: screenHeight * 0.7, // Responsive image height
                width: screenWidth * 0.6, // Responsive image width
                fit: BoxFit.contain,
              ),
            ),
          ),
          // Content over the image
          Padding(
            padding: EdgeInsets.all(screenWidth * 0.02), // Responsive padding
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: screenHeight * 0.01), // Responsive SizedBox
                      Flexible(
                        child: FittedBox(
                          fit: BoxFit.scaleDown,
                          child: Text(
                            "Delivery Box",
                            style: TextStyle(
                              fontSize: screenWidth * 0.04, // Responsive font size
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: screenHeight * 0.01), // Responsive SizedBox
                      Row(
                        children: [
                          Icon(
                            Icons.person,
                            size: screenWidth * 0.05, // Responsive icon size
                            color: const Color.fromARGB(255, 150, 94, 74),
                          ),
                          SizedBox(width: screenWidth * 0.02), // Responsive spacing
                          Text(
                            " Min 10 - Max 120",
                            style: TextStyle(
                              color: const Color.fromARGB(255, 155, 108, 28),
                              fontSize: screenWidth * 0.035, // Responsive font size
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: screenHeight * 0.03), // Responsive SizedBox
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          width: screenWidth * 0.35, // Responsive width
                          padding: EdgeInsets.symmetric(
                            horizontal: screenWidth * 0.04, // Responsive horizontal padding
                            vertical: screenHeight * 0.01, // Responsive vertical padding
                          ),
                          decoration: const BoxDecoration(
                            color: Colors.orange,
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                          ),
                          child: Center(
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'See All ',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: screenWidth * 0.04, // Responsive font size
                                  ),
                                ),
                                Icon(
                                  Icons.arrow_forward,
                                  size: screenWidth * 0.04, // Responsive icon size
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
                SizedBox(width: screenWidth * 0.03), // Responsive spacing
              ],
            ),
          ),
        ],
      ),
    );
  }
}
