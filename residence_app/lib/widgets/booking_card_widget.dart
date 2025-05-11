import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

// Widget for displaying booking card with details such as price, location, booking date, and rating

class BookingCardWidget extends StatefulWidget {
  final String title;
  final String price;
  final String imagePath;
  final String location;
  final int rating;
  final String bookingDate;
  final bool isActive;

  const BookingCardWidget({
    super.key,
    required this.imagePath,
    required this.location,
    required this.price,
    required this.rating,
    required this.title,
    required this.bookingDate,
    required this.isActive,
  });

  @override
  State<BookingCardWidget> createState() => _BookingCardWidgetState();
}

class _BookingCardWidgetState extends State<BookingCardWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        children: [
          Container(
            height: 185,
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
                Container(
                  height: 170,
                  width: 140,
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      bottomLeft: Radius.circular(20),
                    ),
                    child: Image.asset(widget.imagePath, fit: BoxFit.cover),
                  ),
                ),
                SizedBox(width: 20),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 8.0),
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

                        Row(
                          children: [
                            Icon(
                              Icons.calendar_today_outlined,
                              color: Color(0xff6a7d4f),
                              size: 18,
                            ),
                            SizedBox(width: 6),
                            Text(
                              "Booked on: ${widget.bookingDate}",
                              style: TextStyle(
                                fontSize: 14,
                                color: Color(0xff746c64),
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 8),

                        Row(
                          children: [
                            Icon(
                              widget.isActive
                                  ? Icons.check_circle_outline
                                  : Icons.cancel_outlined,
                              color:
                                  widget.isActive
                                      ? Color(0xff6a7d4f)
                                      : Colors.red,
                              size: 18,
                            ),
                            const SizedBox(width: 6),
                            Text(
                              widget.isActive
                                  ? "Active Booking"
                                  : "Expired Booking",
                              style: TextStyle(
                                fontSize: 14,
                                color:
                                    widget.isActive
                                        ? Color(0xff6a7d4f)
                                        : Colors.red,
                                fontWeight: FontWeight.w600,
                              ),
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
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
