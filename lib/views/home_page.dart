import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  List<Map<String, dynamic>> category = [
    {'title': 'Business'},
    {'title': 'Entertainment'},
    {'title': 'Health'},
    {'title': 'Sports'},
    {'title': 'Technology'},
  ];

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
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
                SizedBox(width: mediaQuery.width * .24),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.notifications_active),
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: 10),

        /// -------------- chips section -------------------- ///
        SizedBox(
          height: 50,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: List.generate(category.length, (index) {
              final menu = category[index];
              return Row(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 7),
                    child: GestureDetector(
                      onTap: () {
                        print(menu['title']);
                      },
                      child: Container(
                        height: mediaQuery.height * .04,
                        width: mediaQuery.width * .4,
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
                  ),
                ],
              );
            }),
          ),
        ),
        SizedBox(height: 10),

        /// ------------- headlines ------------------ ///
        Padding(
          padding: EdgeInsets.only(left: 10),
          child: Text(
            'HeadLines',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
        ),
        Expanded(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  Container(
                    width: mediaQuery.width,
                    height: 150,
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                            color: Colors.black87,
                            width: 1
                        )
                    ),
                    child: Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10), topLeft: Radius.circular(10)),
                          child: Image.network('https://images.pexels.com/photos/3095619/pexels-photo-3095619.jpeg',
                            fit: BoxFit.cover,
                            width: 100,
                          ),

                        ),
                        SizedBox(width: 10,),
                        Padding(
                          padding: EdgeInsets.only(top: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('source'),
                              SizedBox(height: 10,),
                              Text('title'),
                              SizedBox(height: 10,),
                              Text('Description', maxLines: 2, overflow: TextOverflow.ellipsis,),
                              Text('date', textAlign: TextAlign.end,)
                            ],
                          ),
                        )
            
                      ],
                    ),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    width: mediaQuery.width,
                    height: 150,
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                            color: Colors.black87,
                            width: 1
                        )
                    ),
                    child: Row(
                      children: [
                        ClipRect(
                          child: Image.network('https://images.pexels.com/photos/3095619/pexels-photo-3095619.jpeg',
                            fit: BoxFit.cover,
                            width: 100,
                          ),
                        ),
                        Column(
                          children: [
                            Text('News title'),
                            Text('Description', maxLines: 2, overflow: TextOverflow.ellipsis,),
                            Text('source')
                          ],
                        )
            
                      ],
                    ),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    width: mediaQuery.width,
                    height: 150,
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                            color: Colors.black87,
                            width: 1
                        )
                    ),
                    child: Row(
                      children: [
                        ClipRect(
                          child: Image.network('https://images.pexels.com/photos/3095619/pexels-photo-3095619.jpeg',
                            fit: BoxFit.cover,
                            width: 100,
                          ),
                        ),
                        Column(
                          children: [
                            Text('News title'),
                            Text('Description', maxLines: 2, overflow: TextOverflow.ellipsis,),
                            Text('source')
                          ],
                        )
            
                      ],
                    ),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    width: mediaQuery.width,
                    height: 150,
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                            color: Colors.black87,
                            width: 1
                        )
                    ),
                    child: Row(
                      children: [
                        ClipRect(
                          child: Image.network('https://images.pexels.com/photos/3095619/pexels-photo-3095619.jpeg',
                            fit: BoxFit.cover,
                            width: 100,
                          ),
                        ),
                        Column(
                          children: [
                            Text('News title'),
                            Text('Description', maxLines: 2, overflow: TextOverflow.ellipsis,),
                            Text('source')
                          ],
                        )
            
                      ],
                    ),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    width: mediaQuery.width,
                    height: 150,
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                            color: Colors.black87,
                            width: 1
                        )
                    ),
                    child: Row(
                      children: [
                        ClipRect(
                          child: Image.network('https://images.pexels.com/photos/3095619/pexels-photo-3095619.jpeg',
                            fit: BoxFit.cover,
                            width: 100,
                          ),
                        ),
                        Column(
                          children: [
                            Text('News title'),
                            Text('Description', maxLines: 2, overflow: TextOverflow.ellipsis,),
                            Text('source')
                          ],
                        )
            
                      ],
                    ),
                  )
            
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
