import 'package:flutter/material.dart';
import 'package:mealstore/Screens/desc_screen.dart';
import 'package:mealstore/reusable_widgets/headingandtitles.dart';

class dividerline extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      child: Divider(
        color: Color(0xff0b735e),
        thickness: 2,
      ),
    );
  }
}

class dividerl extends StatelessWidget {

  double width;


  dividerl({required this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      child: Divider(
        color: Color(0xff0b735e),
        thickness: 2,
      ),
    );
  }
}

class main_div extends StatelessWidget {
  String name;
  String country;
  String image;
  String nameid;

  main_div({required this.name, required this.country, required this.image,required this.nameid});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 8,bottom: 20),
      width: 180,
      height: 280,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            spreadRadius: 0.2,
            blurRadius: 10,
          )
        ],
      ),

      // Image Container With All the text

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          // Image Container //

          Container(
            margin: EdgeInsets.symmetric(vertical: 6,horizontal: 6),
            width: double.infinity,
            height: 170,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                image: NetworkImage(image),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),

          // Dish Name Container //

          Container(
              width: 100,
              margin: EdgeInsets.only(left: 10),
              child: title1(text: name, fontsize: 18, weight: FontWeight.bold, overflow: TextOverflow.ellipsis, fontStyle: FontStyle.normal)),

          SizedBox(
            height: 4,
          ),

          // Dish Country Name Container //

          Container(
              width: 70,
              height: 20,
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(20),
              ),
              margin: EdgeInsets.only(left: 10),
              child: Center(child: heading2(text: country, fontsize: 12, weight: FontWeight.w400, overflow: TextOverflow.ellipsis, fontStyle: FontStyle.normal))),


          SizedBox(
            height: 6,
          ),

          // Tappable Container Named with Cook Now //

          GestureDetector(
            onTap: (){
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Dish Name: "+name+"\nCountry: "+country),duration: Duration(milliseconds: 1000)));
              Navigator.push(context, MaterialPageRoute(builder: (context) => desc(id: nameid,)));
              },
            child: Container(
                width: 80,
                height: 24,
                decoration: BoxDecoration(
                  color: Color(0xff0b735e),
                  borderRadius: BorderRadius.circular(20),
                ),
                margin: EdgeInsets.only(top:10,left: 70),
                child: Center(child: heading2(text: "Cook Now", fontsize: 12, weight: FontWeight.w400, overflow: TextOverflow.ellipsis, fontStyle: FontStyle.normal))),
          ),


        ],
      ),
    );
  }
}

class ingreandmeasur extends StatelessWidget {

  String ingredient;
  String measurment;

  ingreandmeasur({required this.ingredient, required this.measurment});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(vertical: 4,horizontal: 60),
      child: Row(
        children: <Widget>[

          // Ingredient Name //

          title1(text: ingredient, fontsize: 12, weight: FontWeight.w600, overflow: TextOverflow.ellipsis, fontStyle: FontStyle.normal),
          SizedBox(
            width: 40,
          ),
          // Ingredient Measurments //
          title1(text: measurment, fontsize: 12, weight: FontWeight.w600, overflow: TextOverflow.ellipsis, fontStyle: FontStyle.normal),
        ],
      ),
    );
  }
}

class desc_widget extends StatelessWidget {

  String Dish;
  String conntry;
  String introduction;
  String source;
  String video;
  String image;
  String i1;
  String m1;
  String i2;
  String m2;
  String i3;
  String m3;
  String i4;
  String m4;
  String i5;
  String m5;
  String? i6;
  String? m6;
  String? i7;
  String? m7;
  String? i8;
  String? m8;
  String? i9;
  String? m9;
  String? i10;
  String? m10;
  String? i11;
  String? m11;
  String? i12;
  String? m12;
  String? i13;
  String? m13;
  String? i14;
  String? m14;
  String? i15;
  String? m15;


