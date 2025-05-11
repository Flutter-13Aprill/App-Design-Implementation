import 'package:flutter/material.dart';
// import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class ShoppingCartScreen extends StatefulWidget {
  const ShoppingCartScreen({super.key, required this.cartitem});

  final List<Map<String, String>>
  cartitem; //list take the value we stor it when the user press the Addtocart

  @override
  State<ShoppingCartScreen> createState() => _ShoppingCartScreenState();
}

class _ShoppingCartScreenState extends State<ShoppingCartScreen> {
  @override
  Widget build(BuildContext context) {
    double total = 0.0;
    for (var item in widget.cartitem) {
      // to sum the total from the list we save when predd add to cart
      total += double.parse(item['price']!);
    }
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 236, 232, 228),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 236, 232, 228),
        title: Padding(
          padding: const EdgeInsets.only(top: 16),
          child: ListTile(
            title: Text(
              "My Bag ",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Divider(),
              Expanded(
                child: ListView.builder(
                  itemCount: widget.cartitem.length,
                  itemBuilder: (context, index) {
                    final item = widget.cartitem[index];
                    return ListTile(
                      leading: Image.asset(
                        item['image']!,
                        width: 70,
                        height: 80,
                      ),
                      title: Text(item['name']!),
                      subtitle: Text("${item['price']} SAR"),
                      trailing: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.close),
                      ),
                    );
                  },
                ),
              ),

              Text(
                'Total:${total.toStringAsFixed(2)}SAR',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 30),

              ElevatedButton( //add discount button
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 255, 255, 255),
                ),
                onPressed: () {
                  showModalBottomSheet(
                    context: context,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(20),
                      ),
                    ),
                    backgroundColor: const Color.fromARGB(
                      255,
                      236,
                      232,
                      228,
                    ).withOpacity(0.9),
                    builder: (context) {
                      return Padding(
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              "Enter Discount Code",
                              style: TextStyle(fontSize: 18),
                            ),
                            SizedBox(height: 10),
                            TextField(
                              decoration: InputDecoration(
                                hintText: "Discount Code",
                                border: OutlineInputBorder(),
                              ),
                            ),
                            SizedBox(height: 10),
                            TextButton(
                              onPressed: () {},
                              child: Text(
                                "Apply",
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  );
                },
                child: Text(
                  "Add Discount",
                  style: TextStyle(color: Colors.black),
                ),
              ),

              ElevatedButton(//checout button
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 255, 255, 255),
                ),
                onPressed: () {
                  showModalBottomSheet(
                    context: context,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(20),
                      ),
                    ),
                    backgroundColor: const Color.fromARGB(
                      255,
                      236,
                      232,
                      228,
                    ).withOpacity(0.9),

                    builder: (context) {
                      return Padding(
                        padding: EdgeInsets.all(20),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'Total:${total.toStringAsFixed(2)}SAR',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 12),
                            Text(" pay with ", style: TextStyle(fontSize: 20)),

                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(//pay method
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  InkWell(
                                    onTap: () {},
                                    child: Image.asset(
                                      "images/applepay.png",
                                      height: 70,
                                      width: 70,
                                    ),
                                  ),
                                  SizedBox(width: 16),
                                  InkWell(
                                    onTap: () {},
                                    child: Image.asset(
                                      "images/visacard.png",
                                      height: 70,
                                      width: 70,
                                    ),
                                  ),
                                  SizedBox(width: 16),
                                  InkWell(
                                    onTap: () {},
                                    child: Image.asset(
                                      "images/madacard.png",
                                      height: 70,
                                      width: 70,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  );
                },
                child: Text("Checkout", style: TextStyle(color: Colors.black)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
