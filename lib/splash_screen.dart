import 'dart:async';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import 'login_page.dart';

class SplashShop extends StatefulWidget {
  const SplashShop({super.key});

  @override
  State<SplashShop> createState() => _SplashShopState();
}

class _SplashShopState extends State<SplashShop> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const LoginPageScreen(),
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Lottie.asset('assets/animation_llw4jp10.json',
                height: 150, width: 150),
          )
        ],
      ),
    );
  }
}
