import 'package:flutter/material.dart';

class ItemWidget extends StatefulWidget {
  final String image;
  final String name;
  final String price;
  final Function(Map<String, String>) onAttToCrt;

  const ItemWidget({//constractror
    super.key,
    required this.image,
    required this.name,
    required this.price,
    required this.onAttToCrt,
  });

  @override
  State<ItemWidget> createState() => _ItemWidgetState();
}

class _ItemWidgetState extends State<ItemWidget> {
  @override
  Widget build(BuildContext context) { //take the value from the  store screen to build 
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(color: Colors.grey.withOpacity(0.1), blurRadius: 10),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(20)),
            child: Image.asset(widget.image, height: 120, fit: BoxFit.cover),
          ),
          Padding(
            padding: const EdgeInsets.all(6),
            child: Column(
              children: [
                SizedBox(height: 2),
                Text(widget.name, style: const TextStyle(fontSize: 16)),
                const SizedBox(height: 2),
                Text(
                  "${widget.price} SAR",
                  style: TextStyle(color: Colors.grey[700]),
                ),
                const SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.favorite_border,
                        color: Color(0xFFB6AFA9),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        widget.onAttToCrt({ //take the value for name image and price store on the function 
                          'image': widget.image,
                          'name': widget.name,
                          'price': widget.price,
                        });
                      },
                      child: const Text(
                        "Add to Cart",
                        style: TextStyle(
                          color: Color(0xFFB6AFA9),
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
