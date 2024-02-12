import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class NewItem extends StatelessWidget {
  const NewItem({super.key});

  @override
  Widget build(BuildContext context) {
    Color ratingIconColor = Color.fromRGBO(255, 173, 48, 1);
    return Container(
      height: 127,
      width: 251,
      padding: EdgeInsets.only(right: 16, bottom: 20),
      // color: Colors.pinkAccent,
      child: Stack(
        children: [
          // white container
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 95,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 20,
                  ),
                ],
                color: Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 10, bottom: 10, left: 10, right: 2),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Name
                    SizedBox(
                      width: 130,
                      child: Text(
                        'Very Delicious Item',
                        style: TextStyle(
                          fontSize: 18,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),

                    // Rating bar
                    RatingBar(
                      initialRating: 3.4,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemCount: 5,
                      itemSize: 14,
                      ratingWidget: RatingWidget(
                        full: Icon(
                          Icons.star,
                          color: ratingIconColor,
                        ),
                        half: Icon(
                          Icons.star_half,
                          color: ratingIconColor,
                        ),
                        empty: Icon(
                          Icons.star_border,
                          color: ratingIconColor,
                        ),
                      ),
                      itemPadding: EdgeInsets.symmetric(horizontal: 0.4),
                      onRatingUpdate: (rating) {},
                    ),

                    // (pp - uname) - (icon - time)

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // (pp - uname)
                        Row(
                          children: [
                            _circularImage(25, '11.jpg'),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8.0),
                              child: Text(
                                'by Jane Doe',
                                maxLines: 1,
                                overflow: TextOverflow.fade,
                                style: TextStyle(
                                    fontSize: 12, color: Colors.black38),
                              ),
                            ),
                          ],
                        ),

                        // (icon - time)
                        Row(
                          children: [
                            Icon(
                              Icons.timer_outlined,
                              size: 18,
                              color: Colors.black38,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 4, right: 10),
                              child: Text(
                                '20 min',
                                style: TextStyle(
                                    color: Colors.black38, fontSize: 12),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),

          Positioned(
            top: 0,
            right: 10,
            child: _circularImage(86, 'pasta.jpg'),
          ),
        ],
      ),
    );
  }

  Widget _circularImage(double diameter, String fileName) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(150),
      child: Container(
        height: diameter,
        width: diameter,
        child: Image.asset(
          'assets/images/$fileName',
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
