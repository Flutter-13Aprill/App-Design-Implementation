import 'package:flutter/material.dart';
import 'package:meeple_app/core/function/navigation.dart';
import 'package:meeple_app/featuers/onbording/data/onbording_model.dart';
import 'package:meeple_app/featuers/signin/presentation/pages/sign_in_screen.dart';

class OnborderController {
  final PageController controller = PageController();
  int currentPage = 0;

  void checkNavigation(BuildContext context, int index) {
    if (index == onbordingData.length - 1) {
      customReplacmentNaviagte(context, SignInScreen());
    }
    controller.nextPage(
      duration: Duration(microseconds: 200),
      curve: Curves.easeIn,
    );
  }
}
