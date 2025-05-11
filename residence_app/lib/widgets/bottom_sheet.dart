import 'package:flutter/material.dart';
import 'package:residence_app/screens/chat_view.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

// Widget for displaying detailed information about a room, including images, features, and contact button.

class SheetBottomWidget extends StatefulWidget {
  final String roomName;
  final String roomType;
  final int roommatesCount;
  final List<String> features;
  final String imagePath1;
  final String imagePath2;
  final String imagePath3;
  final int rating;

  const SheetBottomWidget({
    super.key,
    required this.roomName,
    required this.roomType,
    required this.roommatesCount,
    required this.features,
    required this.imagePath1,
    required this.imagePath2,
    required this.imagePath3,
    required this.rating,
  });

  @override
  State<SheetBottomWidget> createState() => _SheetBottomWidgetState();
}

class _SheetBottomWidgetState extends State<SheetBottomWidget> {
  bool isClicked = false;
  final PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: MediaQuery.of(context).size.height * 0.9,
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Center(
                  child: Text(
                    "",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: InkWell(
                    onTap: () => Navigator.of(context).pop(),
                    child: Icon(
                      Icons.arrow_back_ios_new_rounded,
                      color: Color(0xff6a7d4f),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 16),
            Stack(
              alignment: AlignmentDirectional.bottomEnd,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    width: double.infinity,
                    height: 270,
                    color: Color(0xffE6EDF4),
                    child: PageView(
                      controller: pageController,
                      children: [
                        Image.asset(
                          "assets/images/home1.png",
                          fit: BoxFit.cover,
                        ),
                        Image.asset(
                          "assets/images/home2.png",
                          fit: BoxFit.cover,
                        ),
                        Image.asset(
                          "assets/images/home3.png",
                          fit: BoxFit.cover,
                        ),
                      ],
                    ),
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
                      onTap: () {
                        setState(() => isClicked = !isClicked);
                      },
                      child: Icon(
                        Icons.favorite,
                        size: 20,
                        color: isClicked ? Colors.red : Colors.grey[400],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  widget.roomName,
                  style: TextStyle(
                    color: Color(0xff6a7d4f),
                    fontWeight: FontWeight.w600,
                    fontSize: 22,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: List.generate(5, (index) {
                    return Icon(
                      index < widget.rating ? Icons.star : Icons.star_border,
                      color: Colors.amberAccent,
                      size: 22,
                    );
                  }),
                ),
              ],
            ),
            SizedBox(height: 8),
            Text(
              widget.roomType,
              style: TextStyle(color: Colors.grey, fontSize: 16),
            ),

            SizedBox(height: 4),
            Row(
              children: [
                Icon(Icons.location_on, size: 18, color: Colors.grey[600]),
                SizedBox(width: 4),
                Text(
                  "Riyadh, Saudi Arabia",
                  style: TextStyle(color: Colors.grey[600], fontSize: 14),
                ),
              ],
            ),
            SizedBox(height: 16),
            Row(
              children: [
                Icon(Icons.person_outline, size: 20, color: Colors.grey[700]),
                SizedBox(width: 6),
                Text(
                  "Room Type: ",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                ),
                Text(
                  widget.roomType,
                  style: TextStyle(fontSize: 14, color: Colors.grey[800]),
                ),
              ],
            ),
            SizedBox(height: 8),
            Row(
              children: [
                Icon(Icons.group_outlined, size: 20, color: Colors.grey[700]),
                SizedBox(width: 6),
                Text(
                  "Roommates: ",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                ),
                Text(
                  "${widget.roommatesCount} other roommates",
                  style: TextStyle(fontSize: 14, color: Colors.grey[800]),
                ),
              ],
            ),
            SizedBox(height: 24),
            Text(
              "Features",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: Colors.black87,
              ),
            ),
            SizedBox(height: 8),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ...widget.features.map((feature) {
                  return Text("• $feature", style: TextStyle(fontSize: 14));
                }),
              ],
            ),
            Spacer(),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ChatScreen()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xff6a7d4f),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  padding: EdgeInsets.symmetric(vertical: 16),
                ),
                child: Text(
                  "Contact",
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
