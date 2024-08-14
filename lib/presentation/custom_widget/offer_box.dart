import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:food_box/domain/offer/offerModel.dart';

class OfferContainer extends StatelessWidget {
  OfferContainer({
    super.key,
    required this.offerModel,
  });

  final OfferModel offerModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 390, // Updated width
      height: 150, // Reduced height
      margin: const EdgeInsets.symmetric(horizontal: 16.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0),
        gradient: const LinearGradient(
          colors: [Color.fromARGB(255, 43, 2, 77), Color(0xFF5E34D8)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    offerModel.content!,
                    maxLines: 3, // Limit content to 3 lines
                    overflow: TextOverflow.clip,
                    style: TextStyle(
                      fontSize: 16, // Adjusted font size for better fit
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: DottedBorder(
                      borderType: BorderType.RRect,
                      color: const Color.fromARGB(255, 249, 184, 4),
                      strokeWidth: 1,
                      dashPattern: const [6, 3],
                      radius: const Radius.circular(4),
                      child: Container(
                        height: 29,
                        width: 150,
                        alignment: Alignment.center,
                        child: Text(
                          '${offerModel.cuponCode}',
                          style: TextStyle(
                            color: Color.fromARGB(255, 249, 184, 4),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(width: 40), // Added spacing between text and image
            Image.asset(
              '${offerModel.image}',
              height: 200, // Adjusted image height for better fit
              width: 160, // Adjusted image width for better fit
              fit: BoxFit.contain,
            ),
          ],
        ),
      ),
    );
  }
}

class OfferContainerWidget extends StatelessWidget {
  const OfferContainerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150, 
      width: 390, 
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: offerList.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(0.0),
            child: OfferContainer(offerModel: offerList[index]),
          );
        },
      ),
    );
  }
}
