import 'package:flutter/material.dart';

import 'package:project_flow/controller/home_controller.dart';
import 'package:project_flow/page/widgets/navbar_widget/navBar_widget.dart';
import 'package:project_flow/page/widgets/shimmer_widget/shimmer_avatar.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({
    super.key,
    required this.controller,
    required this.refresh,
  });
  final HomeController controller;
  final Function refresh;

  @override
  State<ProfilePage> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfilePage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 2), () {
      widget.controller.isLoadingAvatar = false;
      setState(() {});
      ;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Center(
          child: Text(
            "Profile",
            style: TextStyle(
              fontSize: 18,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        actions: [SizedBox(width: 50)],
      ),
      bottomNavigationBar: navBarWidget(
        widget.controller,
        widget.refresh,
        context,
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 40),

            widget.controller.isLoadingAvatar
                ? shimmerAvatarWidget()
                : CircleAvatar(
                  minRadius: 80,

                  backgroundColor:const Color.fromARGB(255, 214, 190, 231),
                  child: Image.asset(
                    width: 100,
                    height: 100,
                    
                    "assets/images/avatar.png",
                  ),
                ),
            SizedBox(height: 15),
            Text(
              "Change Profile",
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
            Container(
              width: 360,
              height: 333,
              
              margin: EdgeInsets.only(top: 28),
              padding: EdgeInsets.all(18),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color.fromARGB(255, 214, 190, 231),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "name: jorgena armani ",
                    style: TextStyle(fontSize: 18, color: Colors.black),
                  ),
                  Text(
                    "age: 30 ",
                    style: TextStyle(fontSize: 18, color: Colors.black),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
