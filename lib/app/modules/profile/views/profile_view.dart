import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grocery_app/utils/constants.dart';

import '../controllers/profile_controller.dart'; // Adjust import paths as necessary

class ProfileView extends GetView<ProfileController> {
  const ProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: const Size(375, 812)); // Adjust the design size based on your UI design

    return Scaffold(
      appBar: AppBar(
        title: Text('Profile', style: context.theme.textTheme.headline3),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(
              Constants.logo, // This should be defined in your constants
              width: 313.w, // Responsive width based on the screen size
              height: 260.h, // Responsive height based on the screen size
              fit: BoxFit.cover, // Adjust the fit as needed
            ),
            SizedBox(height: 20.h), // Responsive space
            Text(
              'Name: Zainoob',
              style: context.textTheme.displayLarge!.copyWith(fontSize: 18.sp), // Responsive text size
            ),
            SizedBox(height: 8.h), // Responsive space
            Text(
              'Email: zainoob@gmail.com',
              style: context.textTheme.bodySmall!.copyWith(fontSize: 16.sp), // Responsive text size
            ),
          ],
        ),
      ),
    );
  }
}
