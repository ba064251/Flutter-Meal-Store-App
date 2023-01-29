import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:mealstore/Screens/login_screen.dart';
import 'package:mealstore/myservices/api_services.dart';
import 'package:mealstore/reusable_widgets/headingandtitles.dart';
import 'package:mealstore/reusable_widgets/reusable_screen_widgets.dart';

class desc extends StatefulWidget {
 String id;


 desc({required this.id});

  @override
  State<desc> createState() => _descState(id: id);
}

class _descState extends State<desc> {

  String id;

  _descState({required this.id});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: true,
        bottom: true,
        child: FutureBuilder(
          future: MyServices.apidescservice(id),
          builder: (context, snapshot) {

            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(child: CircularProgressIndicator());
            }

          if (snapshot.hasError){
            return Center(child: title1(text: "Error While Redirecting",weight: FontWeight.w800,overflow:TextOverflow.fade,fontStyle: FontStyle.normal,fontsize: 24,));
          }

          if (snapshot.hasData) {

            Map map = jsonDecode(snapshot.data);
            List mealdesc = map["meals"];
            print(map);

            return ListView.builder(
              itemCount: map.length,
              itemBuilder: (context, index) {
              return desc_widget(
                Dish: '${mealdesc[index]["strMeal"]}',
                conntry: '${mealdesc[index]["strArea"]}',
                introduction: '${mealdesc[index]["strInstructions"]}',
                source: '${mealdesc[index]["strSource"]}',
                video: '${mealdesc[index]["strYoutube"]}',
                image: '${mealdesc[index]["strMealThumb"]}',
                i1: '${mealdesc[index]["strIngredient1"]}',
                m1: '${mealdesc[index]["strMeasure1"]}',
                i2: '${mealdesc[index]["strIngredient2"]}',
                m2: '${mealdesc[index]["strMeasure2"]}',
                i3: '${mealdesc[index]["strIngredient3"]}',
                m3: '${mealdesc[index]["strMeasure3"]}',
                i4: '${mealdesc[index]["strIngredient4"]}',
                m4: '${mealdesc[index]["strMeasure4"]}',
                i5: '${mealdesc[index]["strIngredient5"]}',
                m5: '${mealdesc[index]["strMeasure5"]}',
                i6: '${mealdesc[index]["strIngredient6"]}',
                m6: '${mealdesc[index]["strMeasure6"]}',
                i7: '${mealdesc[index]["strIngredient7"]}',
                m7: '${mealdesc[index]["strMeasure7"]}',
                i8: '${mealdesc[index]["strIngredient8"]}',
                m8: '${mealdesc[index]["strMeasure8"]}',
                i9: '${mealdesc[index]["strIngredient9"]}',
                m9: '${mealdesc[index]["strMeasure9"]}',
                i10: '${mealdesc[index]["strIngredient10"]}',
                m10: '${mealdesc[index]["strMeasure10"]}',
                i11: '${mealdesc[index]["strIngredient11"]}',
                m11: '${mealdesc[index]["strMeasure11"]}',
                i12: '${mealdesc[index]["strIngredient12"]}',
                m12: '${mealdesc[index]["strMeasure12"]}',
                i13: '${mealdesc[index]["strIngredient13"]}',
                m13: '${mealdesc[index]["strMeasure13"]}',
                i14: '${mealdesc[index]["strIngredient14"]}',
                m14: '${mealdesc[index]["strMeasure14"]}',
                i15: '${mealdesc[index]["strIngredient15"]}',
                m15: '${mealdesc[index]["strMeasure15"]}',);
            },);
          }

          return Container();
        },)
      ),
    );
  }
}



