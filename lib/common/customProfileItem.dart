import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:losttip/color.dart';

class CustomListTileProfile extends StatelessWidget {
  CustomListTileProfile(
      {super.key,
      required this.onTap,
      required this.leadingIcon,
      required this.title,
      this.tralingIcon = 'assets/img/arrowd.svg',
      required this.showTrailingIcon,
      required this.showNumber,
      this.fontSize = 14});
  final VoidCallback onTap;
  final String leadingIcon;
  final String title;
  final String tralingIcon;
  final bool showTrailingIcon;
  final double fontSize;
  final bool showNumber;

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
            color: Colors.black,
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
              if (showNumber == true)
                Row(
                  children: [
                    Text(
                      '+91',
                      style: TextStyle(
                        fontSize: 19.sp,
                        color: bgColor,
                      ),
                    ),
                    SvgPicture.asset('assets/img/arrowd.svg')
                  ],
                )
              else
                const SizedBox(),
              Text(
                title,
                style: TextStyle(
                  fontSize: fontSize.sp,
                  color: bgColor,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ]),
            if (showTrailingIcon == true)
              SvgPicture.asset(tralingIcon)
            else
              SizedBox()
          ],
        ),
      ),
    );
  }
}
