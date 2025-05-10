import 'package:flutter/material.dart';
import 'package:project4/extensions/size.dart';
import 'package:project4/screens/login_signup_screen.dart';
import 'package:project4/widgets/page_indicator.dart';
import 'package:project4/widgets/page_view_container.dart';

class AppExplaining extends StatefulWidget {
  const AppExplaining({super.key});

// pages to give the user a breif about streamBun

  @override
  State<AppExplaining> createState() => _AppExplainingState();
}

class _AppExplainingState extends State<AppExplaining> {
  int currentPage = 0;
  PageController pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Container(
          height: context.getHeight(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 250),

              Center(
                child: Container(
                  width: context.getWidth(),
                  height: context.getHeight() * 0.3,
                  child: PageView(
                    onPageChanged: (value) {
                      currentPage = value;
                      setState(() {});
                    },
                    controller: pageController,
                    //page 1
                    children: [
                      Container(
                        width: context.getWidth() * 0.5,
                        height: context.getHeight() * 0.5,
                        child: Tab(
                          child: PageViewContainer(
                            setImage: 'assets/images/eating.png',
                            setText:
                                'StreamBun is your place to eat while whatching your favorite streatmer while eating your food',
                          ),
                        ),
                      ),

                      //page 2
                      Container(
                        width: context.getWidth() * 0.5,
                        height: context.getHeight() * 0.5,
                        child: Tab(
                          child: PageViewContainer(
                            setImage: 'assets/images/rat_eat.png',
                            setText:
                                'Easliy browsing through streamers befor finishing your food',
                          ),
                        ),
                      ),

                      //page 3
                      Container(
                        width: context.getWidth() * 0.5,
                        height: context.getHeight() * 0.5,
                        child: Tab(
                          child: PageViewContainer(
                            setImage: 'assets/images/fun.png',
                            setText:
                                'You can watch your favorite game walkthrough and see the reactions of the new streamers and chat with them ',
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 75),
              PageIndicator(currentPage: currentPage),
              SizedBox(height: 125),

              //button to go to next page
              Container(
                alignment: Alignment.center,
                width: context.getWidth() * 0.117,
                height: context.getHeight() * 0.05,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 32, 32, 32),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: IconButton(
                  onPressed: () {
                    //if the user reach last page it will go to loginscreen

                    if (currentPage == 2) {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoginSignupScreen(),
                        ),
                      );
                    }

                    pageController.nextPage(
                      duration: Duration(milliseconds: 350),
                      curve: Curves.easeIn,
                    );

                    setState(() {});
                  },
                  icon: Icon(
                    Icons.arrow_right,
                    size: 30,
                    color: Color.fromARGB(255, 251, 37, 118),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
