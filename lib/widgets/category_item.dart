import 'package:flutter/material.dart';
import 'package:recipe/utils/constants.dart';
import 'package:recipe/widgets/rating_badge.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 231,
      width: 150,
      margin: EdgeInsets.only(right: 10),
      // color: Colors.red,
      child: Stack(
        children: [
          Positioned(
            bottom: 0,
            child: Container(
              height: 176,
              width: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.black12,
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // image
                ClipRRect(
                  borderRadius: BorderRadius.circular(150),
                  child: Container(
                    height: 110,
                    width: 110,
                    child: Image.asset('assets/images/pasta.jpg',
                        fit: BoxFit.cover),
                  ),
                ),

                Padding(
                  padding:
                      const EdgeInsets.only(bottom: 10, left: 10, right: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      // item name

                      Padding(
                        padding: const EdgeInsets.only(bottom: 20),
                        child: Text(
                          'Very Delicious Pasta',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),

                      // time + favorite icon
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // time
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Time',
                                style: TextStyle(
                                  fontSize: 11,
                                  color: Colors.black54,
                                ),
                              ),
                              Text(
                                '15 mins',
                                style: TextStyle(
                                    fontSize: 11, color: Colors.black),
                              ),
                            ],
                          ),

                          // favorite icon
                          Container(
                            height: 24,
                            width: 24,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                            ),
                            child: GestureDetector(
                              onTap: () {},
                              child: const Padding(
                                padding: const EdgeInsets.all(0.0),
                                child: Icon(
                                  Icons.bookmark_border,
                                  color: buttonColor,
                                  size: 15,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Positioned(
            top: 30,
            right: 0,
            child: RatingBadge('4.1'),
          )
        ],
      ),
    );
  }
}
