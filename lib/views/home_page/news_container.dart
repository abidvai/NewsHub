import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../models/NewsModel.dart';
import '../../service/api_service.dart';

class NewsContainer extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return   FutureBuilder<List<Articles>>(
      future: AppService.fetchHeadLines(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError) {
          return Center(child: Text('Error: ${snapshot.error}'));
        } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
          return Center(child: Text('No News Found. Try Again...'));
        } else {
          final newsData = snapshot.data!;
          return ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: newsData.length,
            itemBuilder: (context, index) {
              final news = newsData[index];
              return Container(
                width: double.infinity,
                height: 200,
                margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(width: 2, color: Colors.black),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.network(
                    news.urlToImage ?? 'https://via.placeholder.com/400',
                    width: double.infinity,
                    height: double.infinity,
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) {
                      return Container(
                        color: Colors.grey[300],
                        child: Icon(Icons.error, size: 50),
                      );
                    },
                  ),
                ),
              );
            },
          );
        }
      },
    );
  }
}
