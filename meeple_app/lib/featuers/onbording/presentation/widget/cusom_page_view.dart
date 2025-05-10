import 'package:flutter/material.dart';
import 'package:meeple_app/core/text/text_styles.dart';
import 'package:meeple_app/core/theme/app_palette.dart';

import 'package:meeple_app/featuers/onbording/data/onbording_model.dart';
import 'package:meeple_app/featuers/onbording/presentation/widget/custom_smooth_indecator.dart';
import 'package:meeple_app/featuers/onbording/presentation/widget/onborder_controller.dart';

class CustomPageView extends StatefulWidget {
  const CustomPageView({super.key});

  @override
  State<CustomPageView> createState() => _CustomPageViewState();
}

class _CustomPageViewState extends State<CustomPageView> {
  OnborderController onborderController = OnborderController();

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: onborderController.controller,
      itemCount: onbordingData.length,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 40, width: 40),
              Image.asset(onbordingData[index].image),
              SizedBox(height: 20, width: 20),
              Text(onbordingData[index].title, style: TextStyles.sfPro700),
              SizedBox(height: 20, width: 20),

              Text(onbordingData[index].subTitle!, style: TextStyles.sfPro500),
              SizedBox(height: 100, width: 100),
              SizedBox(height: 100, width: 100),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomSmoothIndecator(
                      controller: onborderController.controller,
                    ),
                    TextButton(
                      onPressed: () {
                        onborderController.checkNavigation(context, index);
                      },
                      child: Text(
                        "Next",
                        style: TextStyle(color: AppPalette.smallTextColor),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
