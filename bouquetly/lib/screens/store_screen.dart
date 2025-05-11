import 'package:bouquetly/widgets/shimmeritem.dart';
import 'package:flutter/material.dart';
import '../widgets/category_widget.dart';
import '../widgets/item_widget.dart';
import 'package:google_fonts/google_fonts.dart';

class StoreScreen extends StatefulWidget {
  final Function(Map<String, String>) onAddToCrt;
  const StoreScreen({super.key, required this.onAddToCrt});

  @override
  State<StoreScreen> createState() => _StoreScreenState();
}

class _StoreScreenState extends State<StoreScreen> {
  bool isLoading = true;
  final List<Map<String, String>> bouquets = [
    {'image': "images/flower.png", "name": "Lily Charm", "price": "50"},
    {'image': "images/exbo.png", "name": "Pink Tulip", "price": "50"},
    {'image': "images/boqetex.png", "name": "Blush Lily", "price": "55"},
    {'image': "images/boqet3.png", "name": "Rose Charm", "price": "40"},
    {'image': "images/boxbo.png", "name": "pink Rose", "price": "50"},
    {'image': "images/vase.png", "name": "Vasa Bloom", "price": "150"},
  ];
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 1), () {
      setState(() {
        isLoading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 236, 232, 228),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 236, 232, 228),
        title: Text(
          "BOUQUETLY",
          style: GoogleFonts.cormorantGaramond(
            fontSize: 50,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        children: [
          const SizedBox(height: 40),
          SearchBar(
            backgroundColor: const WidgetStatePropertyAll(Colors.white),
            hintText: 'Search for a Bouquet',
            elevation: const WidgetStatePropertyAll(0),
            shape: WidgetStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
                side: const BorderSide(color: Colors.grey, width: 1.5),
              ),
            ),
          ),
          const SizedBox(height: 20),
          SizedBox(
            height: 100,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: const [
                CategoryWidget(label: "Wrapped Bouquets"),
                CategoryWidget(label: "Box Bouquets"),
                CategoryWidget(label: "Basket Bouquets"),
                CategoryWidget(label: "Glass Vase"),
              ],
            ),
          ),
          const SizedBox(height: 20),
          GridView.count(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            crossAxisCount: 2,
            crossAxisSpacing: 16,
            mainAxisSpacing: 16,
            childAspectRatio: 0.7,
            children:
                isLoading
                    ? List.generate(6, (i) => BouquetShimmerCard())
                    : bouquets.map((b) {
                      return ItemWidget(
                        image: b['image']!,
                        name: b['name']!,
                        price: b['price']!,
                        onAttToCrt: widget.onAddToCrt,
                      );
                    }).toList(),
          ),
        ],
      ),
    );
  }
}
