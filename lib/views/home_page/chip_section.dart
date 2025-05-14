import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ChipSection extends StatelessWidget {
  ChipSection({super.key});

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
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 7),
            child: GestureDetector(
              onTap: () => print(menu['title']),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 16),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey, width: 2),
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
        },
      ),
    );
  }
}
