// ignore_for_file: prefer_const_constructors

import 'package:electronic_store/constants.dart';
import 'package:electronic_store/widget/home_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kPrimaryColor,
        appBar:homeAppBar(),
      body:HomeBody() ,

    );
  }
}

AppBar homeAppBar() {
  return AppBar(
    backgroundColor: kPrimaryColor ,
    elevation: 0,
    title: Text(
        'مرحبا بكم بمتجر الالكترونيات ',
        style: GoogleFonts.getFont('Almarai')
    ),
    centerTitle: false,
    actions: [
      IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
    ],
  );
}
