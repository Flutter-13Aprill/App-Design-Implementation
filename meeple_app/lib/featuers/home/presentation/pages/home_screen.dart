import 'package:flutter/material.dart';
import 'package:meeple_app/core/theme/app_palette.dart';
import 'package:meeple_app/featuers/home/presentation/widget/add_container.dart';
import 'package:meeple_app/featuers/home/presentation/widget/custom_search_bar.dart';
import 'package:meeple_app/featuers/home/presentation/widget/custom_tab_bar.dart';
import 'package:meeple_app/featuers/home/presentation/widget/grid_view.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 40,
        leadingWidth: 90,
        leading: Padding(
          padding: const EdgeInsets.all(8),
          child: SizedBox(
            height: 23,
            width: 60,
            child: Image.asset("assets/images/logo.png", fit: BoxFit.fill),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.notifications_none_sharp,
              color: AppPalette.mainTextColor,
              size: 28,
            ),
          ),
        ],
      ),
      backgroundColor: AppPalette.backgroundColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CustomSearchBar(),
          Padding(padding: const EdgeInsets.all(8.0), child: CustomTapBar()),
          AddContainer(),
          Flexible(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: CustomGradeView(),
            ),
          ),
        ],
      ),
    );
  }
}
