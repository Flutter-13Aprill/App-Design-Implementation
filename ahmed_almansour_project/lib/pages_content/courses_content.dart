import 'package:ahmed_almansour_project/coustome_wedgets/course_container.dart';
import 'package:flutter/material.dart';
import 'package:ahmed_almansour_project/tools/colors/colors.dart';
import 'package:ahmed_almansour_project/classes/shimmer.dart';
import 'package:ahmed_almansour_project/Extensions_screen/screen_size.dart';
class CoursesContent extends StatefulWidget {
  const CoursesContent({super.key});

  @override
  State<CoursesContent> createState() => _CoursesContentState();
}

class _CoursesContentState extends State<CoursesContent> {
    bool isLoading = true;

  @override
  void initState() {
    super.initState();
    //make delay for shimmer
    Future.delayed(Duration(seconds: 5), () {
      setState(() {
        isLoading = false;
      });
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      home: Scaffold(
      backgroundColor: whitegray,appBar: AppBar(backgroundColor: whitegray,centerTitle: true,title: Text('Coursa'),),body:
      Column(children: [
          SizedBox(
                height: context.getheight() * 0.65,
                child: GridView.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 1,
                  mainAxisSpacing: 1,
                  childAspectRatio: 0.70,
                  children: isLoading
                  //simmer effect
                      ? List.generate(4, (index) => buildShimmerItem(context))
                      : [ CourseContainer(imagePath: 'assets/images/mobile.webp', title: 'Mobile maintance course', subtitle: 'Fahad alazmy'),
                      CourseContainer(imagePath: 'assets/images/app_programing.png', title: 'App Programming course', subtitle: 'Fahad alazmy'),
                      CourseContainer(imagePath: 'assets/images/hardwere.jpg', title: 'Hardwere maintance course', subtitle: 'Fahad alazmy'),
                      CourseContainer(imagePath: 'assets/images/dart.png', title: 'Dart tutorial course', subtitle: 'Fahad alazmy')
                      ]))
      
      
      ],)
      
      
      ),
    );
  }
}