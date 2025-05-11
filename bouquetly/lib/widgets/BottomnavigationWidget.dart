import 'package:bouquetly/screens/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:bouquetly/screens/store_screen.dart';
import 'package:bouquetly/screens/shopping_cart_screen.dart';
import 'package:bouquetly/screens/explore_screen.dart';

class BottomnavigationWidget extends StatefulWidget {
  const BottomnavigationWidget({super.key});

  @override
  State<BottomnavigationWidget> createState() => _BottomnavigationWidgetState();
}

class _BottomnavigationWidgetState extends State<BottomnavigationWidget> {
  int myindex = 0;
  List<Map<String, String>> cartItems = []; //add cart item 

  @override
  Widget build(BuildContext context) {
    final List pages = [
      ExploreScreen(),
      StoreScreen(
        onAddToCrt: (item) {
          setState(() {
            cartItems.add(item);//add to list for showing on the cart shooping 
            
          });
        },
      ),
      ShoppingCartScreen(cartitem: cartItems),//take the value of the list we add 
      ProfileScreen(),
    ];

    return Scaffold(
      body: pages[myindex],
      bottomNavigationBar: NavigationBar(
        selectedIndex: myindex,
        indicatorColor: Colors.transparent,
        backgroundColor: const Color.fromARGB(255, 236, 232, 228),
        onDestinationSelected: (index) {
          setState(() {
            myindex = index;
          });
        },
        destinations: const [
          NavigationDestination(icon: Icon(Icons.explore), label: 'Explore'),
          NavigationDestination(icon: Icon(Icons.store), label: 'Store'),
          NavigationDestination(icon: Icon(Icons.shopping_bag), label: 'Cart'),
          NavigationDestination(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}
