import 'package:beauty_cos/constants/colors.dart';
import 'package:beauty_cos/screens/home_screen.dart';
import 'package:beauty_cos/widgets/custom_navbar.dart';
import 'package:flutter/material.dart';


class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    // Wait 3 seconds then navigate to home
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) =>  CustomNavbar()),
      );
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold( body: Stack(
      fit: StackFit.expand,
      children: [
        Container(
          decoration: BoxDecoration(
              color: beigeColor
          ),
        ),
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/images/logo.png", fit: BoxFit.fitWidth,)
            ],
          ),
        )
        ,
      ],
    ),
    );
  }
}