  desc_widget(
      {required this.Dish,
      required this.conntry,
      required this.introduction,
      required this.source,
      required this.video,
      required this.image,
      required this.i1,
      required this.m1,
      required this.i2,
      required this.m2,
      required this.i3,
      required this.m3,
      required this.i4,
      required this.m4,
      required this.i5,
      required this.m5,
      this.i6,
      this.m6,
      this.i7,
      this.m7,
      this.i8,
      this.m8,
      this.i9,
      this.m9,
      this.i10,
      this.m10,
      this.i11,
      this.m11,
      this.i12,
      this.m12,
      this.i13,
      this.m13,
      this.i14,
      this.m14,
      this.i15,
      this.m15,});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const ScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            margin: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
            width: double.infinity,
            height: 250,
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(image),
                  fit: BoxFit.cover,
                ),
                color: Colors.grey,
                borderRadius: BorderRadius.circular(20)
            ),
          ),

          Container(
              margin: EdgeInsets.only(left: 14),
              child: title1(text: Dish, fontsize: 22, weight: FontWeight.w800, overflow: TextOverflow.ellipsis, fontStyle: FontStyle.normal)),

          Container(
              margin: EdgeInsets.only(left: 14),
              child: title1(text: conntry, fontsize: 14, weight: FontWeight.w600, overflow: TextOverflow.ellipsis, fontStyle: FontStyle.normal)),

          Container(
              margin: EdgeInsets.only(left: 14),
              child: dividerline()),


          SizedBox(
            height: 14,
          ),

          Center(child: title1(text: "Instructions", fontsize: 14, weight: FontWeight.w800, overflow: TextOverflow.ellipsis, fontStyle: FontStyle.normal)),
          Container(
              margin: EdgeInsets.only(left: 170),
              child: dividerl(width: 20)),

          SizedBox(
              height: 14
          ),

          Container(
            margin: EdgeInsets.only(left: 18),
            width: 320,
            height: 300,
            child: Flex(
                direction: Axis.vertical,
                children: [
                  Expanded(
                    child: SingleChildScrollView(
                        child: title2(text: introduction, fontsize: 12, weight: FontWeight.w600, fontStyle: FontStyle.normal)),
                  ),
                ]
            ),
          ),

          SizedBox(
            height: 24,
          ),

          Center(child: title1(text: "Ingredients", fontsize: 14, weight: FontWeight.w800, overflow: TextOverflow.ellipsis, fontStyle: FontStyle.normal)),
          Container(
              margin: EdgeInsets.only(left: 170),
              child: dividerl(width: 20)),

          SizedBox(
            height: 14,
          ),

          // Requirments //
          ingreandmeasur(ingredient: i1, measurment: m1,),
          ingreandmeasur(ingredient: i2, measurment: m2,),
          ingreandmeasur(ingredient: i3, measurment: m3,),
          ingreandmeasur(ingredient: i4, measurment: m4,),
          ingreandmeasur(ingredient: i5, measurment: m5,),
          ingreandmeasur(ingredient: i6!, measurment: m6!,),
          ingreandmeasur(ingredient: i7!, measurment: m7!,),
          ingreandmeasur(ingredient: i8!, measurment: m8!,),
          ingreandmeasur(ingredient: i9!, measurment: m9!,),
          ingreandmeasur(ingredient: i10!, measurment: m10!,),
          ingreandmeasur(ingredient: i11!, measurment: m11!,),
          ingreandmeasur(ingredient: i12!, measurment: m12!,),
          ingreandmeasur(ingredient: i13!, measurment: m13!,),
          ingreandmeasur(ingredient: i14!, measurment: m14!,),
          ingreandmeasur(ingredient: i15!, measurment: m15!,),

          SizedBox(
            height: 24,
          ),

          Center(child: title1(text: "Blog Source", fontsize: 14, weight: FontWeight.w800, overflow: TextOverflow.ellipsis, fontStyle: FontStyle.normal)),
          Container(
              margin: EdgeInsets.only(left: 170),
              child: dividerl(width: 20)),

          SizedBox(
            height: 10,
          ),

          Container(
              decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(20)
              ),
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(child: title1(text: source, fontsize: 14, weight: FontWeight.w600, overflow: TextOverflow.ellipsis, fontStyle: FontStyle.normal)),
              )),

          SizedBox(
            height: 24,
          ),

          Center(child: title1(text: "Guide Video Link", fontsize: 14, weight: FontWeight.w800, overflow: TextOverflow.ellipsis, fontStyle: FontStyle.normal)),
          Container(
              margin: EdgeInsets.only(left: 170),
              child: dividerl(width: 20)),

          SizedBox(
            height: 10,
          ),

          Container(
              decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(20)
              ),
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(child: title1(text: video, fontsize: 14, weight: FontWeight.w600, overflow: TextOverflow.ellipsis, fontStyle: FontStyle.normal)),
              )),
          Container(
            margin: EdgeInsets.only(left: 170,bottom:24),),

        ],
      ),
    );
  }
}
