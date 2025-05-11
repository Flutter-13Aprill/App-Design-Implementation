import 'package:flutter/material.dart';
import 'package:kaf/widgets/listing_coffee_items_widget.dart';

// -- Widgets
import 'package:kaf/widgets/cart_button_widget.dart';
import 'package:kaf/widgets/categories_tab_bar_widget.dart';
import 'package:kaf/widgets/cart_widget.dart';
import 'package:kaf/widgets/greetings_widget.dart';
import 'package:kaf/widgets/home_search_bar_widget.dart';

// -- Extensions
import 'package:kaf/extensions/screen_sizes.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>  with SingleTickerProviderStateMixin{

  late final TabController _tabBarController; 
  int tabBarIndex = 0;
  
  @override
  void initState() {
    _tabBarController = TabController(length: 4, vsync: this );
    super.initState();
  }

  @override
  void dispose() {
    _tabBarController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: CartButtonWidget(onPressed: (){
        showModalBottomSheet(
          backgroundColor: Colors.white,
          context: context,
          builder: (context) => CartWidget(),
        );
      }),
      appBar: AppBar(
    
        backgroundColor: Color(0xff543310),
        leadingWidth: 150,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30)
        ),

        leading: GreetingsWidget(),
      ),

      body: GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 16),
          child: SingleChildScrollView(
            child: Column(

              children: [

                SizedBox(height: context.getHeight() * (32 / 956)),

                HomeSearchBarWidget(),

                SizedBox(height: context.getHeight() * (32 / 956)),

                CategoriesTabBarWidget(),
                
                SizedBox(height: context.getHeight() * (24 / 956)),

                ListingCoffeeItemsWidget()
              ],
            ),
          ),
        ),
      ),
    );
  }
}

