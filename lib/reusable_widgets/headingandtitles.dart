import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class heading1 extends StatelessWidget {

  String text;
  double fontsize;
  FontWeight weight;
  TextOverflow overflow;
  FontStyle fontStyle;


  heading1({
    required this.text,
    required this.fontsize,
    required this.weight,
    required this.overflow,
    required this.fontStyle});


  @override
  Widget build(BuildContext context) {
    return Text(text,style: GoogleFonts.raleway(
        textStyle: TextStyle(
            fontSize: fontsize,
            fontWeight: weight,
            fontStyle: fontStyle,
            letterSpacing: 1,
            overflow: overflow,
        )
    ),);
  }
}

class heading2 extends StatelessWidget {

  String text;
  double fontsize;
  FontWeight weight;
  TextOverflow overflow;
  FontStyle fontStyle;


  heading2({
    required this.text,
    required this.fontsize,
    required this.weight,
    required this.overflow,
    required this.fontStyle});


  @override
  Widget build(BuildContext context) {
    return Text(text,style: GoogleFonts.raleway(
        textStyle: TextStyle(
          fontSize: fontsize,
          fontWeight: weight,
          fontStyle: fontStyle,
          letterSpacing: 1,
          overflow: overflow,
          color: Colors.white
        )
    ),);
  }
}

class title1 extends StatelessWidget {

  String text;
  double fontsize;
  FontWeight weight;
  TextOverflow overflow;
  FontStyle fontStyle;


  title1({
    required this.text,
    required this.fontsize,
    required this.weight,
    required this.overflow,
    required this.fontStyle});


  @override
  Widget build(BuildContext context) {
    return Text(text,style: GoogleFonts.raleway(
        textStyle: TextStyle(
          fontSize: fontsize,
          fontWeight: weight,
          fontStyle: fontStyle,
          letterSpacing: 0,
          overflow: overflow,
        )
    ),);
  }
}

class title2 extends StatelessWidget {

  String text;
  double fontsize;
  FontWeight weight;
  FontStyle fontStyle;


  title2({
    required this.text,
    required this.fontsize,
    required this.weight,
    required this.fontStyle});


  @override
  Widget build(BuildContext context) {
    return Text(text,style: GoogleFonts.raleway(
        textStyle: TextStyle(
          fontSize: fontsize,
          fontWeight: weight,
          fontStyle: fontStyle,
          letterSpacing: 0,
        )
    ),
    textAlign: TextAlign.justify,
    textScaleFactor: 1.3,
    selectionColor: Colors.red,);
  }
}

class testfield extends StatelessWidget {

  String label;
  String hint;
  IconData icon;
  bool obsecure;


  testfield({required this.label, required this.hint, required this.icon, required this.obsecure});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10,horizontal: 30),
      child: TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide(color: Colors.white,width: 1,style: BorderStyle.solid,strokeAlign: StrokeAlign.outside),),
          prefixIcon: Icon(icon),
          label: heading1(
            text: label,
            fontsize: 14,
            weight: FontWeight.normal,
            overflow: TextOverflow.fade,
            fontStyle: FontStyle.normal,
          ),
          hintText: hint,
        ),
        obscureText: obsecure,
      ),
    );
  }
}