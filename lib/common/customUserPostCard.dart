// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import 'package:losttip/color.dart';

class CustomYourPostCard extends StatefulWidget {
  const CustomYourPostCard({
    Key? key,
    required this.productName,
    required this.productColor,
    required this.productLocation,
    required this.dateAndTime,
    required this.rewardPrice,
    required this.messagePersonName,
    required this.found,
    required this.sharePost,
    required this.deletePost,
    required this.chatPost,
    required this.toFeaturePost,
    this.index = 0,
  }) : super(key: key);
  final String productName;
  final String productColor;
  final String productLocation;
  final String dateAndTime;
  final String rewardPrice;
  final String messagePersonName;
  final VoidCallback found;
  final VoidCallback sharePost;
  final VoidCallback deletePost;
  final VoidCallback chatPost;
  final VoidCallback toFeaturePost;
  final int index;
  @override
  State<CustomYourPostCard> createState() => _CustomYourPostCardState();
}

class _CustomYourPostCardState extends State<CustomYourPostCard> {
  int _currentIndex = 0;

  final List<String> _imageList = [
    "assets/img/postImg.png",
    "assets/img/postImg1.png",
    "assets/img/profile.png",
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 237.w,
          height: 490.h,
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18),
            color: widget.index / 2 == 0 ? text1Color : Colors.white,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 218.w,
                height: 131.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  color: bgColor,
                ),
                child: Stack(
                  children: [
                    Container(
                      width: 218.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12.0)),
                      child: CarouselSlider(
                        options: CarouselOptions(
                          aspectRatio: 20 / 20,
                          viewportFraction: 1.0,
                          onPageChanged: (index, reason) {
                            setState(() {
                              _currentIndex = index;
                            });
                          },
                        ),
                        items: _imageList
                            .map((item) => ClipRRect(
                                  borderRadius: BorderRadius.circular(12.0),
                                  child: Image.asset(
                                    item,
                                    width: double.infinity,
                                    height: double.infinity,
                                    fit: BoxFit.fill,
                                  ),
                                ))
                            .toList(),
                      ),
                    ),
                    Positioned(
                      top: 10,
                      left: 10,
                      child: Container(
                        width: 45.w,
                        height: 45.h,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 5, vertical: 5),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          children: [
                            Text(
                              'JUN',
                              style: TextStyle(
                                fontSize: 12.sp,
                                color: text1Color,
                              ),
                            ),
                            Text(
                              '10',
                              style: TextStyle(
                                fontSize: 8.sp,
                                color: text1Color,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                        bottom: 8,
                        right: 10,
                        left: 10,
                        child: DotsIndicator(
                          dotsCount: _imageList.length,
                          position: _currentIndex.toDouble(),
                          decorator: DotsDecorator(
                            activeColor: Colors.white,
                            size: const Size.square(9.0),
                            activeSize: const Size(18.0, 9.0),
                            activeShape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                          ),
                        )),
                    Positioned(
                      bottom: 10,
                      right: 10,
                      child: GestureDetector(
                        onTap: widget.sharePost,
                        child: SvgPicture.asset('assets/img/shareIconCard.svg'),
                      ),
                    ),
                    Positioned(
                      top: 10,
                      right: 10,
                      child: GestureDetector(
                        onTap: widget.deletePost,
                        child: SvgPicture.asset('assets/img/deleteBtnCard.svg'),
                      ),
                    ),
                    widget.index / 2 == 1
                        ? Positioned(
                            left: 10,
                            bottom: 10,
                            child: Container(
                              width: 34.w,
                              height: 16.h,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: text1Color,
                                borderRadius: BorderRadius.circular(3),
                              ),
                              child: Text(
                                'Ad',
                                style: TextStyle(
                                  fontSize: 11.sp,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          )
                        : SizedBox()
                  ],
                ),
              ),
              SizedBox(height: 5.sp),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    widget.productName,
                    style: TextStyle(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  InkWell(
                    onTap: widget.toFeaturePost,
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      width: 65.w,
                      height: 26.h,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: bgColor,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text(
                        "To Feature",
                        style: TextStyle(
                          fontSize: 11.sp,
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  )
                ],
              ),
              Text(
                'if i lost my spare phone (not 4)',
                style: TextStyle(
                  fontSize: 11.sp,
                  fontWeight: FontWeight.w500,
                  color: yourPostTextColor,
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Text(
                'Product Color',
                style: TextStyle(
                  fontSize: 13.sp,
                  fontWeight: FontWeight.w400,
                  color: yourPostTextColor,
                ),
              ),
              Text(
                widget.productColor,
                style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
                  color: yourPostTextColor,
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Text(
                'Location',
                style: TextStyle(
                  fontSize: 13.sp,
                  fontWeight: FontWeight.w400,
                  color: yourPostTextColor,
                ),
              ),
              Text(
                widget.productLocation,
                style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
                  color: yourPostTextColor,
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Text(
                'Date & Time',
                style: TextStyle(
                  fontSize: 13.sp,
                  fontWeight: FontWeight.w400,
                  color: yourPostTextColor,
                ),
              ),
              Text(
                widget.dateAndTime,
                style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
                  color: yourPostTextColor,
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Text(
                'Reward',
                style: TextStyle(
                  fontSize: 13.sp,
                  fontWeight: FontWeight.w400,
                  color: yourPostTextColor,
                ),
              ),
              Text(
                "\u{20B9} ${widget.rewardPrice}/-",
                style: TextStyle(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.bold,
                  color: yourPostTextColor,
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Message',
                        style: TextStyle(
                          fontSize: 13.sp,
                          fontWeight: FontWeight.w400,
                          color: yourPostTextColor,
                        ),
                      ),
                      Text(
                        widget.messagePersonName,
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                          color: yourPostTextColor,
                        ),
                      ),
                    ],
                  ),
                  GestureDetector(
                      onTap: widget.found,
                      child: SvgPicture.asset('assets/img/cardChatIcon.svg'))
                ],
              )
            ],
          ),
        ),
        SizedBox(
          height: 25.h,
        ),
        GestureDetector(
          onTap: widget.found,
          child: Container(
            width: 237.w,
            height: 50.h,
            alignment: Alignment.center,
            margin: const EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              color: widget.index / 2 == 0 ? text1Color : Colors.transparent,
              borderRadius: BorderRadius.circular(26),
              border: Border.all(
                color: widget.index / 2 == 0 ? text1Color : Colors.white,
                width: 1,
              ),
            ),
            child: Text(
              'FOUND',
              style: TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.bold,
                color: widget.index / 2 == 0 ? Colors.black : Colors.white,
              ),
            ),
          ),
        )
      ],
    );
  }
}
