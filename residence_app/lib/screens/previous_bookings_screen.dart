import 'package:flutter/material.dart';
import 'package:residence_app/widgets/booking_card_shimmer_widget.dart';
import 'package:residence_app/widgets/booking_card_widget.dart';

// Screen showing a list of user's previous bookings with loading shimmer and search bar

class PreviousBookingsScreen extends StatefulWidget {
  const PreviousBookingsScreen({super.key});

  @override
  State<PreviousBookingsScreen> createState() => _PreviousBookingsScreenState();
}

class _PreviousBookingsScreenState extends State<PreviousBookingsScreen> {
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
      backgroundColor: Colors.white,
      body: Column(
        children: [
          // Header section with title and search bar
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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    BackButton(color: Colors.white),
                    Text(
                      "Previous Bookings",
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
                    hintText: "Search bookings...",
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

          // List of bookings
          Expanded(
            child: ListView(
              padding: const EdgeInsets.only(top: 16),
              children: [
                // First booking card (with shimmer while loading)
                isLoading
                    ? BookingCardShimmerWidget()
                    : BookingCardWidget(
                      imagePath: "assets/images/apartment3/living-room.png",
                      location: "Al-Malaga, Riyadh",
                      price: "2500",
                      rating: 4,
                      title: "Al-Malaga Room",
                      bookingDate: '7 May - 7 June',
                      isActive: true,
                    ),

                // Second booking card
                isLoading
                    ? BookingCardShimmerWidget()
                    : BookingCardWidget(
                      imagePath: "assets/images/apartment3/bedroom.png",
                      location: "Al-Muruj, Riyadh",
                      price: "2000",
                      rating: 3,
                      title: "Al-Muruj Room",
                      bookingDate: '1 Apr - 1 May',
                      isActive: false,
                    ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
