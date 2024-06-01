import 'package:flutter/material.dart';
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
    Future.delayed(const Duration(seconds: 2),(){
      Navigator.pushNamed(context, 'product-list');
    });
  }
  @override
  Widget build(BuildContext context) {
    return const Scaffold(backgroundColor: kBg,);
  }
}