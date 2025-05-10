import 'package:flutter/material.dart';

import 'package:meeple_app/core/text/text_styles.dart';
import 'package:meeple_app/core/theme/app_palette.dart';
import 'package:meeple_app/featuers/onbording/presentation/pages/onbording_screen.dart';
import 'package:meeple_app/featuers/signin/presentation/widget/custom_button.dart';
import 'package:meeple_app/featuers/signin/presentation/widget/custom_email_bar.dart';
import 'package:meeple_app/featuers/signin/presentation/widget/custom_log_in_button.dart';
import 'package:meeple_app/featuers/signin/presentation/widget/custom_passord_bar.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => OnbordingScreen()),
            );
          },
          child: Icon(
            Icons.arrow_back_ios_new_rounded,
            color: AppPalette.mainTextColor,
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.fromLTRB(8, 60, 8, 8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "Email",
                  style: TextStyles.sfPro500,
                  textAlign: TextAlign.left,
                ),
              ),
              CustomEmailBar(),
              SizedBox(height: 10, width: 10),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "Passowrd",
                  style: TextStyles.sfPro500,
                  textAlign: TextAlign.left,
                ),
              ),

              CustomPassordBar(),
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  "Forgot password?",
                  style: TextStyles.sfPro400,
                  textAlign: TextAlign.right,
                ),
              ),
              SizedBox(height: 60, width: 60),
              Center(child: CustomButton()),
              SizedBox(height: 30, width: 30),
              Center(child: CustomLogInButton()),
            ],
          ),
        ),
      ),
    );
  }
}
