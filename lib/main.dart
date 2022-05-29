
// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:electronic_store/constants.dart';
import 'package:electronic_store/view/home_Screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_localizations/flutter_localizations.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Electrical Store',

      theme: ThemeData(
        textTheme: GoogleFonts.almaraiTextTheme(Theme.of(context).textTheme),
        primaryColor: kPrimaryColor,
        colorScheme: ColorScheme.fromSwatch().copyWith(secondary: kPrimaryColor),

      ),
      // Arabic Rtl
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('ar', 'AR'), // Arabic, no country code
      ],

      home: const HomeScreen(),
    );
  }
}




