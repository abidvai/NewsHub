import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:news_flash/controller/bottomNav_controller.dart';
import 'package:news_flash/views/favourite_page.dart';
import 'package:news_flash/views/home_page/home_page.dart';
import 'package:news_flash/views/profile_page.dart';


class BottomNav extends StatelessWidget {
  BottomNav({super.key});

  final BottomNavController bottomNavController = Get.put(BottomNavController());

  final List<Widget> _pages = [
    HomePage(),
    FavouritePage(),
    ProfilePage()
  ];

  @override
  Widget build(BuildContext context) {
    return Obx(() => Scaffold(
      backgroundColor: Color(0xFFEFEEEA),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index){
          bottomNavController.changePage(index);
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: bottomNavController.currentIndex.value == 1 ? Icon(Icons.favorite) : Icon(Icons.favorite_border),
            label: 'Favourite',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Profile',
          ),
        ],
        currentIndex: bottomNavController.currentIndex.value,
        selectedItemColor: Colors.black87,
        unselectedItemColor: Colors.blueGrey,
      ),
      body: _pages[bottomNavController.currentIndex.value],
    ));
  }
}
