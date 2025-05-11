import 'package:flutter/material.dart';
import 'package:project4/screen/bottom_nav_bar.dart';
import 'package:project4/screen/intro1.dart';
import 'package:project4/screen/intro2.dart';
import 'package:project4/screen/intro3.dart';
import 'package:project4/screen/intro4.dart';
import 'package:project4/screen/intro5.dart';
import 'package:project4/screen/login.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ViewPage extends StatelessWidget {
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,

        children: [
          //page view
          SizedBox(
            height: 700,
            child: PageView(
              controller: _controller,

              children: const [
                Intro1(),
                Intro2(),
                Intro3(),
                Intro4(),
                Intro5(),
              ],
            ),
          ),
          SmoothPageIndicator(
            controller: _controller,
            count: 5,
            effect: ExpandingDotsEffect(
              dotColor: Color.fromARGB(255, 200, 200, 200),
              activeDotColor: Color.fromARGB(255, 48, 213, 232),
              dotHeight: 8,
              dotWidth: 15,
            ),
          ),

          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Login()),
              );
            },
            child: Text(
              "Skip",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
                color: Color.fromARGB(255, 200, 200, 200),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
