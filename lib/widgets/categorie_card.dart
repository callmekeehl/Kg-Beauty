import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../constants/colors.dart';

class CategorieCard extends StatefulWidget {
   CategorieCard({super.key, required this.icon, required this.label});
  final String icon;
  final String label;

  @override
  State<CategorieCard> createState() => _CategorieCardState();
}

class _CategorieCardState extends State<CategorieCard> {

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 60.h,
        width: 100.w,
        color: Colors.transparent,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: 50.h,
              width: 50.w,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20.r)
              ),
              child: SvgPicture.asset(widget.icon, color: crimsonColor,),
            ),
            Text(widget.label, style: TextStyle(color: brownColor, fontSize: 16.sp, fontWeight: FontWeight.w200),)
          ],
        )
    );
  }
}
