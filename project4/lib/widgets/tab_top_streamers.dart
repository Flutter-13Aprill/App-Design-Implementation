import 'package:flutter/material.dart';
import 'package:project4/extensions/size.dart';
import 'package:project4/widgets/streams_shimmer.dart';
import 'package:project4/widgets/tab_streams.dart';

class TopStreamers extends StatelessWidget {
  const TopStreamers({super.key, required this.isShimmer});
final bool isShimmer;
  @override
  Widget build(BuildContext context) {
    //here is to divide the explore screen code it will work like tab streams
    return DefaultTabController(
      length: 3,
      child: Column(children: [
            SizedBox(height: 25),
                Container(
                  width: context.getWidth() * 0.89,
                  child: Text(
                    'Trending games',
                    style: TextStyle(fontSize: 25, color: Colors.white),
                  ),
                ),
                Container(
                  width: context.getWidth(),
                  height: context.getHeight() * 0.16,
                  child: TabBar(
                    indicatorColor: Colors.transparent,
                    dividerColor: Colors.transparent,
                    isScrollable: true,
                    tabAlignment: TabAlignment.start,
                    tabs: [
               isShimmer?   StreamsShimmer():       TabStreams(
                        setImage: 'assets/images/marvel.png',
                        setViewers: '3.1k',
                      ),
              isShimmer?   StreamsShimmer():        TabStreams(
                        setImage: 'assets/images/game.png',
                        setViewers: '1k',
                      ),
               isShimmer?   StreamsShimmer():       TabStreams(
                        setImage: 'assets/images/marvel.png',
                        setViewers: '5k',
                      ),
                    ],
                  ),
                ),
      ],),
    );
  }
}