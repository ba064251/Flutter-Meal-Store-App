import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:mealstore/Screens/login_screen.dart';
import 'package:mealstore/Screens/register_screen.dart';
import 'package:mealstore/reusable_widgets/headingandtitles.dart';

class bottomnav extends StatefulWidget {
  const bottomnav({Key? key}) : super(key: key);

  @override
  State<bottomnav> createState() => _bottomnavState();
}

class _bottomnavState extends State<bottomnav> {

  int selectedindex = 0;

  void _nevegatebottombar(int index)
  {
    setState(() {
      selectedindex = index;
    });
  }

  final List<Widget> _pages = [
    login(),
    register()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[selectedindex],
      bottomNavigationBar: Padding(
        padding: EdgeInsets.symmetric(vertical: 20,horizontal: 80),
        child: GNav(
          tabMargin: EdgeInsets.all(10),
          padding: EdgeInsets.all(10),
          gap: 10,
          tabBackgroundColor: Color(0xff4fdcc2),
          activeColor: Color(0xff0b735e),
          iconSize: 24,
          textSize: 20,
          curve:Curves.easeInExpo,
          selectedIndex: selectedindex,
          onTabChange: _nevegatebottombar,
          tabs: [
            GButton(
                text: "Login",
                icon: Icons.login_outlined),
            GButton(
                text: "Register",
                icon: Icons.how_to_reg),
          ],
        ),
      ),
    );
  }
}
