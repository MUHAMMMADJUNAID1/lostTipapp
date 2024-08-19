import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:losttip/color.dart';
import 'package:losttip/common/customUserPostCard.dart';
import 'package:losttip/common/custombtn.dart';

import 'common/customProfileItem.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width,
      height: MediaQuery.sizeOf(context).height,
      decoration: const BoxDecoration(
        color: Colors.black,
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage('assets/img/bgimg.png'),
        ),
      ),
      child: SafeArea(
        bottom: false,
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            leading: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.arrow_back,
                  color: text1Color,
                  size: 40,
                )),
            title: Text(
              'Profile',
              style: TextStyle(
                fontSize: 22.sp,
                fontWeight: FontWeight.w400,
                color: text1Color,
              ),
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 10.sp,
                  ),
                  Container(
                    width: 336.w,
                    height: 370.h,
                    padding: const EdgeInsets.only(top: 5, left: 10, right: 10),
                    decoration: BoxDecoration(
                      color: const Color(0xff272323),
                      borderRadius: BorderRadius.circular(35.0),
                      image: const DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage('assets/img/cardTop.png'),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CircleAvatar(
                              radius: 30.sp,
                              backgroundImage: const AssetImage(
                                'assets/img/profile.png',
                              ),
                            ),
                            Column(
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      'Edit',
                                      style: TextStyle(
                                        fontSize: 25.sp,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10.w,
                                    ),
                                    GestureDetector(
                                      onTap: () {},
                                      child: SvgPicture.asset(
                                        'assets/img/editIcon.svg',
                                        width: 20.w,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 20.w,
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 15.h,
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        Text.rich(
                          TextSpan(
                              style: TextStyle(
                                fontSize: 24.sp,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                              text: 'Hello ',
                              children: const [
                                TextSpan(
                                    style: TextStyle(
                                      fontWeight: FontWeight.normal,
                                    ),
                                    text: "Ihza"),
                              ]),
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        CustomListTileProfile(
                          onTap: () => {},
                          leadingIcon: 'assets/img/genderIcon.svg',
                          title: 'Gender',
                          tralingIcon: 'assets/img/arrowd.svg',
                          showTrailingIcon: true,
                          showNumber: false,
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        CustomListTileProfile(
                          onTap: () => {},
                          leadingIcon: 'assets/img/mailIcon.svg',
                          title: 'abc@gmail.com',
                          showTrailingIcon: false,
                          showNumber: false,
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        CustomListTileProfile(
                          onTap: () => {},
                          leadingIcon: 'assets/img/locationIcon.svg',
                          title: 'Location',
                          tralingIcon: 'assets/img/locationTralingIcon.svg',
                          showTrailingIcon: true,
                          showNumber: false,
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        CustomListTileProfile(
                          onTap: () => {},
                          leadingIcon: 'assets/img/phone.svg',
                          title: ' 08434454535',
                          fontSize: 19,
                          //tralingIcon: 'assets/img/arrowd.svg',
                          showTrailingIcon: false,
                          showNumber: true,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10.sp,
                  ),
                  Text(
                    'Your Posts',
                    style: TextStyle(
                      fontSize: 24.sp,
                      color: text1Color,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  SizedBox(
                    height: 10.sp,
                  ),
                  SizedBox(
                    height: 580.h,
                    child: ListView.builder(
                        itemCount: 7,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return CustomYourPostCard(
                              productName: "iphone 12 mini",
                              productColor: "Black",
                              productLocation:
                                  "36 Gulid Street,Mall,Coimbatore",
                              dateAndTime: "23.05.2023 at 11:00 am",
                              rewardPrice: "10,000",
                              messagePersonName: "Jhon Elsenberg",
                              found: () {},
                              sharePost: () {},
                              deletePost: () {},
                              chatPost: () {},
                              toFeaturePost: () {},
                              index: index);
                        }),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  CustomBtn(
                      onTap: () {},
                      leadingIcon: "assets/img/logoutIcon.svg",
                      title: "Log Out"),
                  SizedBox(
                    height: 10.h,
                  ),
                  CustomBtn(
                      onTap: () {},
                      leadingIcon: "assets/img/deleteProfileIcon.svg",
                      title: "Delete Account"),
                  SizedBox(
                    height: 10.h,
                  ),
                  CustomBtn(
                      onTap: () {},
                      leadingIcon: "assets/img/termsAndConditionIcon.svg",
                      title: "Terms and Condition"),
                  SizedBox(
                    height: 10.h,
                  ),
                  CustomBtn(
                      onTap: () {},
                      leadingIcon: "assets/img/termsAndConditionIcon.svg",
                      title: "Terms and Condition"),
                  SizedBox(
                    height: 30.h,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
