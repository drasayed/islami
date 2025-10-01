import 'package:flutter/material.dart';
import 'package:islami/common/app_routes.dart';
import 'package:islami/gen/assets.gen.dart';
import 'package:islami/screens/splash_screens/first_splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Islami App',
      debugShowCheckedModeBanner: false,
initialRoute: AppRoutes.firstSplashScreen,
      routes: {
        AppRoutes.firstSplashScreen: (context) => const FirstSplashScreen()
      },
    
      
      // theme: ThemeData(
        
      //   colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      // ),
      // home:  Container(decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assetName"))),
    );
  }
}

