import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:goldapp/goldapp.dart';

class  Splashscreen extends StatefulWidget {
  const Splashscreen ({super.key});

  @override
  State<Splashscreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<Splashscreen>{

@override
void initState() {
  super.initState();
  Future.delayed(Duration(seconds: 6), ()
  {
    Get.to(()=>GoldappScreen());

  });
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(image: AssetImage('lib/Assets/gold80.jpg'), height: 500,),



        ],
      ),
    ),
    );
  }
}



