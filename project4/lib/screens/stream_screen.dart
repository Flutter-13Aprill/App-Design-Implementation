import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:project4/extensions/size.dart';
import 'package:project4/widgets/bottom_sheet_stream.dart';

//after Clicking on any stream the user will be here
//they can watch the stream like it or follow or even chat with users

class StreamScreen extends StatelessWidget {
  const StreamScreen({
    super.key,
    required this.setImage,
    required this.setViewers,
  });

  final String setImage;
  final String setViewers;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,

      body: SafeArea(
        child: Center(
          child: Container(
            width: context.getWidth(),
            height: context.getHeight(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                //here is the streaming video with number of viewrs
                Container(
                  width: context.getWidth(),
                  height: context.getHeight() * 0.3,
                  child: Stack(
                    children: [
                      Container(
                        width: context.getWidth(),
                        child: Image.asset(setImage, fit: BoxFit.fill),
                      ),

                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          spacing: 16,
                          children: [
                            Container(
                              alignment: Alignment.center,
                              width: context.getWidth() * 0.11,
                              height: context.getHeight() * 0.029,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                color: Color.fromARGB(255, 235, 87, 87),
                              ),
                              child: Text(
                                textAlign: TextAlign.center,
                                'LIVE',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                            Container(
                              alignment: Alignment.center,
                              width: context.getWidth() * 0.18,
                              height: context.getHeight() * 0.029,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                color: Color.fromARGB(157, 51, 51, 51),
                              ),
                              child: Row(
                                spacing: 8,
                                mainAxisAlignment: MainAxisAlignment.center,

                                children: [
                                  Icon(
                                    Icons.visibility_outlined,
                                    color: Colors.grey,
                                  ),
                                  Text(
                                    textAlign: TextAlign.center,
                                    setViewers,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: context.getWidth() * 0.86,
                  height: context.getHeight() * 0.076,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Streamer Name',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'Streaming Now',
                            style: TextStyle(
                              color: const Color.fromARGB(255, 224, 184, 4),
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      //option to follow and like
                      Row(
                        spacing: 32,
                        children: [
                          Icon(
                            Icons.favorite,
                            color: Colors.redAccent,
                            size: 35,
                          ),

                          Container(
                            width: context.getWidth() * 0.24,
                            decoration: BoxDecoration(
                              color: Colors.amber,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: TextButton(
                              onPressed: () {},
                              child: Text(
                                'Follow',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Divider(color: Colors.grey, thickness: 2),
                //description for the streamer to write in
                Container(
                  margin: EdgeInsets.all(16),
                  width: context.getWidth(),
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 37, 40, 54),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  height: context.getHeight() * 0.3,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Stream Deatails',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 16),
                        Text(
                          'Here where the streamer can type the deatiles for the stream',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 16),
                        //streamer social media
                        Text(
                          'Social Media',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 25),
                        Row(
                          spacing: 16,
                          children: [
                            Icon(FontAwesomeIcons.x),
                            Text(
                              '@username',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                        SizedBox(height: 5),

                        Row(
                          spacing: 16,
                          children: [
                            Icon(
                              FontAwesomeIcons.instagram,
                              color: Colors.pinkAccent,
                            ),
                            Text(
                              '@username',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                        SizedBox(height: 5),

                        Row(
                          spacing: 16,
                          children: [
                            Icon(
                              FontAwesomeIcons.youtube,
                              color: Colors.redAccent,
                            ),
                            Text(
                              '@username',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                        SizedBox(height: 5),

                        Row(
                          spacing: 16,
                          children: [
                            Icon(FontAwesomeIcons.tiktok, color: Colors.white),
                            Text(
                              '@username',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                //opens bottomsheet with chat on it and the user can write in it
                BottomSheetStream(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
