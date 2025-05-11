import 'package:flutter/material.dart';
import 'package:shopmate/extensions/screens/get_size_screen.dart';

class SearchScreen extends StatelessWidget {
  ///search of item or list
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: Text('Search'),

        bottom: PreferredSize(
          preferredSize: Size.fromHeight(60),
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Align(
              alignment: Alignment.centerLeft,
              // SearchBar
              child: SearchBar(
                elevation: WidgetStateProperty.all(0.0),
                backgroundColor: WidgetStateProperty.all(
                  Theme.of(context).colorScheme.surface,
                ),
                hintText: 'Search',
                trailing: [Icon(Icons.search)],
              ),
            ),
          ),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: context.getHeight() * 0.04,
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primary,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    offset: Offset(0, 5),
                    blurRadius: 5,
                  ),
                ],
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                  bottomRight: Radius.circular(50),
                ),
              ),
            ),
            //image
            Image.asset(
              'assets/images/cart.png',
              width: context.getWidth() + 50,
              height: context.getHeight() / 1.8,
            ),
          ],
        ),
      ),
    );
  }
}
