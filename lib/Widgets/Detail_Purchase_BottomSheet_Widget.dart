import 'package:flutter/material.dart';

class DetailPurchaseBottomSheetWidget extends StatelessWidget {
  final double price;
  final String description;

  // Constructor accepting price and description
  const DetailPurchaseBottomSheetWidget({
    Key? key,
    required this.price,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: 0.45,
      minChildSize: 0.3,
      maxChildSize: 0.75,
      builder:
          (_, controller) => Container(
            decoration: BoxDecoration(
              color: Color(0xFF1E1E2F),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(24),
                topRight: Radius.circular(24),
              ),
            ),
            padding: EdgeInsets.all(20),
            child: ListView(
              controller: controller,
              children: [
                // Draggable handle
                Center(
                  child: Container(
                    width: 50,
                    height: 5,
                    decoration: BoxDecoration(
                      color: Colors.grey[600],
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                SizedBox(height: 20),

                // Title
                Text(
                  'Confirm Purchase',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 20),

                // Description text
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Text(
                    description,
                    style: TextStyle(color: Colors.white70, fontSize: 16),
                  ),
                ),
                SizedBox(height: 20),

                // Price display
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Price:',
                      style: TextStyle(color: Colors.white70, fontSize: 16),
                    ),
                    Text(
                      '\$${price.toStringAsFixed(2)}',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.amberAccent,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),

                // Payment method title
                Text(
                  'Payment Method',
                  style: TextStyle(color: Colors.white70, fontSize: 16),
                ),
                SizedBox(height: 12),

                // Payment method 1: Credit/Debit card
                Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Color(0xFF836FFF), Color(0xFFBFA0FF)],
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: ListTile(
                    leading: Icon(Icons.credit_card, color: Colors.white),
                    title: Text(
                      'Credit/Debit Card',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    onTap: () {},
                  ),
                ),
                SizedBox(height: 12),

                // Payment method 2: Wallet / UPI
                Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Colors.tealAccent, Colors.lightBlueAccent],
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: ListTile(
                    leading: Icon(
                      Icons.account_balance_wallet,
                      color: Colors.black87,
                    ),
                    title: Text(
                      'Wallet / UPI',
                      style: TextStyle(
                        color: Colors.black87,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    onTap: () {},
                  ),
                ),
                SizedBox(height: 25),

                // Add to Cart button
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text("Added to cart!",style: TextStyle(fontSize: 24),),
                        backgroundColor: Colors.green[600],
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.amberAccent,
                    foregroundColor: Colors.black,
                    padding: EdgeInsets.symmetric(vertical: 14),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    elevation: 4,
                  ),
                  child: Text(
                    'Add to Cart',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
    );
  }
}
