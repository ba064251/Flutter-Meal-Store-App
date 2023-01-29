import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:mealstore/Screens/home_grid.dart';
import 'package:mealstore/Screens/login_screen.dart';
import 'package:mealstore/Screens/search_screen.dart';
import 'package:mealstore/reusable_widgets/headingandtitles.dart';

class home_nav extends StatefulWidget {
  const home_nav({Key? key}) : super(key: key);

  @override
  State<home_nav> createState() => _home_navState();
}

class _home_navState extends State<home_nav> {

  int selected_page = 0;

  void _pageshifter(int index){
    setState(() {
      selected_page = index;
    });
  }

  final List<Widget> page = [
    home(),
    search(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: page[selected_page],
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 80),
        child: GNav(
          tabBackgroundColor: Color(0xff4fdcc2),
          activeColor: Color(0xff0b735e),
          gap: 6,
          curve: Curves.easeInExpo,
          selectedIndex: selected_page,
          onTabChange: _pageshifter,
          padding: EdgeInsets.symmetric(vertical: 10,horizontal: 14),
          tabs: [
            GButton(
                text: "Home",
                icon: Icons.home_mini_outlined),
            GButton(
                text: "Random",
                icon: Icons.search),
          ],
        ),
      ),
    );
  }
}
