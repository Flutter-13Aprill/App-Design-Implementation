import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ContactsWidget extends StatefulWidget {
  const ContactsWidget({super.key});

  @override
  State<ContactsWidget> createState() => _ContactsWidgetState();
}

class _ContactsWidgetState extends State<ContactsWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      backgroundColor: const Color.fromARGB(255, 236, 232, 228),
      body: Center(
        child: Container(
          width: 360,
          height: 500,

          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40),
            color: Colors.white.withOpacity(0.5),
          ),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 40),
                child: Text(
                  "BOUQUETLY",
                  style: GoogleFonts.cormorantGaramond(
                    fontSize: 50,
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(height: 20),
              Text(
                "Contacts\n",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w300),
              ),
              SizedBox(height: 10),
              InkWell(
                onTap: () {},
                child: ListTile(
                  leading: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.facebook),
                  ),
                  title: Text("www.facebook.com"),
                ),
              ),
              InkWell(
                onTap: () {},
                child: ListTile(
                  leading: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.phone),
                  ),
                  title: Text("0505148364"),
                ),
              ),
              InkWell(
                onTap: () {},
                child: ListTile(
                  leading: IconButton(onPressed: () {}, icon: Icon(Icons.mail)),
                  title: Text("Bouquetly.gmail.com"),
                ),
              ),
              InkWell(
                onTap: () {},
                child: ListTile(
                  leading: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.snapchat),
                  ),
                  title: Text("Bouquetly"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
