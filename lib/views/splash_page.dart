import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CircleAvatar(
          backgroundImage: NetworkImage('https://images.pexels.com/photos/4057663/pexels-photo-4057663.jpeg'),
        ),
      ),
    );
  }
}
