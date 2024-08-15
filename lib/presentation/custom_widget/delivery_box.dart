import 'package:flutter/material.dart';

class DeliverBox extends StatelessWidget {
  const DeliverBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
   
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Container(
      height: screenHeight * 0.195, 
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
          Positioned(
              bottom:0 , 
              top: 20,
              left: 160,
              right: 0,
            child: Container(
              decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(11.0),
              ),
              height: screenHeight * 0.7,
              child: Image.asset(
                'images/e-removebg-preview.png',
                height: screenHeight * 0.7, 
                width: screenWidth * 0.4, 
                fit: BoxFit.fill,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(screenWidth * 0.02), 
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: screenHeight * 0.01), 
                      Flexible(
                        child: FittedBox(
                          fit: BoxFit.scaleDown,
                          child: Text(
                            "Delivery Box",
                            style: TextStyle(
                              fontSize: screenWidth * 0.04, 
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: screenHeight * 0.01),
                      Row(
                        children: [
                          Icon(
                            Icons.person,
                            size: screenWidth * 0.05,
                            color: const Color.fromARGB(255, 150, 94, 74),
                          ),
                          SizedBox(width: screenWidth * 0.02), 
                          Text(
                            " Min 10 - Max 120",
                            style: TextStyle(
                              color: const Color.fromARGB(255, 155, 108, 28),
                              fontSize: screenWidth * 0.035,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: screenHeight * 0.03), 
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          width: screenWidth * 0.35, 
                          padding: EdgeInsets.symmetric(
                            horizontal: screenWidth * 0.04, 
                            vertical: screenHeight * 0.01, 
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
                                    fontSize: screenWidth * 0.04, 
                                  ),
                                ),
                                Icon(
                                  Icons.arrow_forward,
                                  size: screenWidth * 0.04, 
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
                SizedBox(width: screenWidth * 0.03),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
