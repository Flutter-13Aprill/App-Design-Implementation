import 'package:ahmed_almansour_project/Extensions_screen/screen_size.dart';
import 'package:ahmed_almansour_project/coustome_wedgets/progress_container.dart';
import 'package:flutter/material.dart';
import 'package:ahmed_almansour_project/classes/shimmer.dart';
import 'package:ahmed_almansour_project/tools/colors/colors.dart';
class HomeContent extends StatefulWidget {
  const HomeContent({super.key});

  @override
  State<HomeContent> createState() => _HomeContentState();
}

class _HomeContentState extends State<HomeContent> {
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
    return Scaffold(backgroundColor: whitegray,appBar: AppBar(backgroundColor: whitegray,centerTitle: true,title: Text('Coursa'),actions: [IconButton(
  onPressed: () {
    showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (BuildContext context) {
        return Container(
          padding: EdgeInsets.all(16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('change langugue', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          
             
            ],
          ),
        );
      },
    );
  },
  icon: Icon(Icons.settings),
)
],),body:
     Column(crossAxisAlignment: CrossAxisAlignment.start,children: [
      Stack(
        children:[ Opacity(opacity:0.35 ,child: Image.asset('assets/images/library1.jpeg',fit: BoxFit.fill,height: context.getheight()/10*7.79,)),Padding(
          padding: EdgeInsets.symmetric(horizontal: context.getwidth()*0.03),
          child: Column(
            children: [
              SizedBox(width: context.getwidth(),height: context.getheight()*0.01),
          SizedBox(
                height: context.getheight() * 0.55,
                child: GridView.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 1,
                  mainAxisSpacing: 1,
                  childAspectRatio: 0.70,
                  children: isLoading
                  //simmer effect
                      ? List.generate(4, (index) => buildShimmerItem(context))
                      : [ ProgressContainer(containerGroub:{'MY GOALS': {'start': 1, 'end': 3}} , containerCallbacks:{'MY GOALS': () =>{}}),
                      ProgressContainer(containerGroub:{'MY COURSES': {'start': 1, 'end': 2}} , containerCallbacks:{'MY COURSES': () =>{}}),
                      ProgressContainer(containerGroub:{'MY CERTEFICATE': {'start': 0, 'end': 2}} , containerCallbacks:{'MY CERTEFICATE': () =>{}}),
                      ProgressContainer(containerGroub:{'MY ACHIEVEMENTS': {'start': 2, 'end': 7}} , containerCallbacks:{'MY ACHIEVEMENTS': () =>{}})
                      ])),
                      
               ]),
        )
     ]),
  
     
     
     ],)
     
     
     
     
     
     
     
     
     
     
     
     ,drawer:Drawer(child: SafeArea(child: Padding(
       padding: EdgeInsets.symmetric(vertical: context.getwidth()*0.03),
       child: Column(children: [InkWell(onTap: () {},child: 
       Container(alignment: Alignment.centerLeft,decoration:BoxDecoration(border: Border(bottom: BorderSide(color: Colors.grey),top: BorderSide.none,left: BorderSide.none,right: BorderSide.none,)),height: context.getheight()*0.07,child: 
       Padding(
         padding: EdgeInsets.symmetric(horizontal: context.getwidth()*0.03),
         child: Text('My Goals',),
       ))),SizedBox(height: 2,),InkWell(onTap: () {},child: 
       Container(alignment: Alignment.centerLeft,decoration:BoxDecoration(border: Border(bottom: BorderSide(color: Colors.grey),top: BorderSide.none,left: BorderSide.none,right: BorderSide.none,)),height: context.getheight()*0.07,child: 
       Padding(
         padding: EdgeInsets.symmetric(horizontal: context.getwidth()*0.03),
         child: Text('International certificates',),
       ))),SizedBox(height: 2,),InkWell(onTap: () {},child: 
       Container(alignment: Alignment.centerLeft,decoration:BoxDecoration(border: Border(bottom: BorderSide(color: Colors.grey),top: BorderSide.none,left: BorderSide.none,right: BorderSide.none,)),height: context.getheight()*0.07,child: 
       Padding(
         padding: EdgeInsets.symmetric(horizontal: context.getwidth()*0.03),
         child: Text('About the Institute',),
       )))],),
     )),) ,);
  }
}