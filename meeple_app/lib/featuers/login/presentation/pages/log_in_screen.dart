import 'package:flutter/material.dart';

import 'package:meeple_app/core/text/text_styles.dart';
import 'package:meeple_app/core/theme/app_palette.dart';
import 'package:meeple_app/featuers/login/presentation/widget/cusom_name_bar.dart';

import 'package:meeple_app/featuers/signin/presentation/pages/sign_in_screen.dart';
import 'package:meeple_app/featuers/signin/presentation/widget/custom_button.dart';
import 'package:meeple_app/featuers/signin/presentation/widget/custom_email_bar.dart';

import 'package:meeple_app/featuers/signin/presentation/widget/custom_passord_bar.dart';

class LogInScreen extends StatelessWidget {
  const LogInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SignInScreen()),
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
                  "Name",
                  style: TextStyles.sfPro500,
                  textAlign: TextAlign.left,
                ),
              ),
              CusomNameBar(),
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

              SizedBox(height: 60, width: 60),
              Center(child: CustomButton()),
            ],
          ),
        ),
      ),
    );
  }
}
