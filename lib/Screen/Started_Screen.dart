import 'package:app_design_implementation/Controllers/Started_Screen_Controller.dart';
import 'package:app_design_implementation/Widgets/Started_DotIndicator_Widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:app_design_implementation/Screen/Login_Signup_Screen.dart';

class StartedScreen extends StatelessWidget {
  StartedScreen({super.key});

  // Data for onboarding screens
  final List<Map<String, String>> onboardingData = [
    {
      "title": "Welcome",
      "description": "Create your perfect CV with ease!",
      "image": "assets/onboarding1.png",
    },
    {
      "title": "Templates",
      "description": "Choose from various professional templates!",
      "image": "assets/onboarding2.png",
    },
    {
      "title": "Get Started",
      "description": "Start building your CV now!",
      "image": "assets/onboarding3.png",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => StartedScreenController(),
      child: Consumer<StartedScreenController>(
        // Rebuilds the widget when the pageManager updates
        builder: (context, pageManager, child) {
          return Scaffold(
            backgroundColor: Color(0xFF1E1A2B),
            body: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
              child: Column(
                children: [
                  Expanded(
                    child: PageView.builder(
                      controller: pageManager.pageController,
                      onPageChanged:
                          pageManager.updatePage, // Updates the current page
                      itemCount: onboardingData.length,
                      itemBuilder: (context, index) {
                        final data = onboardingData[index];
                        return Column(
                          children: [
                            SizedBox(height: 60),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(30),
                              child: Image.asset(
                                data["image"]!, // Displays the image for the current page
                                height: 400,
                                fit: BoxFit.fill,
                              ),
                            ),
                            SizedBox(height: 40),
                            ShaderMask(
                              shaderCallback:
                                  (bounds) => LinearGradient(
                                    colors: [Color(0xFFBFA0FF), Colors.white],
                                  ).createShader(bounds),
                              child: Text(
                                data["title"]!, // Title for the current page
                                style: TextStyle(
                                  fontSize: 34,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            SizedBox(height: 16),
                            Text(
                              data["description"]!, // Description for the current page
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Colors.grey[300],
                                height: 1.5,
                              ),
                            ),
                          ],
                        );
                      },
                    ),
                  ),

                  // Dot Indicator
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      onboardingData.length,
                      (index) => Padding(
                        padding: EdgeInsets.symmetric(horizontal: 4),
                        child: StartedDotIndicatorWidget(
                          isActive: pageManager.currentPage == index,
                        ), // Active dot indicator for current page
                      ),
                    ),
                  ),

                  SizedBox(height: 50),

                  // Gradient Button to go to next page or login
                  GestureDetector(
                    onTap: () {
                      if (pageManager.currentPage < onboardingData.length - 1) {
                        pageManager
                            .nextPage(); // Navigate to next page in onboarding
                      } else {
                        pageManager
                            .goToLogin(); // Go to login page after onboarding
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (_) => LoginSignupScreen(),
                          ),
                        );
                      }
                    },
                    child: Container(
                      width: 70,
                      height: 70,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [Color(0xFFBFA0FF), Color(0xFF836FFF)],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.deepPurple.withOpacity(0.5),
                            blurRadius: 12,
                            offset: Offset(0, 6),
                          ),
                        ],
                      ),
                      child: Icon(
                        Icons.arrow_forward,
                        size: 30,
                        color: Colors.white,
                      ), // Button icon
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
