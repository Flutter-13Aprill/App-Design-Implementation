import 'package:flutter/material.dart';
import 'package:residence_app/screens/bottom_navbar.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

// Onboarding screen with 3 pages explaining app features

class StartedScreen extends StatefulWidget {
  const StartedScreen({super.key});

  @override
  State<StartedScreen> createState() => _StartedScreenState();
}

class _StartedScreenState extends State<StartedScreen> {
  final PageController pageController = PageController();
  int currentIndex = 0;
  // Content for each onboarding page

  final List<Map<String, String>> pages = [
    {
      "desc":
          "Find your perfect shared space and connect with like-minded roommates.",
      "image": "assets/images/home1.png",
    },
    {
      "desc":
          "Live in a comfortable shared space that fits your lifestyle and budget",
      "image": "assets/images/home2.png",
    },
    {
      "desc":
          "We ensures secure transactions and protects you from any fraudulent activity",
      "image": "assets/images/home3.png",
    },
  ];
  // Moves to the next page or finishes onboarding

  void onNext() {
    if (currentIndex < pages.length - 1) {
      pageController.nextPage(
        duration: Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    } else {
      onFinish();
    }
  }

  // Navigates to the main app (bottom navigation)

  void onFinish() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => BottomNavbarScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        controller: pageController,
        itemCount: pages.length,
        onPageChanged: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        itemBuilder: (context, index) {
          final item = pages[index];
          return Stack(
            children: [
              // Background image with dark overlay
              Positioned.fill(
                child: Stack(
                  children: [
                    Image.asset(item["image"]!, fit: BoxFit.cover),
                    Container(color: Colors.black.withOpacity(0.7)),
                  ],
                ),
              ),

              // Skip button (top right)
              Positioned(
                top: 40,
                right: 40,
                child: InkWell(
                  onTap: () {
                    onFinish();
                  },
                  child: Text(
                    "Skip",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
              ),

              Positioned(
                bottom: MediaQuery.of(context).size.height * 0.27,
                left: 0,
                right: 0,

                child: Center(
                  // Smooth page indicator (dots)
                  child: SmoothPageIndicator(
                    controller: pageController,
                    count: pages.length,
                    effect: ExpandingDotsEffect(
                      dotHeight: 12,
                      dotWidth: 12,
                      expansionFactor: 2,
                      dotColor: Colors.grey,
                      activeDotColor: Color(0xff6a7d4f),
                    ),
                  ),
                ),
              ),

              // Description container at the bottom
              Positioned(
                bottom: 0,
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.25,
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25),
                    ),
                    // borderRadius: BorderRadius.circular(25),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xffEAEAF5),
                        offset: Offset(0, 4),
                        blurRadius: 10,
                        spreadRadius: 1,
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(height: 20),
                      Text(
                        item["desc"]!,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff746c64),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                bottom: 25,
                right: 25,
                child: IconButton(
                  onPressed: (onNext),
                  icon: Icon(
                    Icons.arrow_circle_right_outlined,
                    size: 45,
                    color: Color(0xff6a7d4f),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
