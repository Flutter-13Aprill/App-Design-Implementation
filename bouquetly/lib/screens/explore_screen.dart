import 'package:bouquetly/screens/about_us_screen.dart';
import 'package:bouquetly/screens/contacts_screen.dart';
import 'package:bouquetly/exstenshon/exstenshon.dart'; //extenshon
import 'package:bouquetly/widgets/explore_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart'; //library
import 'package:carousel_slider/carousel_slider.dart'; //library

class ExploreScreen extends StatefulWidget {
  const ExploreScreen({super.key});

  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 247, 245, 244),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 236, 232, 228),
        title: Text(
          "BOUQUETLY",
          style: GoogleFonts.cormorantGaramond(
            fontSize: 49,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
      ),
      drawer: Drawer(
        backgroundColor: const Color.fromARGB(255, 247, 245, 244),
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              child: Row(
                children: [
                  CircleAvatar(radius: 30, backgroundColor: Colors.white),
                  SizedBox(width: 20),
                  Text("Raghad Alsaykhain"),
                ],
              ),
            ),

            ListTile(
              leading: Icon(Icons.info),
              title: Text("About Us"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AboutUsScreen()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.info),
              title: Text("Contacts"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ContactsScreen()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.inventory),
              title: Text('Your shipment'),
              onTap: () {},
            ),
          ],
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: ListView(
          children: [
            SizedBox(height: 20),
            SizedBox(
              height: 40,
              child: SearchBar(
                //SearchBar
                backgroundColor: WidgetStatePropertyAll(Colors.white),
                hintText: 'Search for a Bouqet',
                elevation: WidgetStatePropertyAll(0),
                shape: WidgetStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                    side: BorderSide(color: Colors.grey, width: 1.5),
                  ),
                ),
              ),
            ),
            SizedBox(height: 39),
            Text(
              "New",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w400),
            ),
            SizedBox(height: 10),
            Container(
              height: context.gethight() / 2.9,
              width: context.getWidth() / 1.32,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: const Color.fromARGB(255, 247, 245, 244),
              ),
              child: CarouselSlider(
                //library
                items: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      "images/Bouquet1.jpg",
                      fit: BoxFit.contain,
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      "images/Bouquet2.jpg",
                      fit: BoxFit.cover,
                    ),
                  ),

                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset("images/tulep.jpg", fit: BoxFit.cover),
                  ),

                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset("images/bokeh5.jpg", fit: BoxFit.cover),
                  ),

                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset("images/bokeh5.jpg", fit: BoxFit.cover),
                  ),
                ],
                options: CarouselOptions(
                  height: 350,
                  autoPlay: true,
                  autoPlayInterval: Duration(seconds: 8),
                  autoPlayAnimationDuration: Duration(milliseconds: 900),
                  viewportFraction: 2,
                ),
              ),
            ),
            SizedBox(height: 30),
            Text(
              "Most Popular",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w400),
            ),
            SizedBox(height: 10),

            ExploreItemWidget(
              Name: " White Tulip ",
              image: "images/boqet.png",
              discription:
                  "A symbol of purity and\npeace.Perfect for fresh,\nelegant moments.",
            ),
            ExploreItemWidget(
              Name: "Pink Spray\nRoses",
              image: "images/exploreboqe.png",
              discription: "Soft and sweet.Expresses \nlove and gentle care.",
            ),
          ],
        ),
      ),
    );
  }
}
