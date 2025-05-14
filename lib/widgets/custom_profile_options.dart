import 'package:flutter/material.dart';

class CustomProfileOptions extends StatelessWidget {
  final IconData icon;
  final String text;
  final IconData prefixIcon;
  final VoidCallback onTap;
  const CustomProfileOptions({super.key, required this.icon, required this.text, required this.prefixIcon, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(icon, color: Colors.deepOrange.withOpacity(0.6),),
              SizedBox(width: 30,),
              Text(text, style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15,
                color: Colors.white70
              ),),
            ],
          ),
          Icon(prefixIcon, color: Colors.red,)
        ],
      ),
    );
  }
}
