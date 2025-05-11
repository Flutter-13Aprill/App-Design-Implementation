import 'package:flutter/material.dart';

// -- Screen
import 'package:kaf/extensions/screen_sizes.dart';
import 'package:kaf/screens/sign_up_screen.dart';

// -- Widgets
import 'package:kaf/widgets/confirmation_button_widget.dart';
import 'package:kaf/widgets/onboarding_page_view_widget.dart';
import 'package:kaf/widgets/page_indictor_widget.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<StatefulWidget> createState() => _OnboardingScreen();
}

class _OnboardingScreen extends State<OnboardingScreen>{
  late final PageController _pageViewController;
  int currentIndexPage = 0;

  @override
  void initState() {
    _pageViewController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _pageViewController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            SizedBox(height: context.getHeight() * 0.18),

            SizedBox(
              width: context.getWidth(),
              height: context.getHeight() * 0.51,
              child: PageView(
                onPageChanged: (value) {
                  setState(() {
                    currentIndexPage = value;
                  });
                },
                controller: _pageViewController,
                children: [

                  OnboardingPageViewWidget(title: 'Choose and customize your drink', description: 'Customize your own drink exactly how you like it by adding any topping you like', imagePath: 'assets/onboarding_screen/svgs/ilustrasi 1.svg'),

                  OnboardingPageViewWidget(title: 'Quickly and easily', description: 'Place your order quickly and easily, without wasting time. ', imagePath: 'assets/onboarding_screen/svgs/ilustrasi 2.svg')
                ],
              ),
            ),

            SizedBox(height: 42),

            PageIndictorWidget(pageViewCurrentIndex: currentIndexPage),

            SizedBox(height: 80),

            ConfirmationButtonWidget(
              text: currentIndexPage == 0 ? 'Next' : 'Brew your first coffee', 
              onPressed: 
              currentIndexPage == 0 ? 
              () => setState(() {_pageViewController.nextPage(duration: Duration(milliseconds: 400), curve: Curves.easeInOut);}) 
              : 
              () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => SignUpScreen()))
              )
          ],
        ),
      ),
    );
  }
}
