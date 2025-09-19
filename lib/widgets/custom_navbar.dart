import 'package:beauty_cos/constants/colors.dart';
import 'package:beauty_cos/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomNavbar extends StatefulWidget {
   CustomNavbar({super.key});

  @override
  State<CustomNavbar> createState() => _CustomNavbarState();

  List <Widget> _pageList = [
    HomeScreen(),
    Center(child: Text("Favorite Page"),),
    Center(child: Text("Notification Page"),),
    Center(child: Text("Search Page"),),

  ];
}

class _CustomNavbarState extends State<CustomNavbar> {
  int _selectedIndex = 0;

  void _pageSelection(int index){
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widget._pageList[_selectedIndex],
      backgroundColor: beigeColor,
      bottomNavigationBar: Container(
          decoration: BoxDecoration(

              color: Colors.white,
              borderRadius: BorderRadius.only(topRight: Radius.circular(30.r), topLeft: Radius.circular(30.r))
          ),
          child: ClipRRect(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(30.r),
                topLeft: Radius.circular(30.r),
          ),

            child: Container(
              padding: EdgeInsets.only(bottom: 25.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildNavItem("assets/icons/home.svg", 0),
                  _buildNavItem("assets/icons/favorite2.svg", 1),
                  _buildNavItem("assets/icons/notification.svg", 2),
                  _buildNavItem("assets/icons/search.svg", 3),
                ],
              ),
            ),
        ),
    ));
  }

  _buildNavItem(String icon, int index){
    return Container(
      decoration: BoxDecoration(
          color: Colors.transparent
      ),
      child: IconButton(onPressed: ()=>_pageSelection(index),
          icon: SvgPicture.asset(icon, height: 30.h, width: 30.w,
            color: _selectedIndex == index? crimsonColor : orangeColor,)
      ),
    );
  }
}
