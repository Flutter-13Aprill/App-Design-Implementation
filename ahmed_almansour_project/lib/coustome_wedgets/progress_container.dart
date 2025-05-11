//import packages
import 'package:ahmed_almansour_project/tools/colors/colors.dart';
import 'package:ahmed_almansour_project/Extensions_screen/screen_size.dart';
import 'package:flutter/material.dart';
//unit group class
class ProgressContainer extends StatelessWidget {
  
  final Map<String, Map<String, dynamic>> containerGroub;
  final Map<String, VoidCallback> containerCallbacks;
// class keys
  const ProgressContainer({
    super.key,
    required this.containerGroub,
    required this.containerCallbacks,
  });

  @override
  Widget build(BuildContext context) {
    //get width of screen
    
//start with column
    return SizedBox(
      child: Container(alignment: Alignment.topLeft,  width: context.getwidth()*0.48,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            
            
            SizedBox(
              height: context.getheight()*0.20,
              //horzintal list view
              child: ListView(
                scrollDirection: Axis.vertical,
                //define the keys of map
                children: containerGroub.entries.map((entry) {
                  final name = entry.key;
                  final containerData = entry.value;
                  final start = containerData['start'] ?? 0;
                  final end = containerData['end'] ?? 0;
                  final onpress = containerCallbacks[name];
                  final progress = end > 0 ? start / end : 0;
        
                    return InkWell(
                      onTap: onpress,
              
                      child: Container(
                        height: context.getheight()*0.2,
                        margin: EdgeInsets.symmetric(horizontal: context.getwidth()*0.01),
                        padding: EdgeInsets.all(2),
                        decoration: BoxDecoration(
                          color:whitered,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: context.getheight()*0.03,),
                            //name of unit
                            Padding(
                                 padding: EdgeInsets.symmetric(horizontal: context.getwidth()*0.03),child: 
                            Text(name, softWrap: true,textAlign: TextAlign.left,style: TextStyle(fontSize: context.getwidth()/10*0.49,color: Colors.white), )),
                            Spacer(),
                            Padding(
                                 padding: EdgeInsets.symmetric(horizontal: context.getwidth()*0.03),
                              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Text(start.toString(),style: TextStyle(color: Colors.white)),Text(end.toString(),style: TextStyle(color: Colors.white))],),
                            ),
                            Stack(
                              alignment: Alignment.center,
                              children: [
                                // liniar prograses indector
                                Padding(
                          padding: EdgeInsets.symmetric(horizontal: context.getwidth()*0.03),
                                  child: LinearProgressIndicator(
                                    value: progress,
                                    backgroundColor: Colors.white,
                                    valueColor: AlwaysStoppedAnimation<Color>(whitebeige),
                                    minHeight: 5,
                                  ),
                                ),
                               
                              ],
                            ),SizedBox(height: context.getheight()*0.05)
                           
                          ],
                        ),
                      ),
                    );
                  
                }).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
