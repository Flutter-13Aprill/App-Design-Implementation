import 'package:app_design/screens/home_screen.dart';
import 'package:app_design/theme/app_colors.dart';
import 'package:flutter/material.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController controller = PageController();
  int currentIndex = 0;

  final List<Map<String, String>> pages = [
    {
      'image': 'assets/images/food1.png',
      'title': 'Welcome to Wasfaty',
      'subtitle': 'Help your path to health goals with happiness',
    },
    {
      'image': 'assets/images/food1.png',
      'title': 'Healthy Recipes Made Simple',
      'subtitle': 'Discover easy, delicious meals for every lifestyle',
    },
    {
      'image': 'assets/images/food1.png',
      'title': 'Track. Cook. Enjoy.',
      'subtitle': 'Plan your meals and enjoy cooking like never before',
    },
  ];

  void goNext() {
    if (currentIndex < 2) {
      controller.nextPage(
        duration: Duration(milliseconds: 300),
        curve: Curves.easeIn,
      );
    } else {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => HomeScreen()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView.builder(
            controller: controller,
            itemCount: pages.length,
            onPageChanged: (index) {
              setState(() => currentIndex = index);
            },
            itemBuilder: (context, index) {
              return Stack(
                fit: StackFit.expand,
                children: [
                  Image.asset(pages[index]['image']!, fit: BoxFit.cover),
                  Container(
                    color: const Color.fromARGB(34, 242, 168, 129),
                    padding: const EdgeInsets.all(32.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const SizedBox(height: 500),
                        Text(
                          pages[index]['title']!,
                          style: const TextStyle(
                            fontSize: 28,
                            color: Color.fromARGB(255, 2, 2, 2),
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 16),
                        Text(
                          pages[index]['subtitle']!,
                          style: const TextStyle(
                            fontSize: 18,
                            color: Color.fromARGB(179, 48, 43, 43),
                          ),
                          textAlign: TextAlign.center,
                        ),
                        const Spacer(),
                      ],
                    ),
                  ),
                ],
              );
            },
          ),
          Positioned(
            bottom: 40,
            left: 32,
            right: 32,
            child: ElevatedButton(
              onPressed: goNext,
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(vertical: 14),
                backgroundColor: AppColors.secondary,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              child: Text(
                currentIndex == 2 ? 'Get Started' : 'Next',
                style: TextStyle(color: AppColors.primary, fontSize: 20),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
