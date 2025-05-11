import 'package:flutter/material.dart';
import 'package:shopmate/extensions/screens/get_size_screen.dart';
import 'package:shimmer/shimmer.dart';
import 'package:shopmate/widgets/build_list_tile.dart';

class ProfileScreen extends StatefulWidget {
  ///Displays a profile page with shimmer loading effect
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  bool isEnabled = true;
  @override
  void initState() {
    super.initState();
    // Delay to simulate loading, then disable shimmer effect
    Future.delayed(Duration(seconds: 2), () {
      isEnabled = !isEnabled;
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),

      body: Center(
        child: Column(
          children: [
            // Container for the profile header
            Container(
              width: double.infinity,
              height: context.getHeight() * 0.10,
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primary,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    offset: Offset(0, 5),
                    blurRadius: 5,
                  ),
                ],
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(50),
                ),
              ),
            ),
            SizedBox(height: 16),

            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                spacing: 8,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  CircleAvatar(
                    radius: 60,
                    backgroundColor: Theme.of(context).colorScheme.onSurface,
                    backgroundImage: AssetImage('assets/images/profile.png'),
                  ),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,

                    children: [
                      Text('Lamya Alsuhaibani'),
                      Text('Lamyaalsuhaibani@gmail'),
                    ],
                  ),
                ],
              ),
            ),
            // Profile options section (with shimmer effect initially)
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  isEnabled
                      // If isEnabled is true show shimmer effect
                      ? Shimmer.fromColors(
                        enabled: isEnabled,
                        baseColor: Colors.grey.shade400,
                        highlightColor: Colors.grey.shade200,
                        child: Column(
                          children: [
                            Container(height: 50, color: Colors.grey),
                            Divider(height: 5),
                            Container(height: 50, color: Colors.grey),
                            Divider(height: 5),
                            Container(height: 50, color: Colors.grey),
                            Divider(height: 5),
                          ],
                        ),
                      )
                      : // Once isEnabled is false show the actual content
                      Column(
                        children: [
                          SizedBox(
                            child: BuildListTile(titleText: 'Change the name'),
                          ),
                          Divider(height: 5),
                          SizedBox(
                            child: BuildListTile(titleText: 'Change the email'),
                          ),
                          Divider(height: 5),
                          SizedBox(
                            child: BuildListTile(
                              titleText: 'Change the password',
                            ),
                          ),
                          Divider(height: 5),
                        ],
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
