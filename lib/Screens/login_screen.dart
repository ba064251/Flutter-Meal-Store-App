import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:mealstore/Screens/bottom_home_nav.dart';
import 'package:mealstore/Screens/register_screen.dart';
import 'package:mealstore/reusable_widgets/headingandtitles.dart';


class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: true,
        bottom: true,
        child: SingleChildScrollView(
          physics: const ScrollPhysics(),
          child: Column(
            children: [
              Center(
                child: Container(
                  width: 300,
                  height: 300,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("images/login.png"),
                    fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(20)
                  ),
                ),
              ),
              Center(
                child: Container(
                  margin: EdgeInsets.only(left: 30),
                  width: 300,
                  child: heading1(
                    text: 'Login to fetch new delightful, juicy recipes ',
                    fontsize: 12,
                    weight: FontWeight.normal,
                    overflow: TextOverflow.fade,
                    fontStyle: FontStyle.normal,),
                ),
              ),

              SizedBox(
                height: 20,
              ),

              testfield(
                label: 'Enter your username',
                hint: 'abc@gmail.com',
                icon: Icons.person,
                obsecure: false,
              ),

              testfield(
                label: 'Enter your Password',
                hint: '12ab****d7c5',
                icon: Icons.key,
                obsecure: true,
              ),

              GestureDetector(
                onTap: (){
                  setState(() {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => home_nav(),));
                  });
                },
                child: Container(
                  margin: EdgeInsets.only(top: 10),
                  width: 100,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Color(0xff025d4c),
                  ),
                  child: Center(
                    child: heading2(
                      text: 'Login',
                      fontsize: 14,
                      weight: FontWeight.w600,
                      overflow: TextOverflow.fade,
                      fontStyle: FontStyle.normal,),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


