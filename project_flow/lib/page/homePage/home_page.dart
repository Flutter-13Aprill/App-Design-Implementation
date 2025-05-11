import 'package:flutter/material.dart';
import 'package:project_flow/controller/home_controller.dart';
import 'package:project_flow/page/widgets/navbar_widget/navBar_widget.dart';
import 'package:project_flow/page/widgets/squarIconCountainer_widget.dart';
import 'package:project_flow/page/widgets/tabview/tabview_card_widget.dart';
import 'package:project_flow/page/widgets/taskCard.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  HomeController controller = HomeController();
  refresh() {
    print(controller.currentPageIndex);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      bottomNavigationBar: navBarWidget(controller, refresh, context),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          "Friday, 26",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Squariconcountainer(
              back: false,
              selectedIcon: Icons.notifications_none_rounded,
            ),
          ),
        ],
      ),
      drawer: Drawer(),

      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 16),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Hello,"),
                  Text(
                    "Let’s make a\nhabits together  🙌",
                    style: TextStyle(fontSize: 34, fontWeight: FontWeight.bold),
                  ),
                  DefaultTabController(
                    length: 3,
                    child: SizedBox(
                      height: 200,
                      child: TabBarView(
                        physics: BouncingScrollPhysics(),
                        children: [
                          TabviewCardWidget(
                            title: 'Application Design',
                            subTitle: 'UI Design Kit',
                            persentage: 1,
                          ),
                          TabviewCardWidget(
                            title: 'Application Design',
                            subTitle: 'UI Design Kit',
                            persentage: 1,
                          ),
                          TabviewCardWidget(
                            title: 'Application Design',
                            subTitle: 'UI Design Kit',
                            persentage: 1,
                          ),
                        ],
                      ),
                    ),
                  ),
                  ListTile(
                    title: Text("In Progress"),
                    trailing: Icon(Icons.arrow_forward_ios_rounded),
                  ),
                  Taskcard(title: "Productivity Mobile App", subTitle: "Create Detail Booking"),
                  Taskcard(title: "Banking Mobile App", subTitle: "Revision Home Page"),
                  Taskcard(title: "Online Course", subTitle: "Working On Landing Page"),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
