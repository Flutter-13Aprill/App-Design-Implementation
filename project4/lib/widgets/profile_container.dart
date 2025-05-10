import 'package:flutter/material.dart';
import 'package:project4/extensions/size.dart';

class ProfileContainer extends StatelessWidget {
  const ProfileContainer({
    super.key,
    required this.setImage,
    required this.setName,
    required this.setSubsrcibers,
  });
  final String setImage;
  final String setName;
  final String setSubsrcibers;

  //here where the following streamers profiles are creeated
  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.getWidth(),
      height: context.getHeight() * 0.1,

      child: Row(
        spacing: 32,
        children: [
          //set streamer image
          Container(child: Image.asset(setImage)),

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //set streamer name
              Text(
                setName,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),

              //set Streamer Subsrcibers
              Text(
                setSubsrcibers,
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
