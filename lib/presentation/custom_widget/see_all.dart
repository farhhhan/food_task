import 'package:flutter/material.dart';

class SeeAllConatiner extends StatelessWidget {
  const SeeAllConatiner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
          width: 200,
          height: 150,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            gradient: const LinearGradient(
              colors: [Colors.white, Color.fromARGB(255, 242, 190, 207)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 20,
                backgroundColor: Color.fromARGB(255, 195, 16, 126),
                child: Icon(
                  Icons.arrow_forward,
                  color: Colors.white,
                  size: 20,
                ),
              ),
              SizedBox(height: 10),
              Text(
                "See All",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 195, 16, 126)
                ),
              ),
            ],
          ),
        );
  }
}
