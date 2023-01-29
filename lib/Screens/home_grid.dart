import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:mealstore/Screens/login_screen.dart';
import 'package:mealstore/myservices/api_services.dart';
import 'package:mealstore/reusable_widgets/headingandtitles.dart';
import 'package:mealstore/reusable_widgets/reusable_screen_widgets.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {

  // List<String> names = ["Corba","Burek","Kumpir","Tamiya","Dal fry","Poutine","Lasagne","Timbits","Wontons","Kafteji"];
  // List<String> country = ["Turkish","Croatian","Turkish","Egyptian","Pakistani","Canadian","Italian","Canadian","Chinese","Tunisian"];
  // List img = ["corba.jpg","burek.jpg","kumpir.jpg","tamiya.jpg","dal.jpg","poutine.jpg","lasagene.jpg","timbits.jpg","wontons.jpg","kafteji.jpg"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: true,
        bottom: true,
        child: SingleChildScrollView(
          physics: const ScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                margin: EdgeInsets.symmetric(vertical: 20,horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                        width: 200,
                        child: title1(text: "Let's make Quality Food", fontsize: 24, weight: FontWeight.bold, overflow: TextOverflow.fade,  fontStyle: FontStyle.normal)),

                    CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage("images/avatar.jpg"),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 6,
              ),
              Center(child: title1(text: "All these! only one Click Away", fontsize: 14, weight: FontWeight.w600, overflow: TextOverflow.fade, fontStyle: FontStyle.normal)),
              Center(child: dividerline()),


              SizedBox(
                height: 20,
              ),


              //Main Back Container//
            FutureBuilder(
              future: MyServices.apihomeservice(),
              builder: (context, snapshot) {

              if (snapshot.connectionState == ConnectionState.waiting) {
                return Center(child: CircularProgressIndicator());
              }

              if (snapshot.hasError) {
                return Center(child: title1(text: "Error Loading While Fetching Recepies",fontsize: 18,weight: FontWeight.w800 , fontStyle: FontStyle.normal,overflow: TextOverflow.fade,));
              }

              if (snapshot.hasData) {

                Map map = jsonDecode(snapshot.data);
                List meals = map["meals"];
                print(map);

                return GridView.count(
                  crossAxisCount: 2,
                  scrollDirection: Axis.vertical,
                  physics: const ScrollPhysics(),
                  shrinkWrap: true,
                  mainAxisSpacing: 10,
                  childAspectRatio: 140/240,
                  children: List.generate(meals.length, (index) => main_div(
                    name: '${meals[index]["strMeal"]}',
                    country: '${meals[index]["strArea"]}',
                    image: '${meals[index]["strMealThumb"]}',
                    nameid: '${meals[index]["idMeal"]}',
                  )),
                );
              }

              return Container();
            },)

            ],
          ),
        ),
      ),
    );
  }
}



