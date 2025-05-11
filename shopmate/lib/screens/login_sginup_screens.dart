import 'package:flutter/material.dart';
import 'package:shopmate/extensions/screens/get_size_screen.dart';
import 'package:shopmate/widgets/log_in.dart';
import 'package:shopmate/widgets/sign_up.dart';

class LoginSginupScreens extends StatelessWidget {
  /// LoginSginupScreens displays a screen with tabs for login and sign up options
  const LoginSginupScreens({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2, // Two tabs
      child: Scaffold(
        backgroundColor: Theme.of(context).colorScheme.primary,
        body: SafeArea(
          child: Center(
            child: Stack(
              children: [
                Center(
                  child: SizedBox(
                    width: context.getWidth() + 120,
                    height: context.getHeight() / 1.8,
                    child: Card(
                      // Card container to hold the TabBar
                      color: Theme.of(context).colorScheme.surface,
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          children: [
                            Container(
                              height: 40,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.rectangle,
                                borderRadius: BorderRadius.circular(30),
                                border: Border.all(
                                  width: 1,
                                  color: Colors.grey.shade300,
                                ),
                              ),
                              // TabBar with two tabs: 'Log in' and 'Sign in'
                              child: TabBar(
                                dividerColor: Colors.transparent,
                                indicator: BoxDecoration(
                                  color:
                                      Theme.of(context).colorScheme.secondary,
                                  shape: BoxShape.rectangle,
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                indicatorSize: TabBarIndicatorSize.tab,
                                labelColor: Colors.white,
                                unselectedLabelColor:
                                    Theme.of(context).colorScheme.secondary,
                                tabs: [
                                  Tab(text: 'Log in'),
                                  Tab(text: 'Sign in'),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 400,

                              child: TabBarView(
                                children: [LogIn(), SignUp()],
                              ), // Display LogIn and SignUp widgets in TabBarView
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                //Image
                Positioned(
                  top: 400,
                  left: 170,
                  child: Image.asset(
                    'assets/images/cart.png',
                    width: context.getWidth() + 50,
                    height: context.getHeight() / 1.8,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
