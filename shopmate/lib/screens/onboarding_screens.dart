import 'package:flutter/material.dart';
import 'package:shopmate/extensions/screens/get_size_screen.dart';
import 'package:shopmate/model/onboarding_content.dart';
import 'package:shopmate/screens/login_sginup_screens.dart';

//Onboarding pages
class OnboardingScreens extends StatefulWidget {
  const OnboardingScreens({super.key});

  @override
  State<OnboardingScreens> createState() => _OnboardingScreensState();
}

class _OnboardingScreensState extends State<OnboardingScreens> {
  final pageController = PageController(); // Controller for pages
  int pageNumber = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,

      // PageView to navigate through the onboarding pages
      body: SafeArea(
        child: PageView.builder(
          controller: pageController,
          itemCount: onboardingContent.length,
          onPageChanged: (index) {
            setState(() {
              pageNumber = index;
            });
          },
          itemBuilder:
              // Building the page view
              (context, index) => Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Onboarding image
                    Image.asset(
                      onboardingContent[index].imageUrl,
                      width: context.getWidth() + 150,
                      height: context.getHeight() / 3,
                      fit: BoxFit.contain,
                    ),
                    // Onboarding title
                    Text(
                      onboardingContent[index].title,
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    // Onboarding subtitle
                    Text(
                      onboardingContent[index].subTitle,
                      style: TextStyle(fontSize: 14, color: Colors.grey),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 30),

                    // Next button
                    ElevatedButton(
                      onPressed: () {
                        if (pageNumber < onboardingContent.length - 1) {
                          pageController.nextPage(
                            duration: Duration(milliseconds: 300),
                            curve: Curves.easeIn,
                          );
                        } else {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => LoginSginupScreens(),
                            ),
                          );
                          setState(() {});
                        }
                      },
                      child: Text('Next'),
                    ),
                  ],
                ),
              ),
        ),
      ),
    );
  }
}
