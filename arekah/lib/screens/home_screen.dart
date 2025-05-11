import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:arekah/screens/profile_screen.dart';
import 'package:arekah/widgets/botton.dart';
import 'package:arekah/widgets/card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2), () {
      setState(() {
        _isLoading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          centerTitle: true,
          title: const Text(
            'A R E K A H',
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.w900,
              color: Colors.black,
            ),
          ),
          backgroundColor: Colors.white,
        ),
        body: ListView(
          children: [
            Column(
              children: [
                const SizedBox(height: 24),
                SizedBox(
                  height: 90,
                  child: TabBar(
                    isScrollable: true,
                    dividerHeight: 0,
                    labelPadding: EdgeInsets.zero,
                    indicatorColor: Colors.transparent,
                    tabs: [
                      _buildShimmerTab('assets/All.png'),
                      _buildShimmerTab('assets/bed.png'),
                      _buildShimmerTab('assets/couchs.png'),
                      _buildShimmerTab('assets/lamps.png'),
                      _buildShimmerTab('assets/tvs.png'),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                _isLoading
                    ? _buildShimmerCard()
                    : GestureDetector(
                        onTap: () {
                          showModalBottomSheet(
                            context: context,
                            isScrollControlled: true,
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
                            ),
                            builder: (BuildContext context) {
                              return Container(
                                padding: const EdgeInsets.all(16),
                                height: MediaQuery.of(context).size.height * 0.5,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            Image.asset('assets/stars.png'),
                                            const Text('4.8'),
                                          ],
                                        ),
                                        const Text(
                                          '\$ 180',
                                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                    const Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        'Table and chair set',
                                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    Image.asset('assets/colors.png'),
                                    const Text(
                                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit...'
                                    ),
                                    customBotton('Add to cart', context)
                                  ],
                                ),
                              );
                            },
                          );
                        },
                        child: cardDetails('assets/img1.png', 'Table and chair set', context),
                      ),
                      SizedBox(height: 32,),
                if (!_isLoading) ...[
                  cardDetails('assets/2.png', 'Modern dining room set', context),
                  SizedBox(height: 32,),
                  cardDetails('assets/4.png', 'Modern couch for\nliving room', context),
                  SizedBox(height: 32,),
                ]
              ],
            )
          ],
        ),
        bottomNavigationBar: BottomAppBar(
          height: 70,
          color: const Color.fromARGB(255, 103, 93, 80),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {},
                  child: Ink.image(
                    image: const AssetImage('assets/exploreWhite.png'),
                    width: 40,
                    height: 40,
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const ProfileScreen()),
                    );
                  },
                  child: Ink.image(
                    image: const AssetImage('assets/profile.png'),
                    width: 40,
                    height: 40,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildShimmerTab(String imgPath) {
    return _isLoading
        ? Shimmer.fromColors(
            baseColor: Colors.grey.shade300,
            highlightColor: Colors.grey.shade100,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Container(width: 90, height: 60, color: Colors.white),
            ),
          )
        : Image.asset(imgPath, width: 90);
  }

  Widget _buildShimmerCard() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Shimmer.fromColors(
        baseColor: Colors.grey.shade300,
        highlightColor: Colors.grey.shade100,
        child: Container(
          width: double.infinity,
          height: 200,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
          ),
        ),
      ),
    );
  }
}
