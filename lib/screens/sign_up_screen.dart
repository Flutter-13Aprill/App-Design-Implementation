import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:kaf/extensions/screen_sizes.dart';
import 'package:kaf/screens/log_in_screen.dart';
import 'package:kaf/widgets/authentication_textfield_widget.dart';
import 'package:kaf/widgets/confirmation_button_widget.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: GestureDetector(

          // To remove the focus form textfield
          onTap: () => FocusScope.of(context).unfocus(),
          child: SingleChildScrollView(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 16),
              width: context.getWidth(),
              child: Column(
                children: [

                  
                  Image.asset(
                    fit: BoxFit.scaleDown,
                    'assets/authentication_screen/images/logo.png'
                  ),
            
                  SizedBox(height: context.getHeight() * 0.1),
            
                  AuthenticationTextfieldWidget(text: 'First Name', isPassword: false),
            
                  SizedBox(height:  context.getHeight() * 0.03,),
            
                  AuthenticationTextfieldWidget(text: 'Email', isPassword: false),
                  
                  SizedBox(height:  context.getHeight() * 0.03,),
            
                  AuthenticationTextfieldWidget(text: 'Password', isPassword: true),
            
                  SizedBox(height: context.getHeight() * 0.03),
            
                  IntlPhoneField(
                    initialCountryCode: 'SA',
                    cursorHeight: 14,
                    cursorColor: Color(0xffAF8F6F),
                    decoration: InputDecoration(
            
                      labelText: 'Phone number',
                      labelStyle: Theme.of(context).textTheme.displaySmall,
                      contentPadding: EdgeInsets.all(16),

                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(width: 2, color: Color(0xffAF8F6F)), 
                      ),

                      focusedErrorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(width: 2, color: Color(0xffAF8F6F)), 
                      ),
            
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(width: 2, color: Color(0xffAF8F6F)),
                      ),
            
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(width: 2, color: Color(0xffAF8F6F)),
                      ),

            
                    ),
                  ),
            
                  Container(
                    margin: EdgeInsets.only(left: 4),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: InkWell(
                        onTap: () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LogInScreen())),
                        child: RichText(
                          text: TextSpan(
                            text: 'Do you have an account ?',
                            style: GoogleFonts.poppins(
                              fontSize: 10,
                              fontWeight: FontWeight.w300,
                              letterSpacing:  0.2,
                              color: Colors.black
                            ),
                            children: [
                              TextSpan(
                                text: ' Log in',
                                style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w500,
                                  
                                )
                              )
                            ]
                          ),),
                      ),
                    ),
                  ),
            
                  SizedBox(height: context.getHeight() * 0.15),
            
                  ConfirmationButtonWidget(text: 'Sign Up', onPressed: (){})
                ],
              ),
            ),
          ),
        ) ,
      ),
    );
  }
}