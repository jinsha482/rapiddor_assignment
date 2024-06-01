import 'package:flutter/material.dart';
import 'package:rapiddoreproject/global/constants/assets/asset_constants.dart';
import 'package:rapiddoreproject/global/styles/colors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
   @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3),(){
      Navigator.pushNamed(context, 'product-list');
    });
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(backgroundColor: kWhite,
    body: Column(mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
      children: [
       Center(child: Image.asset(rapiddor,width: 200,))
      ],
    ),);
  }
}