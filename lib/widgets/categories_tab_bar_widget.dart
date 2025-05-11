import 'package:flutter/material.dart';

// -- Widget
import 'package:kaf/widgets/category_chip_widget.dart';

// -- Extension
import 'package:kaf/extensions/screen_sizes.dart';

class CategoriesTabBarWidget extends StatefulWidget {

  /// [CategoriesTabBarWidget] is the main tab bar of Kaf app, displaying the available drink categories.
  const CategoriesTabBarWidget({super.key});

  @override
  State<CategoriesTabBarWidget> createState() => _CategoriesTabBarWidgetState();
}

class _CategoriesTabBarWidgetState extends State<CategoriesTabBarWidget>
    with SingleTickerProviderStateMixin {
  late final TabController _tabBarController;
  int tabBarIndex = 0;

  @override
  void initState() {
    _tabBarController = TabController(length: 4, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _tabBarController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      width: context.getWidth() * 0.9,
      child: TabBar(
        controller: _tabBarController,
        onTap:(value) => setState(() { tabBarIndex = value;}),
        isScrollable: true,
        padding: EdgeInsets.zero,
        labelPadding: EdgeInsets.zero,
        tabAlignment: TabAlignment.start,
        dividerColor: Colors.transparent,
        indicatorColor: Colors.transparent,
        indicatorSize: TabBarIndicatorSize.tab,
        labelColor: Colors.white,
        unselectedLabelColor: Colors.black,
        labelStyle: Theme.of(context).textTheme.displaySmall!.copyWith(
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
        unselectedLabelStyle: Theme.of(context).textTheme.displaySmall,

        tabs: [
          CategoryChipWidget(
            categoryName: 'All Coffee',
            categoryTabIndex: 0,
            tabBarIndex: tabBarIndex,
          ),

          CategoryChipWidget(
            categoryName: 'Black Coffee',
            categoryTabIndex: 1,
            tabBarIndex: tabBarIndex,
          ),

          CategoryChipWidget(
            categoryName: 'Latte',
            categoryTabIndex: 2,
            tabBarIndex: tabBarIndex,
          ),

          CategoryChipWidget(
            categoryName: 'Americano',
            categoryTabIndex: 3,
            tabBarIndex: tabBarIndex,
          ),
        ],
      ),
    );
  }
}
