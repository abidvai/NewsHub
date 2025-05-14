import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_flash/controller/News_controller.dart';
import 'package:news_flash/views/home_page/chip_section.dart';
import 'package:news_flash/views/home_page/heading_section.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final NewsController newsController = Get.put(NewsController());

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header Section
          HeadingSection(mediaQuery: size),
          SizedBox(height: 10),
          // Categories Chips Section
          ChipSection(),
          SizedBox(height: 10),
          // Headlines Section
          Padding(
            padding: EdgeInsets.only(left: 10),
            child: Text(
              'HeadLines',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ),

          // News viewing card
          Expanded(
            child: Obx(() {
              if (newsController.articleList.isEmpty) {
                return Center(child: CircularProgressIndicator());
              }
              return ListView.builder(
                shrinkWrap: true,
                itemCount: newsController.articleList.length,
                itemBuilder: (context, index) {
                  final article = newsController.articleList[index];
                  return Container(
                    margin: EdgeInsets.all(15),
                    width: size.width * .5,
                    height: size.height * .2,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.black.withOpacity(.3),
                    ),
                    child: Stack(
                      children: [
                        article.urlToImage != null
                            ? ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Opacity(
                                opacity: 0.5,
                                child: Image.network(
                                  alignment: Alignment.topCenter,
                                  article.urlToImage!,
                                  width: double.infinity,
                                  height: size.height * .2,
                                  fit: BoxFit.cover,
                                  errorBuilder:
                                      (_, _, _) =>
                                          Center(child: Icon(Icons.broken_image)),
                                ),
                              ),
                            )
                            : Container(
                              color: Colors.grey,
                              child: Center(
                                child: Icon(Icons.image_not_supported),
                              ),
                            ),
                        Positioned(
                          right: 16,
                            top: 10,
                            child: Container(
                              width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            border: Border.all(
                              width: 1,
                              color: Colors.green.withOpacity(.5)
                            ),
                            shape: BoxShape.circle,
                            color: Colors.black.withOpacity(.3)
                          ),
                          child: Icon(Icons.favorite_border, color: Colors.deepOrange,),
                        )),
                        Positioned(
                          bottom: 13,
                          left: 0,
                          right: 0,
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            child: Text(
                              article.title!,
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                              ),
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              );
            }),
          ),
        ],
      ),
    );
  }
}
