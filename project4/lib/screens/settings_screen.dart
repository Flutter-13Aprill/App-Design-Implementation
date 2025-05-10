import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:project4/extensions/size.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

// here where the user can start to become a streamer or have a job with us and check other options

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Center(
          child: Text('Profile', style: TextStyle(color: Colors.white)),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: context.getHeight() * 0.15,
              width: context.getWidth() * 0.35,
              decoration: BoxDecoration(
                      color: Color.fromARGB(255, 37, 40, 54),
                shape: BoxShape.circle,
              ),
              //user image
              child: Image.asset('assets/images/ghost.png'),
            ),
            SizedBox(height: 25),

            Text(
              'Change Profile Picture',
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(height: 25),
            Container(
              width: context.getWidth() * 0.75,
              height: context.getHeight() * 0.4,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: context.getWidth() * 0.73,
                    height: context.getHeight() * 0.365,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color.fromARGB(255, 37, 40, 54),
                    ),
                    child: Container(
  
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.all(8),
                            margin: EdgeInsets.fromLTRB(8, 8, 0, 0),
                            child: Row(
                              spacing: 16,
                              children: [
                                Container(
                                  width: context.getWidth() * 0.075,
                                  height: context.getHeight() * 0.033,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    color: Color.fromARGB(255, 90, 29, 202),
                                  ),
                                  child: Icon(Icons.star,color: Colors.amber,),
                                ),
                                Text(
                                  'Start Streaming',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                          
                          Divider(
                            color: const Color.fromARGB(73, 255, 255, 255),
                            thickness: 1,
                          ),
                            Container(
                            padding: EdgeInsets.all(8),
                            margin: EdgeInsets.fromLTRB(8, 8, 0, 0),
                            child: Row(
                              spacing: 16,
                              children: [
                                Container(
                                  width: context.getWidth() * 0.075,
                                  height: context.getHeight() * 0.033,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    color: Color.fromARGB(255, 90, 29, 202),
                                  ),
                                  child: Icon(FontAwesomeIcons.gamepad),
                                ),
                                Text(
                                  'Become A Moderator',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                          
                          Divider(
                            color: const Color.fromARGB(73, 255, 255, 255),
                            thickness: 1,
                          ),
                          Container(
                            padding: EdgeInsets.all(8),
                            margin: EdgeInsets.fromLTRB(8, 8, 0, 0),
                            child: Row(
                              spacing: 16,
                              children: [
                                Container(
                                  width: context.getWidth() * 0.075,
                                  height: context.getHeight() * 0.033,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    color: Color.fromARGB(255, 19, 116, 133),
                                  ),
                                  child: Icon(FontAwesomeIcons.bookAtlas,),
                                ),
                                Text(
                                  'Rules',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                          Divider(
                            color: const Color.fromARGB(73, 255, 255, 255),
                            thickness: 1,
                          ),
                          Container(
                            padding: EdgeInsets.all(8),
                            margin: EdgeInsets.fromLTRB(8, 8, 0, 0),
                            child: Row(
                              spacing: 16,
                              children: [
                                Container(
                                  width: context.getWidth() * 0.075,
                                  height: context.getHeight() * 0.033,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    color: Color.fromARGB(255, 63, 144, 190),
                                  ),
                                  child: Icon(Icons.info, color: Colors.white),
                                ),
                                Text(
                                  'information',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                          Divider(
                            color: const Color.fromARGB(73, 255, 255, 255),
                            thickness: 1,
                          ),
                          //alertdialog for the user when logging out
                          InkWell(
                            onTap: () {
                              showDialog(
                                context: context,
                                builder:
                                    (context) => AlertDialog(
                                      title: Text('We will MISS you =('),
                                      content: Text(
                                        'Stop take a break think about it We will really miss you, you can stay logged in while you are having fun on your phone take a moment to think about it',
                                      ),
                                      actions: [
                                        TextButton(
                                          onPressed: () {
                                            Navigator.of(context).pop();
                                          },
                                          child: Text('Yes'),
                                        ),
                                        TextButton(
                                          onPressed: () {
                                            Navigator.of(context).pop();
                                          },
                                          child: Text('No'),
                                        ),
                                      ],
                                    ),
                              );
                            },
                            child: Container(
                              padding: EdgeInsets.all(8),
                              margin: EdgeInsets.fromLTRB(8, 8, 0, 0),
                              child: Row(
                                spacing: 16,
                                children: [
                                  Container(
                                    width: context.getWidth() * 0.075,
                                    height: context.getHeight() * 0.033,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12),
                                      color: Color.fromARGB(255, 236, 79, 60),
                                    ),
                                    child: Icon(Icons.exit_to_app),
                                  ),
                                  Text(
                                    'Logout',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
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
