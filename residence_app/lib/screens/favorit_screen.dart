import 'package:flutter/material.dart';
import 'package:residence_app/widgets/favorite_card_shimmer_widget.dart';
import 'package:residence_app/widgets/favorite_card_widget.dart';

// This screen displays a list of user's favorite residences with a search bar.
// It also shows a shimmer loading effect for 2 seconds on initial load.
class FavoritScreen extends StatefulWidget {
  const FavoritScreen({super.key});

  @override
  State<FavoritScreen> createState() => _FavoritScreenState();
}

class _FavoritScreenState extends State<FavoritScreen> {
  // bool isClicked = false;
  // Controls whether to show shimmer loading or actual content
  bool isLoading = true;
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 2), () {
      setState(() {
        isLoading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Top section with a title and search bar
          Container(
            decoration: BoxDecoration(
              color: Color(0xff6a7d4f),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(25),
                bottomRight: Radius.circular(25),
              ),
            ),
            padding: const EdgeInsets.only(
              top: 50,
              left: 16,
              right: 16,
              bottom: 20,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Favorite Residence",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 48),
                  ],
                ),
                SizedBox(height: 16),
                SizedBox(
                  height: 45,
                  child: SearchBar(
                    elevation: WidgetStatePropertyAll(0),
                    backgroundColor: WidgetStatePropertyAll(Color(0xff8c9f71)),
                    hintText: "Search...",
                    hintStyle: WidgetStatePropertyAll(
                      TextStyle(color: Colors.white),
                    ),
                    shape: WidgetStatePropertyAll(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                    ),
                    trailing: [Icon(Icons.search, color: Colors.white)],
                  ),
                ),
              ],
            ),
          ),

          // List of favorite residence cards or shimmer placeholders while loading
          Expanded(
            child: ListView(
              padding: const EdgeInsets.only(top: 16),

              children: [
                isLoading
                    ? FavoriteCardShimmerWidget()
                    : FavoriteCardWidget(
                      imagePath: "assets/images/apartment1/living-room.png",
                      location: "Al-Muruj, Riyadh",
                      price: "1500",
                      rating: 5,
                      title: "Al-Muruj Room",
                    ),
                isLoading
                    ? FavoriteCardShimmerWidget()
                    : FavoriteCardWidget(
                      imagePath: "assets/images/apartment2/living-room.png",
                      location: "Alyasmin, Riyadh",
                      price: "2200",
                      rating: 4,
                      title: "Al-Yasmin Room",
                    ),

                isLoading
                    ? FavoriteCardShimmerWidget()
                    : FavoriteCardWidget(
                      imagePath: "assets/images/apartment3/living-room.png",
                      location: "Al-Rimal, Riyadh",
                      price: "1200",
                      rating: 3,
                      title: "Al-Rimal  Room",
                    ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
