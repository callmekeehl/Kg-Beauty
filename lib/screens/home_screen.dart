import 'package:beauty_cos/constants/colors.dart';
import 'package:beauty_cos/widgets/categorie_card.dart';
import 'package:beauty_cos/widgets/popular_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatefulWidget {
   HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
  
  List <CategorieCard> _catCard = [
    CategorieCard(icon: "assets/icons/makeup.svg", label: "Makeup"),
    CategorieCard(icon: "assets/icons/face_care.svg", label: "Skin care"),
    CategorieCard(icon: "assets/icons/hair_care.svg", label: "Hair care"),
    CategorieCard(icon: "assets/icons/perfume.svg", label: "Fragrance"),
    CategorieCard(icon: "assets/icons/hair_dryer.svg", label: "Appliances"),

  ];

  List <PopularCard> _popList = [
    PopularCard(image: "assets/images/face_cream.png", type: "Skin Perfect", label: "Face cream"),
    PopularCard(image: "assets/images/body_lotion.png", type: "Skin Perfect", label: "Body lotion"),
    PopularCard(image: "assets/images/toner.png", type: "Skin Perfect", label: "Toner"),
    PopularCard(image: "assets/images/night_cream.png", type: "Skin Perfect", label: "Nigth cream"),

  ];


}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: beigeColor,
      appBar: AppBar(
        backgroundColor: beigeColor,
        leading: IconButton(
            onPressed: (){},
            icon: SvgPicture.asset("assets/icons/menu.svg", height: 40.h, color: brownColor,)
        ),
          actions: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10.w),
              decoration: BoxDecoration(
                color: orangeColor,
                shape: BoxShape.circle
              ),
              child: SvgPicture.asset("assets/icons/account.svg"),
            )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(padding: EdgeInsets.symmetric(horizontal: 15.w),
          child: Column(
            children: [
              // Header text row
              Row(
                children: [
                  Text("Beauty\nCosmetics", style: TextStyle(color: brownColor, fontSize: 45, fontWeight: FontWeight.w800, height: 1.3.h),)
                ],
              ),
              SizedBox(height: 10.h,),
              // Categories title row
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Categories", style: TextStyle(color: brownColor, fontSize: 20, fontWeight: FontWeight.bold),),
                  IconButton(onPressed: (){}, icon: Icon(Icons.more_horiz_outlined, color: brownColor, size: 25.r,))
                ],
              ),

              // categories list Row
              SizedBox(
                height: 75.h,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: widget._catCard.length,
                    itemBuilder: (context, int index) {
                      return widget._catCard[index];
                    }
                ),
              ),

              SizedBox(height: 10.h,),
              // Popular items title row
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Popular items", style: TextStyle(color: brownColor, fontSize: 20, fontWeight: FontWeight.bold),),
                  IconButton(onPressed: (){}, icon: Icon(Icons.more_horiz_outlined, color: brownColor, size: 25.r,))
                ],
              ),
              SizedBox(
                height: 449.h,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: widget._popList.length,
                    itemBuilder: (context, int index){
                      return widget._popList[index];
                    }),
              )
            ],
          ),),
      )
    );
  }
}
