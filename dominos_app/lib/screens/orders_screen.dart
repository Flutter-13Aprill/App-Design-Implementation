import 'package:dominos_app/screens/menu_screen.dart';
import 'package:dominos_app/widgets/collections/buttom_navigation_screens.dart';
import 'package:dominos_app/widgets/colors/dominos_colors.dart';
import 'package:dominos_app/widgets/orders_screen/order_template.dart';
import 'package:flutter/material.dart';


// "OrderScreen" is where the user can access his pervious orders. 
class OrdersScreen extends StatefulWidget {
  const OrdersScreen({super.key});

  @override
  State<OrdersScreen> createState() => _OrdersScreenState();
}

class _OrdersScreenState extends State<OrdersScreen> {
  int currentNavigationIndex = 1; // "OrderScreen" index on the "buttomNavigationBar"
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(240, 237, 243, 255),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 0, 100, 145),
                leading: IconButton(
            onPressed: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => const MenuScreen()));
            },
            icon: const Icon(
              Icons.arrow_back_outlined,
              color: Colors.white,
            )),
        title: const Text(
          "Order History",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          onTap: (value) {
            setState(() {
              currentNavigationIndex =
                  value; // Here given the index for the buttom navigation
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: ((context) =>
                          navigationScreensList[currentNavigationIndex])));
            });
          },
          unselectedItemColor: dominosBlue,
          selectedItemColor: dominosRed,
          currentIndex: currentNavigationIndex,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home_outlined,
                ),
                label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_bag_outlined), label: "Orders"),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_outlined), label: "Profile"),
          ]),


      body: const SingleChildScrollView(
        child: Column( // the collection of orders is displayed using this column and the orders are based on the Class "OrderTemplate"
          children: [
            SizedBox(height: 16),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: OrderTemplate(
                ordernNum: "2260",
                orderDetails: "2 Sausage Supreme Pizza + 1 Texas BBQ Chinken",
                orderPrice: "125",
              ),
            ),
            SizedBox(height: 16),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: OrderTemplate(
                ordernNum: "2261",
                orderDetails: "2 Sausage Supreme Pizza + 1 Texas BBQ Chinken",
                orderPrice: "125",
              ),
            ),
            SizedBox(height: 16),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: OrderTemplate(
                ordernNum: "2262",
                orderDetails: "2 Sausage Supreme Pizza + 1 Texas BBQ Chinken",
                orderPrice: "125",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
