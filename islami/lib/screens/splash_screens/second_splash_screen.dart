import 'package:flutter/material.dart';
import 'package:islami/common/app_color.dart';
import 'package:islami/common/app_routes.dart';
import 'package:islami/gen/assets.gen.dart';

class SecondSplashScreen extends StatefulWidget {
  const SecondSplashScreen({super.key});

  @override
  State<SecondSplashScreen> createState() => _SecondSplashScreenState();
}

class _SecondSplashScreenState extends State<SecondSplashScreen> {

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3)).then((value) {
      Navigator.pushReplacementNamed(context, AppRoutes.introScreen );
    },);
    
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
backgroundColor: AppColor.black,
body: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,

            children: [
              SizedBox(height: 300),
              Assets.svg.logo.svg(
                // width: 190,
                height: 220,
                color: AppColor.gold,
              ),
              SizedBox(height: 150),
              Assets.images.routegold.image(height: 70),
              Text("Supervised by Mohamed Nabil",textAlign:TextAlign.center,style:TextStyle(color: AppColor.gold,fontSize: 14))
            ],
          ),

    );
  }
}