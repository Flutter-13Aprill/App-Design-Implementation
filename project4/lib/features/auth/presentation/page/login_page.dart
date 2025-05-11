import 'package:flutter/material.dart';
import 'package:project4/core/extension/git_size_screen.dart';
import 'package:project4/core/function/navigaation.dart';
import 'package:project4/core/text/app_text.dart';
import 'package:project4/core/text/text_styles.dart';
import 'package:project4/core/widget/custom_button.dart';
import 'package:project4/core/widget/custom_text_button.dart';
import 'package:project4/core/widget/custom_text_field.dart';
import 'package:project4/features/auth/presentation/page/signup_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 100),
        child: Column(
          children: [
            Image.asset("asset/image/fatoortak.png"),
            const SizedBox(height: 58),
            Text(AppText.welcome, style: TextStyles.cairo900),
            const SizedBox(height: 85),
            CustomTextField(
              hintText: AppText.hintPhoneNumber,
              labelText: AppText.phoneNumber,
            ),
            SizedBox(height: context.getHeight() * 0.05),
            CustomButton(onPressed: () {}, child: Text(AppText.otp)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(AppText.member, style: TextStyles.cairo500,
                
                ),
                CustomTextButton(
                  onPressed: () {
                    customPush(context, SignupPage());
                  },
                  text: AppText.register,
                ),
              ],
            ),
            SizedBox(height: 47),
            Divider(),
            Text(AppText.or, style: TextStyles.cairo40014),
            SizedBox(height: 16),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("asset/image/google (2).png"),
                SizedBox(width: 20),
                Image.asset("asset/image/apple.png"),
                SizedBox(width: 20),
                Image.asset("asset/image/facebook (2).png"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
