import 'package:dominos_app/screens/checkout_screen.dart';
import 'package:dominos_app/widgets/collections/buttom_navigation_screens.dart';
import 'package:dominos_app/widgets/colors/dominos_colors.dart';
import 'package:dominos_app/widgets/menu_screen/menu_pizza_card.dart';
import 'package:dominos_app/widgets/menu_screen/menu_screen_drawer.dart';
import 'package:dominos_app/widgets/menu_screen/menu_screen_search_bar.dart';
import 'package:dominos_app/widgets/menu_screen/tab_bar_category.dart';
import 'package:dominos_app/widgets/shimmer_loading.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


// Menu Screen and home of the application, here you can Navigate the drawer, go to checkout, and see previous orders in the "ButtomNavigatonItem" Orders. 
class MenuScreen extends StatefulWidget {
  const MenuScreen({super.key});

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> with TickerProviderStateMixin {
  bool isLoading = false; // Variable for the shimmer
  int selectedTabIndex = 0; // initalizing for the "TabBar" index
  int currentNavigationIndex = 0; // initalizing for the "ButtomNavigationBar" index
  late TabController _tabController; // creating the "TabBar" controller

  @override
  // The inital for the "menu_screen"
  void initState() {
    _tabController = TabController(vsync: this, length: 4);
    loadData();
    super.initState();
  }

  // the setup for the shimmer
  Future loadData() async {
    setState(() {
      isLoading = true;
    });

    // The shimmer will last for "4 Seconds"
    await Future.delayed(const Duration(seconds: 4), () {
      setState(() {
        isLoading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(240, 237, 243, 255),
      appBar: AppBar(
        backgroundColor: dominosBlue,
        title: Text(
          "Domino's Pizza",
          style: GoogleFonts.fraunces(color: Colors.white),
        ),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const CheckoutScreen()));
              },
              icon: const Icon(
                Icons.shopping_cart_outlined,
                color: Colors.white,
              ))
        ],
      ),
      drawer: const MenuScreenDrawer(), // calling for the "MenuScreenDrawer" for the drawer
      bottomNavigationBar: BottomNavigationBar( // Creating the "buttomNavigationBar" 
          backgroundColor: Colors.white,
          onTap: (value) {
            setState(() {
              currentNavigationIndex =
                  value; // Here given the index for the buttom navigation
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute( // based on the selected "BottomNavigationBarItem" Navigate based on the index from selected to "navigationScreensList" index.
                      builder: ((context) =>
                          navigationScreensList[currentNavigationIndex])));
            });
          },
          unselectedItemColor: dominosBlue,
          selectedItemColor: dominosRed,
          currentIndex: currentNavigationIndex,
          items: const [
            BottomNavigationBarItem( // Home "BottomNavigationBarItem"
                icon: Icon(
                  Icons.home_outlined,
                ),
                label: "Home"),
            BottomNavigationBarItem( // Orders "BottomNavigationBarItem"
                icon: Icon(Icons.shopping_bag_outlined), label: "Orders"),
            BottomNavigationBarItem( // Profile "BottomNavigationBarItem"
                icon: Icon(Icons.person_outlined), label: "Profile"),
          ]),
      body: SingleChildScrollView(
        child: Column(children: [
          const SizedBox(height: 16),
          const MenuScreenSearchBar(), // The "Menu_screen" Search Bar
          Padding(
            padding: const EdgeInsets.only(left: 24.0, top: 16, bottom: 16),
            child: SizedBox(
              width: MediaQuery.sizeOf(context).width,
              height: 35,
              child: TabBar( // The "TabBar for the items Categories"
                controller: _tabController,
                indicatorColor: const Color.fromARGB(0, 31, 29, 43),
                dividerHeight: 0,
                isScrollable: true,
                tabAlignment: TabAlignment.start,
                onTap: (value) {
                  setState(() {
                    selectedTabIndex = value;
                  });
                },
                tabs: [
                  CategoryTab(
                      categoryName: "Pizza",
                      categoryWidth: 60,
                      categoryIndex: 0,
                      selectedIndex: selectedTabIndex),
                  CategoryTab(
                      categoryName: "Deserts",
                      categoryWidth: 75,
                      categoryIndex: 1,
                      selectedIndex: selectedTabIndex),
                  CategoryTab(
                      categoryName: "Sides",
                      categoryWidth: 60,
                      categoryIndex: 2,
                      selectedIndex: selectedTabIndex),
                  CategoryTab(
                    categoryName: "Drinks",
                    categoryWidth: 60,
                    categoryIndex: 3,
                    selectedIndex: selectedTabIndex,
                  )
                ],
              ),
            ),
          ),
          const Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 24),
                child: Text(
                  "Pizza",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                ),
              )),
          const SizedBox(height: 8),
          Wrap( // The wrap containt all the "MenuCard" for the application with its shimmer.
            spacing: 16,
            runSpacing: 16,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: isLoading
                    ? const ShimmerBox()
                    : const MenuCard(
                        orderName: "Texas BBQ Chicken",
                        orderDescription:
                            "Preppered Texas BBQ Chicken, BBQ Sauce, Mozzarella Cheese ",
                        orderPrice: "25",
                        orderImage: "assets/images/orders/Pizza_1.png"),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: isLoading
                    ? const ShimmerBox()
                    : const MenuCard(
                        orderName: "Sausage Supreme",
                        orderDescription:
                            "Selectable skinless sausage chunks bedded on a pizaa",
                        orderPrice: "20",
                        orderImage: "assets/images/orders/Pizza_2.png"),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: isLoading
                    ? const ShimmerBox()
                    : const MenuCard(
                        orderName: "Margarita",
                        orderDescription: "THE CHEESIEST PIZZA",
                        orderPrice: "10",
                        orderImage: "assets/images/orders/Pizza_3.png"),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 24),
                child: Text(
                  "Dessets",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: isLoading
                    ? const ShimmerBox()
                    : const MenuCard(
                        orderName: "Choco Lava Cake",
                        orderDescription:
                            "Gooy thick chocolate melt covered with chocolate cake",
                        orderPrice: "16",
                        orderImage: "assets/images/orders/Dessert_!.png"),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: isLoading
                    ? const ShimmerBox()
                    : const MenuCard(
                        orderName: "Choco Bread Sticks",
                        orderDescription:
                            "Chocolate chips and chocolate sauce in a tasty over baked bread",
                        orderPrice: "18",
                        orderImage: "assets/images/orders/Dessert_2.png"),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 24),
                child: Text(
                  "Sides",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: isLoading
                    ? const ShimmerBox()
                    : const MenuCard(
                        orderName: "Chicken Wings",
                        orderDescription:
                            "with a choive of BBQ Sauce, Garlic, and Spicy Sauce",
                        orderPrice: "19",
                        orderImage: "assets/images/orders/Side_1.png"),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: isLoading
                    ? const ShimmerBox()
                    : const MenuCard(
                        orderName: "Garlic Breadsticks",
                        orderDescription:
                            "Freashly baked garlic bread sticks with cheese",
                        orderPrice: "15",
                        orderImage: "assets/images/orders/Side_2.png"),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 24),
                child: Text(
                  "Drinks",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: isLoading
                    ? const ShimmerBox()
                    : const MenuCard(
                        orderName: "Pepsi",
                        orderDescription: "Cold Family size beverage",
                        orderPrice: "6",
                        orderImage: "assets/images/orders/Drink_1.png"),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: isLoading
                    ? const ShimmerBox()
                    : const MenuCard(
                        orderName: "Garlic Breadsticks",
                        orderDescription: "Cold Family size beverage",
                        orderPrice: "6",
                        orderImage: "assets/images/orders/Drink_2.png"),
              ),
            ],
          )
        ]),
      ),
    );
  }
}
