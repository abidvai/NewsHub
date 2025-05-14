import 'package:flutter/material.dart';

class HeadingSection extends StatelessWidget {
  const HeadingSection({
    super.key,
    required this.mediaQuery,
  });

  final Size mediaQuery;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: mediaQuery.width,
      height: mediaQuery.height / 6,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(10),
          bottomRight: Radius.circular(20),
        ),
        color: Color(0xFF9ACBD0),
      ),
      child: Padding(
        padding: EdgeInsets.only(left: 20, right: 20, top: 30),
        child: Row(
          children: [
            CircleAvatar(
              radius: 30,
              backgroundImage: NetworkImage(
                'https://images.pexels.com/photos/3095621/pexels-photo-3095621.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
              ),
            ),
            SizedBox(width: mediaQuery.width * .03),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: 'Hello @Boss\n',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.black87,
                    ),
                  ),
                  TextSpan(
                    text: 'Good to see you Again',
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                      color: Colors.green,
                    ),
                  ),
                ],
              ),
            ),
            Spacer(),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.notifications_active),
            ),
          ],
        ),
      ),
    );
  }
}