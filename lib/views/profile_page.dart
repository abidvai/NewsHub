import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:news_flash/widgets/custom_profile_options.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  void pickImage() async {
    final ImagePicker picker = ImagePicker();
    final XFile? pickImage = await picker.pickImage(source: ImageSource.gallery);

    if(pickImage != null){
      File imageFile = File(pickImage.path);

      print(imageFile);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text('Profile'),
        centerTitle: true,
        leading: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back)),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.settings))
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(top: 15, left: 31, right: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Stack(
                      children: [
                        Container(
                          width: 80,
                          height: 80,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(image: NetworkImage('https://scontent.fdac155-1.fna.fbcdn.net/v/t39.30808-1/488192954_2778959902312012_3700017881357269133_n.jpg?stp=cp6_dst-jpg_s320x320_tt6&_nc_cat=110&ccb=1-7&_nc_sid=1d2534&_nc_ohc=_kC1vkOFZCgQ7kNvwGB-gUl&_nc_oc=AdkOTf53Hs-WQlyQ0-YPQEHEXEx3YtS06unHzhCbXKE_WEoyG_2DGU83Lbitq7D1ww0&_nc_zt=24&_nc_ht=scontent.fdac155-1.fna&_nc_gid=ziRTiu6NUXfwjuhh1z1cHA&oh=00_AfKKmqJeGZmW-OnYPwjtHiJZx-GUD8RnbNDlvcwRmiNutw&oe=682AC2D2'))
                          ),
                        ),
                        Positioned(
                          top: 55,
                          left: 60,
                          right: 0,
                          child: GestureDetector(
                            onTap: (){
                              pickImage();
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle
                              ),
                              child: Icon(Icons.camera_alt),
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(width: 15,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Abdullah Al Abid'),
                        Text('abdullahabid1660@gmail.com'),
                        SizedBox(height: 8,),
                        Container(
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(5)
                          ),
                          child: Text('Edit Profile'),
                        )
                      ],
                    )
                  ],
                ),
                SizedBox(height: 30,),
                Container(
                  padding: EdgeInsets.all(35),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.blueGrey
                  ),
                  child: Column(
                    children: [
                      CustomProfileOptions(icon: Icons.favorite_border_outlined, text: 'Favourites', prefixIcon: Icons.arrow_forward_ios_rounded, onTap: () {  },),
                      SizedBox(height: 25,),
                      CustomProfileOptions(icon: Icons.download, text: 'Downloads', prefixIcon: Icons.arrow_forward_ios_rounded, onTap: () {  },),
                      SizedBox(height: 10,),
                      Divider(
                        thickness: 1,
                        color: Colors.black.withOpacity(0.5),
                      ),
                      SizedBox(height: 10,),
                      CustomProfileOptions(icon: Icons.language, text: 'Language', prefixIcon: Icons.arrow_forward_ios_rounded, onTap: () {  },),
                      SizedBox(height: 25,),
                      CustomProfileOptions(icon: Icons.location_on_outlined, text: 'Location', prefixIcon: Icons.arrow_forward_ios_rounded, onTap: () {  },),
                      SizedBox(height: 25,),
                      CustomProfileOptions(icon: Icons.live_tv, text: 'Subscriptions', prefixIcon: Icons.arrow_forward_ios_rounded, onTap: () {  },),
                      SizedBox(height: 10,),
                      Divider(
                        thickness: 1,
                        color: Colors.black.withOpacity(0.5),
                      ),
                      SizedBox(height: 10,),
                      CustomProfileOptions(icon: Icons.delete_outlined, text: 'Clear Cache', prefixIcon: Icons.arrow_forward_ios_rounded, onTap: () {  },),
                      SizedBox(height: 25,),
                      CustomProfileOptions(icon: Icons.timer_outlined, text: 'Clear History', prefixIcon: Icons.arrow_forward_ios_rounded, onTap: () {  },),
                      SizedBox(height: 25,),
                      Divider(
                        thickness: 1,
                        color: Colors.black.withOpacity(0.5),
                      ),
                      SizedBox(height: 25,),
                      CustomProfileOptions(icon: Icons.logout, text: 'Logout', prefixIcon: Icons.arrow_forward_ios_rounded, onTap: () {  },),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      )
    );
  }
}
