import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

// Widget for displaying a favorite card with image, price, location, and rating.
// When the favorite icon is tapped, an AlertDialog is shown to confirm if the user wants to remove the item from favorites.

class FavoriteCardWidget extends StatefulWidget {
  final String title;
  final String price;
  final String imagePath;
  final String location;
  final int rating;
  const FavoriteCardWidget({
    super.key,
    required this.imagePath,
    required this.location,
    required this.price,
    required this.rating,
    required this.title,
  });

  @override
  State<FavoriteCardWidget> createState() => _FavoriteCardWidgetState();
}

class _FavoriteCardWidgetState extends State<FavoriteCardWidget> {
  bool isClicked = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Color(0x80746c64),
                  offset: Offset(4, 4),
                  blurRadius: 4,
                  spreadRadius: 1,
                ),
              ],
            ),
            child: Row(
              children: [
                Stack(
                  children: [
                    Container(
                      height: 140,
                      width: 140,
                      child: ClipRRect(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          bottomLeft: Radius.circular(20),
                        ),
                        child: Image.asset(widget.imagePath, fit: BoxFit.cover),
                      ),
                    ),

                    Positioned(
                      top: 14,
                      right: 8,
                      child: Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.grey[50],
                        ),
                        child: InkWell(
                          onTap:
                              () => setState(() {
                                showDialog(
                                  context: context,
                                  builder:
                                      (context) => AlertDialog(
                                        backgroundColor: Colors.white,
                                        title: Text(
                                          "Remove this residence from favorites?",
                                          style: TextStyle(
                                            color: Color(0xff746c64),
                                          ),
                                        ),
                                        actions: [
                                          TextButton(
                                            onPressed:
                                                () => Navigator.pop(context),
                                            child: Text(
                                              "No",
                                              style: TextStyle(
                                                color: Color(0xff746c64),
                                                fontSize: 14,
                                              ),
                                            ),
                                          ),
                                          TextButton(
                                            onPressed:
                                                () => Navigator.pop(context),
                                            child: Text(
                                              "Yes",
                                              style: TextStyle(
                                                color: Color(0xff746c64),
                                                fontSize: 14,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                );

                                isClicked = false;
                              }),

                          child: Icon(
                            size: 18,
                            Icons.favorite,
                            color: isClicked ? Colors.red : Colors.grey[400],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 20),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            widget.title,
                            style: TextStyle(
                              fontSize: 20,
                              color: Color(0xff746c64),
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),

                      SizedBox(height: 8),

                      Row(
                        children: [
                          SvgPicture.asset(
                            "assets/icons/riyal.svg",
                            height: 20,
                            width: 20,
                            colorFilter: ColorFilter.mode(
                              Color(0xff6a7d4f),
                              BlendMode.srcIn,
                            ),
                          ),
                          SizedBox(width: 2),
                          Text(
                            "${widget.price} / Monthly",
                            style: TextStyle(
                              color: Color(0xff6a7d4f),
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),

                      SizedBox(height: 8),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.location_on_outlined,
                                color: Color(0xff6a7d4f),
                                size: 20,
                              ),
                              SizedBox(width: 4),
                              Text(
                                widget.location,
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Color(0xff746c64),
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),

                      SizedBox(height: 8),

                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: List.generate(5, (index) {
                            return Icon(
                              index < widget.rating
                                  ? Icons.star
                                  : Icons.star_border,
                              color: Colors.amberAccent,
                              size: 22,
                            );
                          }),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
