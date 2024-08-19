import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:losttip/color.dart';

class CustomBtn extends StatelessWidget {
  const CustomBtn({
    super.key,
    required this.onTap,
    required this.leadingIcon,
    required this.title,
  });
  final VoidCallback onTap;
  final String leadingIcon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(12.0),
      child: Container(
        width: MediaQuery.sizeOf(context).width,
        height: 50.h,
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
        decoration: BoxDecoration(
          border: Border.all(
            color: text1Color,
            width: 1.0,
          ),
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(children: [
              Container(
                width: 28.w,
                height: 28.w,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: bgColor,
                  borderRadius: BorderRadius.circular(7),
                ),
                child: SvgPicture.asset(leadingIcon),
              ),
              SizedBox(
                width: 10.w,
              ),
              Text(
                title,
                style: TextStyle(
                  fontSize: 16.sp,
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ]),
          ],
        ),
      ),
    );
  }
}
