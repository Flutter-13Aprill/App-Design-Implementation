import 'package:flutter/material.dart';
import 'package:project4/extensions/size.dart';
import 'package:project4/screens/stream_screen.dart';

class TabStreams extends StatelessWidget {
  const TabStreams({
    super.key,
    required this.setImage,
    required this.setViewers,
  });
  final String setImage;
  final String setViewers;

//here is the streams tabs the user can click any stream and go the the stream page

  @override
  Widget build(BuildContext context) {
    //InkWell to go to the stream Page
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder:
            //will pass the stream image and viewers to the StreamScreen
                (context) =>
                    StreamScreen(setImage: setImage, setViewers: setViewers),
          ),
        );
      },
      //here where the stream image and viewers are setted in the ExploreScreen 
      child: Container(
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
        width: context.getWidth() * 0.6,
        height: context.getHeight() * 0.15,
        child: Tab(
          child: Stack(
            children: [
              Image.asset(setImage),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
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
                          Icon(Icons.visibility_outlined, color: Colors.grey),
                          Text(
                            textAlign: TextAlign.center,
                            setViewers,
                            style: TextStyle(color: Colors.white, fontSize: 14),
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
      ),
    );
  }
}
