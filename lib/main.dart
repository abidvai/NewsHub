import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_flash/views/bottom_nav/bottom_nav.dart';
import 'package:news_flash/views/home_page/home_page.dart';
import 'package:news_flash/views/splash_page.dart';
import 'package:news_flash/widgets/custom_profile_options.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: BottomNav(),
    );
  }
}