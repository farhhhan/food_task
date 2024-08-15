import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/services.dart';
import 'package:food_app/domain/offer/offerModel.dart';
import 'package:food_app/presentation/custom_widget/copen_widget.dart';

class OfferContainer extends StatelessWidget {
  final OfferModel offerModel;

  OfferContainer({
    super.key,
    required this.offerModel,
  });

  @override
  Widget build(BuildContext context) {
    // Get screen width and height
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Container(
      width: screenWidth * 0.9, // 90% of the screen width
      height: screenHeight * 0.2, // 20% of the screen height
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
                  Expanded(
                    child: Text(
                      offerModel.content!,
                      maxLines: 3, 
                      overflow: TextOverflow.clip,
                      style: TextStyle(
                        fontSize: screenWidth *
                            0.04,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
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
                      child: CouponCodeWidget(cuponCode: offerModel.cuponCode!,)
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(width: screenWidth * 0.1),
            Flexible(
              child: Image.asset(
                '${offerModel.image}',
                height: screenHeight * 0.25,
                width: screenWidth * 0.35,
                fit: BoxFit.contain,
              ),
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
      height: MediaQuery.of(context).size.height * 0.2,
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: offerList.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: OfferContainer(offerModel: offerList[index]),
          );
        },
      ),
    );
  }
}
