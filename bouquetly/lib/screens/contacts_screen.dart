import 'package:bouquetly/exstenshon/exstenshon.dart';
import 'package:bouquetly/widgets/aboutys_widgets.dart';
import 'package:bouquetly/widgets/contacts_widget.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ContactsScreen extends StatefulWidget {
  const ContactsScreen({super.key});

  @override
  State<ContactsScreen> createState() => _ContactsScreenState();
}

final PageController _controler = PageController();

class _ContactsScreenState extends State<ContactsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 236, 232, 228),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 236, 232, 228),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: context.gethight() / 1.3,//exstenshon
              child: PageView(
                controller: _controler,
                children: [AboutysWidgets(), ContactsWidget()],
              ),
            ),

            SizedBox(height: 20),
            SmoothPageIndicator(
              controller: _controler,
              count: 2,
              effect: ExpandingDotsEffect(
                activeDotColor: const Color.fromARGB(255, 194, 190, 187),
                dotColor: Colors.grey,
                dotHeight: 10,
                dotWidth: 10,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
