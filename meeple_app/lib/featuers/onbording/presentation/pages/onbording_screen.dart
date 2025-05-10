import 'package:flutter/material.dart';
import 'package:meeple_app/featuers/onbording/presentation/widget/cusom_page_view.dart';

class OnbordingScreen extends StatelessWidget {
  const OnbordingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Column(children: [Flexible(child: CustomPageView())]),
      ),
    );
  }
}
