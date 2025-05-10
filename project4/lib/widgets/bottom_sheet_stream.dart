import 'package:flutter/material.dart';
import 'package:project4/extensions/size.dart';
import 'package:project4/widgets/dummy_chat.dart';

class BottomSheetStream extends StatelessWidget {
  const BottomSheetStream({super.key});

//bottom sheet for users to chat with streamers and text them
  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.getHeight() * 0.18,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: context.getHeight() * 0.03,
            child: IconButton(
              onPressed: () {
                showModalBottomSheet(
                  isScrollControlled: true,
                  barrierColor: Colors.transparent,
                  context: context,
                  builder: (BuildContext context) {
                    return Container(
                      decoration: BoxDecoration(
                      color: Color.fromARGB(255, 37, 40, 54),
                        borderRadius: BorderRadius.circular(25),
                      ),
                      width: context.getWidth(),
                      height: context.getHeight() * 0.69,
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          children: [
                            Container(
                              height: context.getHeight() * 0.57,
                              child: SingleChildScrollView(
                                child: Column(
                                  spacing: 16,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                //calls for mulit chat dummies
                                 DummyChat()
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: 5,),
                            //the user option to write to the streamer
                            Container(
                              width: context.getWidth() * 0.8,
                              height: context.getHeight() * 0.065,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                              ),
                              child: TextField(
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  hintText: 'Say something ...',
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                );
              },
              //button icon to open chat
              icon: Icon(Icons.keyboard_arrow_up_sharp, color: Colors.grey),
            ),
          ),
          Text('Chat', style: TextStyle(color: Colors.grey)),
        ],
      ),
    );
  }
}
