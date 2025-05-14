import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:news_flash/controller/News_controller.dart';

class ChipSection extends StatelessWidget {
  ChipSection({super.key});

  final NewsController newsController = Get.find<NewsController>();

  final List<Map<String, dynamic>> category = [
    {'title': 'Business'},
    {'title': 'Entertainment'},
    {'title': 'Health'},
    {'title': 'Sports'},
    {'title': 'Technology'},
  ];

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: 40,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: category.length,
        itemBuilder: (context, index) {
          final menu = category[index];
          return Obx(() {
            final isSelected = newsController.selectedCategory.value == menu['title'];
            return Padding(
              padding: EdgeInsets.symmetric(horizontal: 7),
              child: GestureDetector(
                onTap: () {
                  newsController.selectedCategory.value = menu['title'];
                  newsController.FetchNewsCategory(menu['title']);
                },
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  decoration: BoxDecoration(
                    color: isSelected ? Colors.blue : Colors.white70,
                    border: Border.all(color: Colors.blue, width: 1),

                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Text(
                      menu['title'],
                      style: TextStyle(
                        color: Colors.black87,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ),
            );
          });
        },
      ),
    );
  }
}
