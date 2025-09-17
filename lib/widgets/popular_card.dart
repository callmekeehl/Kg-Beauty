import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../constants/colors.dart';

class PopularCard extends StatefulWidget {
   PopularCard({super.key, required this.image, required this.type, required this.label});
  final String image;
  final String type;
  final String label;

  @override
  State<PopularCard> createState() => _PopularCardState();
}

class _PopularCardState extends State<PopularCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15.w),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Stack(
            children: [
              Container(
                height: 320.h,
                width: 230.w,
                color: Colors.transparent,
              ),
              Positioned(
                bottom: 0.h,
                child: Container(
                  height: 230.h,
                  width: 230.w,
                  decoration: BoxDecoration(
                      color: orangeColor,
                      borderRadius: BorderRadius.circular(50.r)
                  ),
                ),),
              Positioned(
                  right: 15.w,
                  bottom: 0.h,
                  child: Container(
                    height: 330.h,
                    width: 200.w,
                    decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage(widget.image), fit: BoxFit.fitHeight)
                    ),
                  )),
               Positioned(
                 right: 0,
                   child: Container(
                 decoration: BoxDecoration(
                   color: Colors.transparent
                 ),
                 child: IconButton(
                     onPressed: (){},
                     icon: SvgPicture.asset("assets/icons/favorite.svg", height: 20.h, color: Colors.grey,)),
               ))
            ],
          ),
          Text(widget.type, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22.sp, color: brownColor),),
          Text(widget.label, style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16.sp,),),
          SvgPicture.asset("assets/icons/arrow.svg", height: 30.h, width: 80.w, color: brownColor,),

        ],
      ),
    )
    ;
  }
}
