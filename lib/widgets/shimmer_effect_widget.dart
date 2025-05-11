import 'package:flutter/material.dart';

// -- External Package 
import 'package:shimmer/shimmer.dart';

class ShimmerEffectWidget extends StatelessWidget {
  
  const ShimmerEffectWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 24),
      padding: EdgeInsets.all(4),
      child: Shimmer.fromColors(
        baseColor: Colors.grey,
        highlightColor: Colors.grey[300]!,
        child: Column(
          children: [
        
        
            Container(
              width: 200,
              height: 140,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16)
              ),
            ),
      
            SizedBox(height: 16,),
      
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                width: 140,
                height: 20,
                alignment: Alignment.centerLeft,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16)
                ),
              ),
            ),
      
            SizedBox(height: 8,),
      
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                width: 80,
                height: 10,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16)
                ),
              ),
            ),
      
            SizedBox(height: 8,),
      
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                width: 140,
                height: 20,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16)
                ),
              ),
            ),
      
          ],
        ),
      ),
    );
  }
}