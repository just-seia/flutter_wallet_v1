// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:wallet/config/colors.dart';
import 'package:wallet/screens/onboarding_screen.dart';

void main() {
  runApp(const MyApp());
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Wallet',
      theme: ThemeData(
        primarySwatch: configColor(ColorsApp.mainColor),
        fontFamily: 'Gilroy',
      ),
      home: OnboardingScreen(),
    );
  }


}