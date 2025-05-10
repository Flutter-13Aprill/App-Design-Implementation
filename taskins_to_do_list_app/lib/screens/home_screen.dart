import 'package:confetti/confetti.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';


import 'package:taskins_to_do_list_app/styles/text_styles.dart';
import 'package:taskins_to_do_list_app/widgets/nav_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with SingleTickerProviderStateMixin {
  late TabController _tabController;
   final _controller  = ConfettiController();
   bool isPlaying  = false;
  bool ischecked = false;
   final List<Color> tabBackgroundColors = [
    Color(0xFFABD6B8), // Green
    Color(0xFFF3A398), // Pink
    Color(0xFFFAE06F), // Green
  ];

 

  final Color selectedBackgroundColor = Color(0xFF8C3117); // Brown
  final Color selectedTextColor = Colors.white;
  final Color unselectedTextColor = Color(0xFF8C3117);

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);

   _tabController.addListener(() {
      setState(() {});
    });
      
  }

  @override
  void dispose() {
    _tabController.dispose();
    _controller.dispose();
    super.dispose();
  }
void _showDialog(){
  showDialog(context: context, builder: (context){
    return CupertinoAlertDialog(
       title: Text('Conformation',
       style: AppTextStyles.fontSizeFour,
       ),
       content: Padding(
         padding: const EdgeInsets.only(top: 12),
         child: Text("Are you sure you want to set this as your mood for today?",
         style: AppTextStyles.fontSizeSix,
         ),
       ),
       actions: [
        MaterialButton(onPressed: () {
          
        },
        child: Text("Ok",   style: AppTextStyles.fontSizeFive,),
        ),
        MaterialButton(onPressed: () {
          Navigator.pop(context);
        },
        child: Text("Cancel",  style: AppTextStyles.fontSizeFive,),
        )
       ],
       

    );
   
  });
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     backgroundColor: const Color(0XFFFBD4B4),
      appBar: AppBar(
        elevation: 0,
           backgroundColor: const Color(0XFFFBD4B4),

        leading: Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Image.asset("lib/assets/images/profile.png"),
        ),
        title: Row(
          children: [
            Text("Hello Saja,", style: AppTextStyles.fontSizeFour),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: Builder(
              builder: (context) => IconButton(
                icon: Icon(Icons.settings, color: Color(0xFF8C3117)),
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
              ),
            ),
          )
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              child: Text("Settings", style: AppTextStyles.fontSizeThree),
            ),
            ListTile(
              leading: Icon(Icons.notifications, color: Color(0xFF8C3117)),
              title: Text("Notification", style: AppTextStyles.fontSizeSix),
            ),
            ListTile(
              leading: Icon(Icons.logout_outlined, color: Color(0xFF8C3117)),
              title: Text("Log Out", style: AppTextStyles.fontSizeSix),
            ),
          ],
        ),
      ),
      body: Stack(children: [
        
        SingleChildScrollView(
          child: Column(
            
            children: [
                SizedBox(height: 100),
              Container(
               width: 430,
                height: 620,
                decoration: BoxDecoration(
                  color: Color(0XFFFAF4EC),
                   borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                ),
                  border: Border(
                    top: BorderSide(
              color: Color(0xFF8C3117),
              width: 4,
                    ),
                    left: BorderSide(
              color: Color(0xFF8C3117),
              width: 4,
                    ),
                    right: BorderSide(
              color: Color(0xFF8C3117),
              width: 4,
                    ),
                    
                ),
                ),
              
                child: Column(
              children: [
                SizedBox(height: 48),
                Row(
                  children: [
                    SizedBox(width: 22),
                    Text("How do you feel today?", style: AppTextStyles.fontSizeFive),
                  ],
                ),
                SizedBox(height: 28),
                Row(
                  children: [
                    SizedBox(width: 18),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: MaterialButton(
                        onPressed:  _showDialog,
                        padding: EdgeInsets.zero,
                        minWidth: 0,
                        child: Image.asset("lib/assets/images/happy_no_paw.png", width: 49),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: MaterialButton(
                        onPressed:  _showDialog,
                        padding: EdgeInsets.zero,
                        minWidth: 0,
                        child: Image.asset("lib/assets/images/wonder_eye_no_paw.png", width: 49),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: MaterialButton(
                        onPressed:  _showDialog,
                        padding: EdgeInsets.zero,
                        minWidth: 0,
                        child: Image.asset("lib/assets/images/angry.png", width: 49),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: MaterialButton(
                        onPressed:  _showDialog,
                        padding: EdgeInsets.zero,
                        minWidth: 0,
                        child: Image.asset("lib/assets/images/nervous.png", width: 49),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: MaterialButton(
                        onPressed:  _showDialog,
                        padding: EdgeInsets.zero,
                        minWidth: 0,
                        child: Image.asset("lib/assets/images/loving_no_paw.png", width: 49),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: MaterialButton(
                        onPressed:  _showDialog,
                        padding: EdgeInsets.zero,
                        minWidth: 0,
                        child: Image.asset("lib/assets/images/sad.png", width: 49),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 28),
                Row(
                  children: [
                    SizedBox(width: 28),
                    Text("My Lists", style: AppTextStyles.fontSizeFour),
                  ],
                ),
                SizedBox(height: 18),
                // Tab Bar
              
                Padding(
                  padding: const EdgeInsets.only(left: 20.0, right: 20),
                  child: TabBar(
                      controller: _tabController,
                      indicator: BoxDecoration(
                        color: Colors.transparent, // No default indicator
                      ),
                       labelPadding: const EdgeInsets.symmetric(horizontal: 2),
                      tabs: List.generate(3, (index) {
                        bool isSelected = _tabController.index == index;
                        return Container(
                          padding: const EdgeInsets.symmetric(vertical: 15),
                          margin: const EdgeInsets.symmetric(horizontal: 4),
                          decoration: BoxDecoration(
                         
                        color: isSelected ? selectedBackgroundColor : tabBackgroundColors[index],
                  
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              color: Color(0xFF8C3117),
                              width: 2,
                            ),
                          ),
                          child: Center(
                            child: Text(
                              index == 0
                                  ? "Active"
                                  : index == 1
                                      ? "Pending"
                                      : "Saved",
                              style: TextStyle(
                                color: isSelected
                                    ? selectedTextColor
                                    : unselectedTextColor,
                                fontWeight: FontWeight.w600,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        );
                      }),
                    ),
                ),
              
                     
              
               
                // Tab Bar View
                Container(
                  height: 300,
                
                    child: TabBarView(
                      controller: _tabController,
                      children: [
                        Center(child: Column(children: [
                          SizedBox(height: 28,),
                          Container(
                            width: 350,
                            height: 100,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Column(children: [
                              SizedBox(height: 8,),
                            Row(
                              children: [
                                 SizedBox(width: 16,),
                                Text("Trip to Italy", style: AppTextStyles.fontSizeThree),
                                SizedBox(width: 170,),




                                 InkWell(
                                  onTap: () {
                                  
                                    showModalBottomSheet(
                                      context: context, 
                                   isScrollControlled: true,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.vertical(
                                        top: Radius.circular(50),
                                      ),
                                      ),
                                      builder: (BuildContext context)
                                      {
                                        bool localIsChecked = ischecked;
                                        return Container(
                                                    padding: const EdgeInsets.all(20),

                                          height: 400,
                                          width: 600,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),

                                            ),
                                         
                                          ),
                                          child: Column(children: [
                                          Row(children: [
                                         Text("Trip to Italy"),
                                        
                                          ],),
                                           Row(children: [
                                         Text("Buy new toothbrush"),
                                          Checkbox(
                                          value: localIsChecked,
                                          activeColor: Colors.greenAccent,
                                         onChanged: (bool ?newBool){
                                          setState(() {
                                          ischecked= newBool ?? false;
                                if (ischecked) {
                              
                                  _controller.play();
                                }else{
                               _controller.stop();
                                }
                               
                              
                              });
                              
                                       
                                      
                                         })
                                           ]
                                           ),
                                          ],)
                                        );
                                      }
                                      );
                                  },
                                  child: Icon(CupertinoIcons.ellipsis_vertical, color: Color(0xFF8C3117),)),
                              ],
                            ),
                             SizedBox(height: 3,),
                           Row(children: [
                             SizedBox(width: 16,),
                             Text("buy new tooth brush", style: AppTextStyles.fontSizeSix),
                              SizedBox(width: 6,),
                              Text("04/02/2025", style: AppTextStyles.fontSizeSix),
                           ],),
                            SizedBox(height: 3,),
                            Row(children: [
                               SizedBox(width: 16,),
                              Icon(Icons.checklist, color: Color(0xFF8C3117),),
                              Text("Todo", style: AppTextStyles.fontSizeSix),
                            ],),
                            SizedBox(height: 10,),
                          
                          ],)
                          ),
                           SizedBox(height: 25,),
                         IconButton(
                              
                              onPressed:(){}
                             
                              , icon: 
                              Container(
                                width:65,
                                height: 65,
                                decoration: BoxDecoration(
                                   color: Color(0xFF8C3117), // Circle background color
                                  shape: BoxShape.circle,
                                ),
                                child: Icon(Icons.add, color: Colors.white, size: 30,))),
                        ],)
                        
                        ),
                        Center(child: Column(children: [
                          SizedBox(height: 28,),
                          Container(
                            width: 350,
                            height: 100,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Column(children: [
                              SizedBox(height: 8,),
                            Row(
                              children: [
                                 SizedBox(width: 16,),
                                Text("Plan a party", style: AppTextStyles.fontSizeThree),
                                SizedBox(width: 170,),
                                 Icon(CupertinoIcons.ellipsis_vertical, color: Color(0xFF8C3117),),
                              ],
                            ),
                             SizedBox(height: 3,),
                           Row(children: [
                             SizedBox(width: 16,),
                             Text("buy a cake", style: AppTextStyles.fontSizeSix),
                              SizedBox(width: 6,),
                              Text("04/02/2025", style: AppTextStyles.fontSizeSix),
                           ],),
                            SizedBox(height: 3,),
                            Row(children: [
                               SizedBox(width: 16,),
                              Icon(Icons.checklist, color: Color(0xFF8C3117),),
                              Text("Todo", style: AppTextStyles.fontSizeSix),
                            ],),
                            SizedBox(height: 10,),
                            //here
                          
                          ],)
                          ),
                           SizedBox(height: 16,),
                          Container(
                            width: 350,
                            height: 100,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Column(children: [
                              SizedBox(height: 8,),
                            Row(
                              children: [
                                 SizedBox(width: 16,),
                                Text("Eid shopping", style: AppTextStyles.fontSizeThree),
                                SizedBox(width: 160,),
                                 Icon(CupertinoIcons.ellipsis_vertical, color: Color(0xFF8C3117),),
                              ],
                            ),
                             SizedBox(height: 3,),
                           Row(children: [
                             SizedBox(width: 16,),
                             Text("buy candy", style: AppTextStyles.fontSizeSix),
                              SizedBox(width: 6,),
                              Text("04/02/2025", style: AppTextStyles.fontSizeSix),
                           ],),
                            SizedBox(height: 3,),
                            Row(children: [
                               SizedBox(width: 16,),
                              Icon(Icons.checklist, color: Color(0xFF8C3117),),
                              Text("Todo", style: AppTextStyles.fontSizeSix),
                            ],),
                            SizedBox(height: 10,),
                            //here
                          
                          ],)
                          ),
                        ],
                        ),
                        ),
                        Center(child: Column(children: [
                          SizedBox(height: 28,),
                          Container(
                            width: 350,
                            height: 100,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Column(children: [
                              SizedBox(height: 8,),
                            Row(
                              children: [
                                 SizedBox(width: 16,),
                                Text("Trip to disney world", style: AppTextStyles.fontSizeThree),
                                SizedBox(width: 90,),
                                 Icon(CupertinoIcons.ellipsis_vertical, color: Color(0xFF8C3117),),
                              ],
                            ),
                             SizedBox(height: 3,),
                           Row(children: [
                             SizedBox(width: 16,),
                             Text("buy sunscreen", style: AppTextStyles.fontSizeSix),
                              SizedBox(width: 6,),
                              Text("04/02/2025", style: AppTextStyles.fontSizeSix),
                           ],),
                            SizedBox(height: 3,),
                            Row(children: [
                               SizedBox(width: 16,),
                              Icon(Icons.checklist, color: Color(0xFF8C3117),),
                              Text("Todo", style: AppTextStyles.fontSizeSix),
                            ],),
                            SizedBox(height: 10,),
                            //here
                          
                          ],)
                          ),
                           SizedBox(height: 16,),
                          Container(
                            width: 350,
                            height: 100,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Column(children: [
                              SizedBox(height: 8,),
                            Row(
                              children: [
                                 SizedBox(width: 16,),
                                Text("Spring cleaning", style: AppTextStyles.fontSizeThree),
                                SizedBox(width: 130,),
                                 Icon(CupertinoIcons.ellipsis_vertical, color: Color(0xFF8C3117),),
                              ],
                            ),
                             SizedBox(height: 3,),
                           Row(children: [
                             SizedBox(width: 16,),
                             Text("take out old clothes", style: AppTextStyles.fontSizeSix),
                              SizedBox(width: 6,),
                              Text("04/02/2025", style: AppTextStyles.fontSizeSix),
                           ],),
                            SizedBox(height: 3,),
                            Row(children: [
                               SizedBox(width: 16,),
                              Icon(Icons.checklist, color: Color(0xFF8C3117),),
                              Text("Todo", style: AppTextStyles.fontSizeSix),
                            ],),
                            SizedBox(height: 10,),
                            //here
                          
                          ],)
                          ),
                        ],
                        ),),
                  ],
                    ),
                  
              
                ),
                
              
              
                
              ],
                    ),
              ),
            ],
          ),
        ),
        Positioned(
        top:10,
        left: 40,
        child: 
      Image.asset(
                "lib/assets/images/amazing_cat.png",
                cacheWidth: 600,
              ),
      
      ),
      Positioned(
      
        child: ConfettiWidget(confettiController: _controller,)),
      Positioned(child: Align(
                  alignment: Alignment.topCenter,
                  child: ConfettiWidget(
                    confettiController: _controller,
                    blastDirectionality: BlastDirectionality.explosive,
                    numberOfParticles: 30,
                    shouldLoop: false,
                    colors: [Colors.green, Colors.blue, Colors.pink, Colors.orange],
                  )
      ))
      ],),

    );
    
  }
}


