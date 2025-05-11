import 'package:flutter/material.dart';
import 'package:residence_app/screens/bottom_navbar.dart';
import 'package:residence_app/screens/home_screen.dart';

// This is the Login/Signup screen. It allows users to switch between the login and signup forms using a TabBar and TabController.
// We use a TabController to manage the tab switching, and TextEditingController for handling text input fields.
// Additionally, after successful login or signup, we navigate to the HomeScreen and pass the user's name as an argument to the HomeScreen.

class LoginSignupScreen extends StatefulWidget {
  const LoginSignupScreen({super.key});

  @override
  State<LoginSignupScreen> createState() => _LoginSignupScreenState();
}

class _LoginSignupScreenState extends State<LoginSignupScreen>
    with SingleTickerProviderStateMixin {
  TabController? tabController;
  final fieldController = TextEditingController();
  bool obscurePassword = true;
  bool obscureConfirmPassword = true;
  bool isSelected = false;
  String? headerText;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 2, vsync: this);

    tabController!.addListener(() {
      setState(() {
        if ((tabController?.index ?? 0) == 0) {
          headerText = "Log in to unlock your";
        } else if (tabController!.index == 1) {
          headerText = "Register to unlock your";
        }
      });
    });
  }

  @override
  void dispose() {
    tabController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff746c64),
      body: Stack(
        children: [
          Positioned.fill(
            child: Stack(
              children: [
                Image.asset(
                  "assets/images/login-background.png",
                  fit: BoxFit.cover,
                ),
                Container(color: Colors.black.withOpacity(0.7)),
                Positioned(
                  top: 130,
                  left: 20,
                  child: Text(
                    headerText ?? "One step away from",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.start,
                  ),
                ),

                Positioned(
                  top: 170,
                  left: 20,
                  child: Text(
                    'perfect space',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 34,
                      fontWeight: FontWeight.w800,
                      fontStyle: FontStyle.italic,
                    ),
                    textAlign: TextAlign.start,
                  ),
                ),
              ],
            ),
          ),

          Positioned(
            bottom: 0,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.7,
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Color(0xffEAEAF5),
                    offset: Offset(0, 4),
                    blurRadius: 10,
                    spreadRadius: 1,
                  ),
                ],
              ),
              child: Padding(
                padding: EdgeInsets.all(16),
                child: Column(
                  children: [
                    Container(
                      height: 40,
                      decoration: BoxDecoration(
                        border: Border.all(color: Color(0xffEAEAEA), width: 1),
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: TabBar(
                        controller: tabController,
                        labelStyle: TextStyle(fontSize: 16),
                        unselectedLabelColor: Color(0xff746c64),
                        indicator: BoxDecoration(
                          color: Color(0xff6a7d4f),
                          borderRadius: BorderRadius.circular(25),
                        ),

                        tabs: [Tab(text: "Log in"), Tab(text: "Sign up")],
                      ),
                    ),

                    Expanded(
                      child: TabBarView(
                        controller: tabController,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 16),
                            child: Column(
                              children: [
                                TextField(
                                  controller: fieldController,
                                  decoration: InputDecoration(
                                    label: Text(
                                      "Email",
                                      style: TextStyle(fontSize: 15),
                                    ),
                                    prefixIcon: Icon(
                                      Icons.email_outlined,
                                      color: Color(0xff6a7d4f),
                                    ),

                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0xffEAEAF5),
                                      ),
                                    ),
                                  ),
                                ),

                                TextField(
                                  decoration: InputDecoration(
                                    label: Text(
                                      "Password",
                                      style: TextStyle(fontSize: 15),
                                    ),
                                    prefixIcon: Icon(
                                      Icons.lock_outline,
                                      color: Color(0xff6a7d4f),
                                    ),
                                    suffixIcon: IconButton(
                                      icon: Icon(
                                        obscurePassword
                                            ? Icons.visibility_off_outlined
                                            : Icons.visibility_outlined,
                                        color: Color(0xff746c64),
                                      ),
                                      onPressed: () {
                                        obscurePassword = !obscurePassword;
                                        setState(() {});
                                      },
                                    ),
                                    labelStyle: TextStyle(
                                      color: Color(0xff746c64),
                                      fontSize: 12,
                                    ),

                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0xffEAEAF5),
                                      ),
                                    ),
                                  ),
                                  obscureText: obscurePassword,
                                ),

                                Padding(
                                  padding: EdgeInsets.symmetric(vertical: 8.0),
                                  child: Row(
                                    children: [
                                      InkWell(
                                        onTap: () {
                                          isSelected = !isSelected;
                                          setState(() {});
                                        },
                                        child: Icon(
                                          isSelected
                                              ? Icons.square_outlined
                                              : Icons.check_box_outlined,

                                          color: Color(0xff746c64),
                                        ),
                                      ),
                                      SizedBox(width: 1),
                                      Text(
                                        "Remember me",
                                        style: TextStyle(
                                          color: Color(0xff746c64),
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),

                                Padding(
                                  padding: EdgeInsets.only(top: 40, bottom: 24),
                                  child: InkWell(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder:
                                              (context) => BottomNavbarScreen(),
                                          settings: RouteSettings(
                                            arguments: fieldController.text,
                                          ),
                                        ),
                                      );
                                    },

                                    child: Container(
                                      alignment: Alignment.center,
                                      height: 44,
                                      width: 258,
                                      decoration: BoxDecoration(
                                        color: Color(0xff6a7d4f),
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: Text(
                                        "Log In",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 22,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),

                                Align(
                                  alignment: Alignment.centerRight,
                                  child: Text(
                                    "Forgot Password?",
                                    style: TextStyle(
                                      color: Color(0xff746c64),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 15),
                                Text(
                                  "Or log in with",
                                  style: TextStyle(
                                    color: Color(0xff746c64),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                SizedBox(height: 30),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      height: 50,
                                      width: 100,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                        border: Border.all(
                                          color: Color(0xffEEEEF6),
                                        ),
                                        shape: BoxShape.rectangle,
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.all(8.0),
                                        child: Image.asset(
                                          "assets/icons/facebook-icon.png",
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: 20),

                                    Container(
                                      height: 50,
                                      width: 100,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                        border: Border.all(
                                          color: Color(0xffEEEEF6),
                                        ),
                                        shape: BoxShape.rectangle,
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.all(8.0),
                                        child: Image.asset(
                                          "assets/icons/google-icon.png",
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),

                          Padding(
                            padding: EdgeInsets.only(top: 16),
                            child: Column(
                              children: [
                                TextField(
                                  decoration: InputDecoration(
                                    label: Text(
                                      "Email",
                                      style: TextStyle(fontSize: 15),
                                    ),
                                    prefixIcon: Icon(
                                      Icons.email_outlined,
                                      color: Color(0xff6a7d4f),
                                    ),

                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0xff6a7d4f),
                                      ),
                                    ),
                                  ),
                                ),

                                TextField(
                                  decoration: InputDecoration(
                                    label: Text(
                                      "Password",
                                      style: TextStyle(fontSize: 15),
                                    ),
                                    prefixIcon: Icon(
                                      Icons.lock_outline,
                                      color: Color(0xff6a7d4f),
                                    ),
                                    suffixIcon: IconButton(
                                      icon: Icon(
                                        obscurePassword
                                            ? Icons.visibility_off_outlined
                                            : Icons.visibility_outlined,
                                        color: Color(0xff746c64),
                                      ),
                                      onPressed: () {
                                        obscurePassword = !obscurePassword;
                                        setState(() {});
                                      },
                                    ),

                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0xff6a7d4f),
                                      ),
                                    ),
                                  ),
                                  obscureText: obscurePassword,
                                ),

                                TextField(
                                  decoration: InputDecoration(
                                    label: Text(
                                      "Confirm Password",
                                      style: TextStyle(fontSize: 15),
                                    ),

                                    prefixIcon: Icon(
                                      Icons.lock_outline,
                                      color: Color(0xff6a7d4f),
                                    ),
                                    suffixIcon: IconButton(
                                      icon: Icon(
                                        obscureConfirmPassword
                                            ? Icons.visibility_off_outlined
                                            : Icons.visibility_outlined,
                                        color: Color(0xff746c64),
                                      ),
                                      onPressed: () {
                                        obscureConfirmPassword =
                                            !obscureConfirmPassword;
                                        setState(() {});
                                      },
                                    ),

                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0xffEAEAF5),
                                      ),
                                    ),
                                  ),
                                  obscureText: obscureConfirmPassword,
                                ),

                                Padding(
                                  padding: EdgeInsets.only(top: 40),
                                  child: InkWell(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => HomeScreen(),
                                        ),
                                      );
                                    },
                                    child: Container(
                                      alignment: Alignment.center,
                                      height: 44,
                                      width: 258,
                                      decoration: BoxDecoration(
                                        color: Color(0xff6a7d4f),
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: Text(
                                        "Sign up",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 22,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),

                                SizedBox(height: 18),
                                Text(
                                  "Or sign up with",
                                  style: TextStyle(
                                    color: Color(0xff746c64),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                SizedBox(height: 25),

                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      height: 50,
                                      width: 100,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                        border: Border.all(
                                          color: Color(0xffEEEEF6),
                                        ),
                                        shape: BoxShape.rectangle,
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.all(8.0),
                                        child: Image.asset(
                                          "assets/icons/facebook-icon.png",
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: 20),

                                    Container(
                                      height: 50,
                                      width: 100,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                        border: Border.all(
                                          color: Color(0xffEEEEF6),
                                        ),
                                        shape: BoxShape.rectangle,
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.all(8.0),
                                        child: Image.asset(
                                          "assets/icons/google-icon.png",
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
