import 'package:beauty_cos/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DetailScreen extends StatefulWidget {
   DetailScreen({super.key, required this.image, required this.type, required this.label});

  final String image;
  final String type;
  final String label;

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  late Size media = MediaQuery.of(context).size;
  bool _isTapped = false;
  int _number = 0;
  void _onTap(){
    setState(() {
      _isTapped = !_isTapped;
    });
  }

  void _increment(){
    setState(() {
      _number ++;
    });
  }

  void _decrement(){
    setState(() {
      _number --;
      if (_number <= 0){
        _number = 0;
      };
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: beigeColor,
      body: Stack(
        children: [
          Container(
            color: beigeColor,
          ),
          Positioned(
            left: MediaQuery.of(context).size.width * 0.3,
              child: Container(
                height: MediaQuery.of(context).size.height * 0.5,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: orangeColor,
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(50.r))
                ),
              )),
          Positioned(
            top: media.height * 0.2,
            right: media.width * 0.2,
            height: 400.h,
              width: 200.w,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  image: DecorationImage(image: AssetImage(widget.image), fit: BoxFit.cover)
                ),
              )),
          Positioned(
            left: media.width * 0.1,
            bottom: media.height * 0.03,
              child: Container(
                height: media.height * 0.4,
                  width: media.width * 0.8,
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(widget.label, style: TextStyle(fontSize: 35, color: brownColor, fontWeight: FontWeight.bold, height: 2),),
                      Container(
                        height: 40.h,
                        width: 70.w,
                        padding: EdgeInsets.symmetric(horizontal: 6.w),
                        decoration: BoxDecoration(
                            color: orangeColor,
                            borderRadius: BorderRadius.circular(15)
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(Icons.star, color: brownColor,),
                            Text("+1", style: TextStyle(color: brownColor, fontSize: 18.sp),)
                          ],
                        ),
                      )
                    ],
                  ),
                  Text(widget.type, style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500,height: -1),),
                  Text("Lotion", style: TextStyle(height: 1.h),),
                  Text("Lorem ipsum dolor sit amet, consectetur"
                      "\nadipiscing elit, sed do eiusmod tempor "
                      "\nincididunt ut labore et dolore magna aliqua."
                      "\nUt enim ad minim veniam, quis nostrud"
                      "\nexercitation",
                    style: TextStyle(fontSize: 16.5.sp, color: brownColor, height: 1.7),),
                  Stack(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: crimsonColor,
                          borderRadius: BorderRadius.circular(30.r)
                        ),
                        height: 60.h,
                        width: media.width,
                        padding: EdgeInsets.symmetric(horizontal: 10.w),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text("\$321", style: TextStyle(fontSize: 18.sp, color: Colors.white, fontWeight: FontWeight.bold),)
                          ],
                        ),
                       
                      ),
                      Positioned(
                        right: 0.w,
                          child: Container(
                            padding: EdgeInsets.symmetric(vertical: 5.h, horizontal: 15.w),
                            height: 60.h,
                            width: media.width * 0.6,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30.r),
                                color: Colors.white
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Add to cart", style: TextStyle(
                                    color: crimsonColor,
                                    fontSize: 18.sp,
                                    fontWeight: FontWeight.w800),
                                ),
                                Container(
                                  height: 40.h,
                                  width: 40.w,
                                  decoration: BoxDecoration(
                                    color: crimsonColor,
                                    borderRadius: BorderRadius.circular(15.r)
                                  ),
                                  child: SvgPicture.asset("assets/icons/cart.svg", color: Colors.white,),
                                )
                              ],
                            ),
                          ))
                    ],
                  )
                ],
              ))),

          Positioned(
            right: media.width * 0.2,
              bottom: media.height * 0.48,
              child: Container(
                height: 60.h,
                width: 60.w,
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle
                ),
                child: IconButton(
                    onPressed: _onTap,
                    icon: _isTapped? Icon(Icons.favorite_border, color: crimsonColor,) : Icon(Icons.favorite, color: crimsonColor,)),
              )),
          Positioned(
            top: media.height * 0.2,
              left: media.width * 0.25,
              child: Container(
                height: 150.h,
                width: 50.w,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20.r)
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(onPressed: _increment, icon: Icon(Icons.add, color: crimsonColor,)),
                    Text(_number.toString(), style: TextStyle(fontSize: 18.sp, color: crimsonColor),),
                    IconButton(onPressed: _decrement, icon: Icon(Icons.remove, color: crimsonColor,))

                  ],
                ),
              )),
          Positioned(
            top: media.height * 0.06,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 10.w),
                  height: 50,
                  width: media.width,
                  decoration: BoxDecoration(
                    color: Colors.transparent
                  ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                        onPressed: (){
                          Navigator.pop(context);
                        },
                        icon: SvgPicture.asset("assets/icons/left.svg", height: 30.h, color: crimsonColor,)
                    ),
                    IconButton(
                        onPressed: (){},
                        icon: SvgPicture.asset("assets/icons/cart.svg", height: 30.h,color: crimsonColor,)
                    )
                  ],
                ),
          ))
        ],
      ),
    );
  }
}
