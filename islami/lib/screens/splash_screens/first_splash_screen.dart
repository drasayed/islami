import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:islami/common/app_color.dart';
import 'package:islami/gen/assets.gen.dart';

class FirstSplashScreen extends StatelessWidget {
  const FirstSplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: Assets.images.splashScreen.provider(),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,

            children: [
              SizedBox(height: 300),
              Assets.images.islamiLogo.image(
                // width: 190,
                height: 190,
                color: AppColor.gold,
              ),
              SizedBox(height: 190),
              Assets.images.routegold.image(height: 70),
              Text("Supervised by Mohamed Nabil",textAlign:TextAlign.center,style:TextStyle(color: AppColor.gold,fontSize: 14))
            ],
          ),
        ],
      ),
    );
  }
}
