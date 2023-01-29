import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:mealstore/Screens/login_screen.dart';
import 'package:mealstore/reusable_widgets/headingandtitles.dart';

class register extends StatefulWidget {
  const register({Key? key}) : super(key: key);

  @override
  State<register> createState() => _registerState();
}

class _registerState extends State<register> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      bottom: true,
      child: Scaffold(
        body: SingleChildScrollView(
          physics: const ScrollPhysics(),
          child: Column(
            children: [
              Center(
                child: Container(
                  width: 300,
                  height: 300,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("images/register.png"),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(20)
                  ),
                ),
              ),
              Center(
                child: Container(
                  width: 300,
                  child: heading1(
                    text: 'Register yourself to get new recipe everyday',
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
                label: 'Enter Your Name',
                hint: 'abc@gmail.com',
                icon: Icons.person,
                obsecure: false,
              ),

              testfield(
                label: 'Enter Your Email',
                hint: 'abc@gmail.com',
                icon: Icons.mail,
                obsecure: false,
              ),

              testfield(
                label: 'Enter your Password',
                hint: '12ab****d7c5',
                icon: Icons.key,
                obsecure: true,
              ),

              GestureDetector(
                onTap: () {
                  setState(() {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => login(),));
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
                      text: 'Register',
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
