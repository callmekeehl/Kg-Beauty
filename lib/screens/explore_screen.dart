import 'package:beauty_cos/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    late Size media = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: beigeColor,
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              color: secondaryColor,
            ),
          ),
          Positioned(
            top: media.height * 0.1,
              child: Container(
                height: 300.h,
                width: media.width,
                decoration: BoxDecoration(
                  color: Colors.transparent
                ),
                child: Column(
                  children: [
                    Text("Explore Categories", style: TextStyle(fontWeight: FontWeight.bold, color: brownColor, fontSize: 22.sp),),
                    SizedBox(height: 30.h,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                            height: 75.h,
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
                                  child: SvgPicture.asset("assets/icons/makeup.svg", color: crimsonColor,),
                                ),
                                Text("MakeUp", style: TextStyle(color: brownColor, fontSize: 16.sp, fontWeight: FontWeight.w200),)
                              ],
                            )
                        ),
                        Container(
                            height: 75.h,
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
                                  child: SvgPicture.asset("assets/icons/hair_care.svg", color: crimsonColor,),
                                ),
                                Text("Hair care", style: TextStyle(color: brownColor, fontSize: 16.sp, fontWeight: FontWeight.w200),)
                              ],
                            )
                        ),
                        Container(
                            height: 75.h,
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
                                  child: SvgPicture.asset("assets/icons/face_care.svg", color: crimsonColor,),
                                ),
                                Text("Face care", style: TextStyle(color: brownColor, fontSize: 16.sp, fontWeight: FontWeight.w200),)
                              ],
                            )
                        )
                      ],
                    ),
                    SizedBox(height: 25.h,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                            height: 75.h,
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
                                  child: SvgPicture.asset("assets/icons/perfume.svg", color: crimsonColor,),
                                ),
                                Text("Fragrance", style: TextStyle(color: brownColor, fontSize: 16.sp, fontWeight: FontWeight.w200),)
                              ],
                            )
                        ),
                        Container(
                            height: 75.h,
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
                                  child: SvgPicture.asset("assets/icons/hair_dryer.svg", color: crimsonColor,),
                                ),
                                Text("Appliance", style: TextStyle(color: brownColor, fontSize: 16.sp, fontWeight: FontWeight.w200),)
                              ],
                            )
                        ),
                      ],
                    )
                  ],
                ),
              )),

          Positioned(
            bottom: 0.h,
              child: Container(
                width: media.width,
                  height: media.height /2,
                  padding: EdgeInsets.symmetric(vertical: 10.h),
                  decoration: BoxDecoration(
                      color: beigeColor,
                    borderRadius: BorderRadius.only(topRight: Radius.circular(50.r), topLeft: Radius.circular(50.r))
                  ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 220,
                      width: 220,
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        image: DecorationImage(image: AssetImage("assets/images/night_cream.png"), fit: BoxFit.cover)
                      ),
                    ),
                    Text("Skin perfect", style: TextStyle(fontSize: 25.sp, fontWeight: FontWeight.bold, color: brownColor),),
                    Text("Night Cream", style: TextStyle(color: brownColor, fontWeight: FontWeight.w500, fontSize: 18.sp),),
                    Container(
                      height: 50,
                      decoration: BoxDecoration(
                        color: crimsonColor,
                        borderRadius: BorderRadius.circular(25)
                      ),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: crimsonColor
                        ),
                          onPressed: (){}, 
                          child: Text("\$234", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),)),
                    )
                  ],
                ),
          ))
        ],
      ),
    );
  }
}
