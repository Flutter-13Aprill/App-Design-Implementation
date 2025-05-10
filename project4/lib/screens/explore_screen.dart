import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:project4/extensions/size.dart';
import 'package:project4/widgets/streams_shimmer.dart';
import 'package:project4/widgets/tab_games.dart';
import 'package:project4/widgets/tab_streams.dart';
import 'package:project4/widgets/tab_top_streamers.dart';

class ExploreScreen extends StatefulWidget {
  const ExploreScreen({super.key});

  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}

bool isShimmer = true;
int currentIndex = 0;
int currentIndexColor = 0;

//colors for game tab indicator tab
List<Color> currentColor = [
  Color.fromARGB(82, 40, 172, 166),
  Color.fromARGB(82, 113, 102, 255),
  Color.fromARGB(82, 234, 71, 59),
  Color.fromARGB(82, 250, 156, 30),
  Color.fromARGB(82, 156, 104, 198),
];

class _ExploreScreenState extends State<ExploreScreen> {
  @override
  Widget build(BuildContext context) {

    //give streams a shimmer for 2 seconds
    Future.delayed(Duration(seconds: 2), () {
      isShimmer = false;
      setState(() {});
    });

    return DefaultTabController(
      length: 3,
      initialIndex: 0,
      child: Scaffold(
        //drawer is here
        drawer: Drawer(
          backgroundColor: Color.fromARGB(255, 37, 40, 54),
          child: ListView(
            children: [
              ListTile(
                title: Text(
                  'Quick Access',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.online_prediction,
                  color: const Color.fromARGB(255, 136, 41, 180),
                ),
                title: Text(
                  'Live Channels',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              ListTile(
                leading: Icon(
                  FontAwesomeIcons.gift,
                  color: const Color.fromARGB(255, 255, 77, 116),
                ),
                title: Text('Gifts', style: TextStyle(color: Colors.white)),
              ),
              ListTile(
                leading: Icon(Icons.people_alt, color: const Color.fromARGB(255, 75, 68, 85)),
                title: Text('Partners', style: TextStyle(color: Colors.white)),
              ),
              ListTile(
                leading: Icon(
                  Icons.health_and_safety_sharp,
                  color: const Color.fromARGB(255, 19, 216, 85),
                ),
                title: Text('Help', style: TextStyle(color: Colors.white)),
              ),
            ],
          ),
        ),
        backgroundColor: Colors.black,
        appBar: AppBar(
          leading: Builder(
            builder: (context) {
              return IconButton(
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                icon: Icon(FontAwesomeIcons.bars, color: Colors.white),
              );
            },
          ),
          backgroundColor: Colors.black12,
          title: Text('Watch Live', style: TextStyle(color: Colors.white)),
        ),
        body: Center(
          child: Column(
            spacing: 8,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 15),
              Container(
                width: context.getWidth() * 0.8,
                child: TextField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.fromLTRB(15, 12, 0, 0),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    prefixIcon: Icon(Icons.search),
                    hintText: 'Search live channels or streamers',
                  ),
                ),
              ),

              SizedBox(height: 25),
              Container(
                width: context.getWidth() * 0.89,
                child: Text(
                  'Trending games',
                  style: TextStyle(fontSize: 25, color: Colors.white),
                ),
              ),
              //here is the tab for current streams that is going on
              Container(
                width: context.getWidth(),
                height: context.getHeight() * 0.16,
                child: TabBar(
                  indicatorColor: Colors.transparent,
                  dividerColor: Colors.transparent,
                  isScrollable: true,
                  tabAlignment: TabAlignment.start,
                  tabs: [
                    //show the stream tab after shimmer is gone
                    isShimmer
                        ? StreamsShimmer()
                        : TabStreams(
                          setImage: 'assets/images/fortnite.png',
                          setViewers: '8.1k',
                        ),
                    isShimmer
                        ? StreamsShimmer()
                        : TabStreams(
                          setImage: 'assets/images/shooting_game.png',
                          setViewers: '10k',
                        ),
                    isShimmer
                        ? StreamsShimmer()
                        : TabStreams(
                          setImage: 'assets/images/fortnite.png',
                          setViewers: '25k',
                        ),
                  ],
                ),
              ),
              SizedBox(height: 25),
              //games that are being streamed on the platform
              Container(
                width: context.getWidth() * 0.89,
                child: Text(
                  'Games',
                  style: TextStyle(fontSize: 25, color: Colors.white),
                ),
              ),
          
              Container(
                width: context.getWidth(),
                height: context.getHeight() * 0.07,
                child: DefaultTabController(
                  length: 5,
                  child: TabBar(
                    //the indicator color will change based on the game if the game them is green the indicator will be green
                    onTap: (value) {
                      currentIndexColor = value;
                      setState(() {});
                    },
                    indicatorColor: currentColor[currentIndexColor],
                    dividerColor: Colors.transparent,
                    tabAlignment: TabAlignment.start,
                    isScrollable: true,
                    tabs: [
                      TabGames(
                        setImage: 'assets/icons/lol_icon.png',
                        setColor: Color.fromARGB(82, 40, 172, 166),
                      ),
                      TabGames(
                        setImage: 'assets/icons/valorant_icon.png',
                        setColor: Color.fromARGB(82, 113, 102, 255),
                      ),
                      TabGames(
                        setImage: 'assets/icons/dota_icon.png',
                        setColor: Color.fromARGB(82, 234, 71, 59),

                        setScale: 1.75,
                      ),
                      TabGames(
                        setImage: 'assets/icons/overwatch2_icon.png',
                        setColor: Color.fromARGB(82, 250, 156, 30),
                      ),
                      TabGames(
                        setImage: 'assets/icons/apex_icon.png',
                        setColor: Color.fromARGB(82, 156, 104, 198),
                      ),
                    ],
                  ),
                ),
              ),
              //top streams is here
              TopStreamers(isShimmer: isShimmer),
            ],
          ),
        ),
      ),
    );
  }
}
