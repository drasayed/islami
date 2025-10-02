import 'package:flutter/material.dart';
import 'package:islami/common/app_color.dart';
import 'package:islami/common/app_routes.dart';
import 'package:islami/gen/assets.gen.dart';

class FirstSplashScreen extends StatefulWidget {
  const FirstSplashScreen({super.key});

  @override
  State<FirstSplashScreen> createState() => _FirstSplashScreenState();
}

class _FirstSplashScreenState extends State<FirstSplashScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 3)).then((value) {
      Navigator.pushReplacementNamed(context, AppRoutes.secondSplashScreen);
    },);
  }
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
