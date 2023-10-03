import 'package:flutter/material.dart';
import 'package:youtube/view/create/create.dart';
import 'package:youtube/view/home_screen/home_screen.dart';
import 'package:youtube/view/shorts/shorts.dart';
import 'package:youtube/view/subcription/sub.dart';
import 'package:youtube/view/youtube_library/youtube_library.dart';

class bottom_navi extends StatefulWidget {
  const bottom_navi({super.key});

  @override
  State<bottom_navi> createState() => _bottom_naviState();
}

class _bottom_naviState extends State<bottom_navi> {
   int _selectedindex = 0;
  @override
  Widget build(BuildContext context) {
    List _screen =[home_screen(),
    short(index: _selectedindex),
    create(),
    sub_screen(),
    youtube_library(),
    ];
    return Scaffold(body:_screen[_selectedindex],
    
      bottomNavigationBar:BottomNavigationBar( type: BottomNavigationBarType.fixed,
        currentIndex: _selectedindex,
        onTap: (i) => setState(() => _selectedindex = i),
        selectedFontSize: 13.0,
        unselectedFontSize: 10,
        backgroundColor: Colors.black,

        items:[BottomNavigationBarItem(icon: Icon(Icons.home,color:Colors.white),label:'home'),
      BottomNavigationBarItem(icon: Icon(Icons.explore,color:Colors.white),label:'explore'),
      BottomNavigationBarItem(icon: Icon(Icons.add_circle_outline,color:Colors.white),label:'create'),
       BottomNavigationBarItem(icon: Icon(Icons.subscriptions,color:Colors.white),label:'subscriptions'),
        BottomNavigationBarItem(icon: Icon(Icons.video_library,color:Colors.white,),label:'library'),
      ],

      
      ),);
  }
}