import 'package:flutter/material.dart';

// -- External Package 
import 'package:flutter_svg/svg.dart';

class OnboardingPageViewWidget extends StatelessWidget {
  const OnboardingPageViewWidget({super.key, required this.title, required this.description, required this.imagePath,});

  final String title;
  final String description;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [

        SizedBox(height: description.length > 70 ? 0 : 24),
        
        SvgPicture.asset(imagePath),

        // I have an issue with the SVG height. So, solved by checking if the description length more than 70 make it 72 otherwise 145
        // Play around to see what I meant
        SizedBox(height: description.length > 70 ? 72 : 120),

        Text(title,style: Theme.of(context,).textTheme.titleMedium!.copyWith(color: Color(0xff3C3C3C)),),

        SizedBox(height: 16),

        ConstrainedBox(
          constraints: BoxConstraints(maxWidth: description.length > 70 ? 360 : 300),
          child: Text(description,textAlign: TextAlign.center,),
        ),
      ],
    );
  }
}
