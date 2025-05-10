import 'package:flutter/material.dart';
import 'package:project4/extensions/size.dart';
import 'package:project4/widgets/profile_container.dart';

class FollowingScreen extends StatelessWidget {
  const FollowingScreen({super.key});

//here will show the streamer that are followed by the user

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Following', style: TextStyle(color: Colors.white)),
      ),

      body: SafeArea(
        //scorllable
        child: SingleChildScrollView(
          child: Container(
            width: context.getWidth(),
            child: Column(
              children: [
                //give every container a name subsribers and profile picture for streamers
                ProfileContainer(
                  setImage: 'assets/profile_images/jake.jpg',
                  setName: '@Jakeyosaurus',
                  setSubsrcibers: '21000 subscribers',
                ),
                SizedBox(height: 5),
                ProfileContainer(
                  setImage: 'assets/profile_images/falcon.jpg',
                  setName: '@TeamFalconsGG',
                  setSubsrcibers: '50000 subscribers',
                ),
                SizedBox(height: 5),
                ProfileContainer(
                  setImage: 'assets/profile_images/banda.jpg',
                  setName: '@BanderitaX',
                  setSubsrcibers: '78000 subscribers',
                ),
                SizedBox(height: 5),
                ProfileContainer(
                  setImage: 'assets/profile_images/oden.jpg',
                  setName: '@mohammed_oden',
                  setSubsrcibers: '20000 subscribers',
                ),
                SizedBox(height: 5),
                ProfileContainer(
                  setImage: 'assets/profile_images/mlzlz.jpg',
                  setName: '@m5aoi',
                  setSubsrcibers: '38000 subscribers',
                ),
                SizedBox(height: 5),
                ProfileContainer(
                  setImage: 'assets/profile_images/bara.jpg',
                  setName: '@Baraa',
                  setSubsrcibers: '23000 subscribers',
                ),
                SizedBox(height: 5),
                ProfileContainer(
                  setImage: 'assets/profile_images/boo.jpg',
                  setName: '@Bo3omar22',
                  setSubsrcibers: '26000 subscribers',
                ),
                SizedBox(height: 5),
                ProfileContainer(
                  setImage: 'assets/profile_images/lle.jpg',
                  setName: '@LLE_97',
                  setSubsrcibers: '20000 subscribers',
                ),
                SizedBox(height: 5),
                ProfileContainer(
                  setImage: 'assets/profile_images/opl.jpg',
                  setName: '@ioPiiLz',
                  setSubsrcibers: '45000 subscribers',
                ),
                SizedBox(height: 5),
                ProfileContainer(
                  setImage: 'assets/profile_images/slo.jpg',
                  setName: '@aBO1sLLO',
                  setSubsrcibers: '32000 subscribers',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
