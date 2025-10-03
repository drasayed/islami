import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:islami/common/app_color.dart';
import 'package:islami/common/app_routes.dart';
import 'package:islami/gen/assets.gen.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({super.key});

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      globalBackgroundColor: AppColor.black,
      showBackButton: true,
      controlsMargin: EdgeInsets.symmetric(horizontal: 24, vertical: 20),

      globalHeader: SafeArea(
        child: Assets.images.wellcomHeader.image(width: 250, height: 150),
      ),
      pages: [firstPage, secondPage,thirdPage,fourth,fifthPage],
      next: const Text(
        "Next",
        style: TextStyle(fontWeight: FontWeight.w700, color: AppColor.textGold),
        textAlign:TextAlign.end
      ),
      done: const Text(
        "Finish",
        style: TextStyle(fontWeight: FontWeight.w700, color: AppColor.textGold),
      ),
      back: Text(
        'Back',
        style: TextStyle(fontWeight: FontWeight.w700, color: AppColor.textGold),
      ),
      onDone: () {
  Navigator.pushReplacementNamed(context, AppRoutes.mainScreen);
},    
      dotsDecorator: DotsDecorator(
        size: const Size.square(7.0),
        activeSize: const Size(18.0, 7.0),
        activeColor: AppColor.textGold,
        color: AppColor.grey,
        spacing: const EdgeInsets.symmetric(horizontal: 3.0),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25.0),
        ),
      ),
    );
  }
}

PageViewModel firstPage = PageViewModel(
  titleWidget: Padding(
    padding: const EdgeInsets.symmetric(vertical: 15),
    child: Text(
      'Welcome To Islmi App',
      style: TextStyle(
        color: AppColor.textGold,
        fontWeight: FontWeight.bold,
        fontSize: 22,
      ),
    ),
  ),
  bodyWidget: Text(
    '',
    textAlign: TextAlign.center,
    style: TextStyle(
      color: AppColor.textGold,
      fontWeight: FontWeight.bold,
      fontSize: 16,
    ),
  ),
  //
  image: Assets.images.welcomIntro.image(),
  decoration: PageDecoration(
imageFlex : 7,
  bodyFlex : 1,
footerFlex :1,
imagePadding : const EdgeInsets.only(top: 80,left: 10,right: 10),
  )
);

PageViewModel secondPage = PageViewModel(
  titleWidget: Padding(
    padding: const EdgeInsets.symmetric(vertical: 15),
    child: Text(
      'Welcome To Islami',
      style: TextStyle(
        color: AppColor.textGold,
        fontWeight: FontWeight.bold,
        fontSize: 20,
      ),
    ),
  ),
  bodyWidget: Text(
    'We Are Very Excited To Have You In Our Community',
    textAlign: TextAlign.center,
    style: TextStyle(
      color: AppColor.textGold,
      fontWeight: FontWeight.bold,
      fontSize: 16,
    ),
  ),
  //
  image: Assets.images.kabba.image(),
  decoration: PageDecoration(
imageFlex : 7,
  bodyFlex : 2,
footerFlex :2,
imagePadding : const EdgeInsets.all(26.0),
  )
);

PageViewModel thirdPage = PageViewModel(
  titleWidget: Padding(
    padding: const EdgeInsets.symmetric(vertical: 15),
    child: Text(
      'Reading the Quran',
      style: TextStyle(
        color: AppColor.textGold,
        fontWeight: FontWeight.bold,
        fontSize: 20,
      ),
    ),
  ),
  bodyWidget: Text(
    'Read, and your Lord is the Most Generous',
    textAlign: TextAlign.center,
    style: TextStyle(
      color: AppColor.textGold,
      fontWeight: FontWeight.bold,
      fontSize: 16,
    ),
  ),
  //
  image: Assets.images.welcome.image(),
  decoration: PageDecoration(
imageFlex : 7,
  bodyFlex : 2,
footerFlex :2,
imagePadding : const EdgeInsets.only(top: 210),

  )
);

PageViewModel fourth = PageViewModel(
  titleWidget: Padding(
    padding: const EdgeInsets.symmetric(vertical: 15),
    child: Text(
      'Bearish',
      style: TextStyle(
        color: AppColor.textGold,
        fontWeight: FontWeight.bold,
        fontSize: 20,
      ),
    ),
  ),
  bodyWidget: Text(
    'Praise the name of your Lord, the Most High',
    textAlign: TextAlign.center,
    style: TextStyle(
      color: AppColor.textGold,
      fontWeight: FontWeight.bold,
      fontSize: 16,
    ),
  ),
  //
  image: Assets.images.bearish.image(),
  decoration: PageDecoration(
imageFlex : 7,
  bodyFlex : 2,
footerFlex :2,
imagePadding : const EdgeInsets.only(top: 210),

  )
);

PageViewModel fifthPage = PageViewModel(
  titleWidget: Padding(
    padding: const EdgeInsets.symmetric(vertical: 15),
    child: Text(
      'Holy Quran Radio',
      style: TextStyle(
        color: AppColor.textGold,
        fontWeight: FontWeight.bold,
        fontSize: 20,
      ),
    ),
  ),
  bodyWidget: Text(
    'WYou can listen to the Holy Quran Radio through the application for free and easily',
    textAlign: TextAlign.center,
    style: TextStyle(
      color: AppColor.textGold,
      fontWeight: FontWeight.bold,
      fontSize: 16,
    ),
  ),
  //
  image: Assets.images.radio.image(),
  decoration: PageDecoration(
imageFlex : 7,
  bodyFlex : 2,
footerFlex :2,
imagePadding : const EdgeInsets.only(top: 210),

  )
);
