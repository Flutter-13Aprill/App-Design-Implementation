import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:residence_app/widgets/bottom_sheet.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

// This widget is used to display a room card with details like the title, location, price, rating, and
// room type. It includes an image with a smooth page indicator and a favorite button.

class RoomCardWidget extends StatefulWidget {
  final String title;
  final String location;
  final String price;
  final String roomType;
  final int rating;
  final int roommatesCount;
  final List<String> features;
  final String imagePath1;
  final String imagePath2;
  final String imagePath3;

  const RoomCardWidget({
    super.key,
    required this.title,
    required this.location,
    required this.roomType,
    required this.price,
    required this.rating,
    required this.roommatesCount,
    required this.features,
    required this.imagePath1,
    required this.imagePath2,
    required this.imagePath3,
  });

  @override
  State<RoomCardWidget> createState() => _RoomCardWidgetState();
}

class _RoomCardWidgetState extends State<RoomCardWidget> {
  bool isClicked = false;
  final PageController pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        showModalBottomSheet(
          isScrollControlled: true,
          context: context,
          builder: (context) {
            return SheetBottomWidget(
              imagePath1: widget.imagePath1,
              imagePath2: widget.imagePath2,
              imagePath3: widget.imagePath3,
              roommatesCount: widget.roommatesCount,
              features: widget.features,
              rating: widget.rating,
              roomName: widget.title,
              roomType: widget.roomType,
            );
          },
        );
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Color(0xffBEBAB3)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              alignment: AlignmentDirectional.bottomEnd,
              children: [
                Container(
                  width: 400,
                  height: 194,
                  color: Color(0xffE6EDF4),
                  child: PageView(
                    controller: pageController,
                    children: [
                      Image.asset(widget.imagePath1, fit: BoxFit.cover),

                      Image.asset(widget.imagePath2, fit: BoxFit.cover),

                      Image.asset(widget.imagePath3, fit: BoxFit.cover),
                    ],
                  ),
                ),
                Positioned(
                  bottom: 12,
                  left: 16,
                  child: SmoothPageIndicator(
                    controller: pageController,
                    count: 3,
                    effect: WormEffect(
                      dotHeight: 8,
                      dotWidth: 8,
                      activeDotColor: Color(0xff6a7d4f),
                      dotColor: Color(0xffd0d0c8),
                    ),
                  ),
                ),
                Positioned(
                  top: 16,
                  right: 8,
                  child: Container(
                    height: 35,
                    width: 35,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey[50],
                    ),
                    child: InkWell(
                      onTap:
                          () => setState(() {
                            isClicked = !isClicked;
                          }),
                      child: Icon(
                        size: 20,
                        Icons.favorite,
                        color: isClicked ? Colors.red : Colors.grey[400],
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 12,
                  right: 8,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xff6a7d4f),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 4,
                        horizontal: 16,
                      ),
                      child: Text(
                        widget.roomType,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(16),
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

                      // Text(
                      //   "4 h 30 min",
                      //   style: TextStyle(
                      //     fontSize: 16,
                      //     color: Color(0xff6a7d4f),
                      //     fontWeight: FontWeight.w600,
                      //   ),
                      // ),
                    ],
                  ),
                  SizedBox(height: 4),

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

                      Row(
                        children: List.generate(5, (index) {
                          // int rating = 5;
                          return Icon(
                            index < widget.rating
                                ? Icons.star
                                : Icons.star_border,
                            color: Colors.amberAccent,
                            size: 22,
                          );
                        }),
                      ),
                    ],
                  ),
                  // Text(
                  //   "HTML",
                  //   style: TextStyle(
                  //     fontSize: 28,
                  //     fontWeight: FontWeight.w700,
                  //   ),
                  // ),
                  // Text(
                  //   "Mastering HTML for Advanced Web Interfaces",
                  //   style: TextStyle(fontSize: 15),
                  // ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
