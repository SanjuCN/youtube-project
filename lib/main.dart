import 'package:flutter/material.dart';
import 'package:youtube/view/home_screen/home_screen.dart';
import 'package:youtube/view/profile/profile.dart';
import 'package:youtube/view/shorts%20create/shorts_create.dart';
import 'package:youtube/view/shorts/shorts.dart';
import 'package:youtube/view/splash%20screen/splash_screen.dart';
import 'package:youtube/view/subcription/sub.dart';
void main() {
  runApp(const youtube());
}

class youtube extends StatelessWidget {
  
  const youtube({super.key});

  @override
  Widget build(BuildContext context) {

    
    return MaterialApp(debugShowCheckedModeBanner: false, 
      home: splash_screen(),
    );
  }
}
