import 'package:flutter/material.dart';
import 'package:project_flow/controller/home_controller.dart';
import 'package:project_flow/page/homePage/home_page.dart';
import 'package:project_flow/page/profile/profile_page.dart';
import 'package:project_flow/page/widgets/bottomSheet_widget/bottomShet_widget.dart';

Widget navBarWidget(
  HomeController controller,
  Function refresh,
  BuildContext context,
) {
  void _navigateToView(Widget page) {
    Navigator.of(context).push(
      PageRouteBuilder(
        opaque: false,
        pageBuilder: (context, animation, secondaryAnimation) => page,
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          const begin = 0.2;
          const end = 1.0;
          const curve = Curves.easeIn;

          final tween = Tween(
            begin: begin,
            end: end,
          ).chain(CurveTween(curve: curve));

          return FadeTransition(opacity: animation.drive(tween), child: child);
        },
      ),
    );
  }

  return BottomNavigationBar(
    backgroundColor: const Color.fromRGBO(32, 29, 43, 1),
    unselectedItemColor: Colors.white,
    selectedItemColor: Colors.deepPurple,
    currentIndex: controller.currentPageIndex,
    selectedLabelStyle: const TextStyle(color: Colors.white),
    unselectedIconTheme: const IconThemeData(
      color: Color.fromRGBO(151, 151, 151, 1),
    ),
    onTap: (int index) {
      controller.currentPageIndex = index;
      refresh();

      switch (index) {
        case 0:
          _navigateToView(HomePage());
          break;
        case 1:
          // _navigateToView(HomePage());
          break;
        case 2:
          showModalBottomSheet(
            context: context,
            builder: (BuildContext context) {
              return BottomshetWidget();
            },
          );
          break;
        case 3:
          // _navigateToView(HomePage());
          break;
        case 4:
          _navigateToView(ProfilePage(controller: controller, refresh: refresh,));
          break;
      }
    },
    items: [
      BottomNavigationBarItem(
        icon: Icon(Icons.home_outlined),
        label: '', // No label for the home icon
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.folder_outlined),
        label: '', // No label for the files icon
      ),
      BottomNavigationBarItem(
        icon: Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.deepPurpleAccent,
          ),
          width: 40.0,
          height: 40.0,
          child: Center(
            child: Icon(Icons.add, color: Colors.white, size: 28.0),
          ),
        ),
        label: '',
      ),
      BottomNavigationBarItem(icon: Icon(Icons.chat_bubble_outline), label: ''),
      BottomNavigationBarItem(icon: Icon(Icons.person_outline), label: ''),
    ],
  );
}
