import 'package:flutter/material.dart';
import 'package:youtube/utils/image_constasnt/image_constant.dart';
import 'package:youtube/utils/text_constant/text_constant.dart';
import 'package:youtube/view/home_screen/home_screen.dart';
import 'package:youtube/view/profile/profile.dart';
import 'package:youtube/view/search_screen/search_screen.dart';
import 'package:youtube/view/shorts/shorts.dart';
import 'package:youtube/view/youtube_library/youtube_library.dart';

class sub_screen extends StatefulWidget {
  const sub_screen({super.key});

  @override
  State<sub_screen> createState() => _sub_screenState();
}

class _sub_screenState extends State<sub_screen> {
  int _selectedindex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Container(
            height: 35, width: 120, child: Image.asset("assets/logo.png")),
        actions: [
          InkWell(
            onTap: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: Text('Connect to a device'),
                    content: Text("No device found"),
                    actions: <Widget>[
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: Text('Close'),
                      ),
                    ],
                  );
                },
              );
            },
            child: Icon(Icons.cast),
          ),
          SizedBox(
            width: 10,
          ),
          Icon(
            Icons.notifications,
            color: Colors.white,
          ),
          SizedBox(
            width: 10,
          ),
          InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SearchScreen(),
                    ));
              },
              child: Icon(
                Icons.search,
                color: Colors.white,
              )),
          SizedBox(
            width: 15,
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => profile(),
                  ));
            },
            child: CircleAvatar(
              radius: 15,
              foregroundImage: NetworkImage(
                  "https://i.pinimg.com/474x/0f/39/49/0f39498452e2d32ba60037691c2bd7d4--robert-downey-jr-ironman.jpg"),
            ),
          ),
          SizedBox(
            width: 18,
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedindex,
        onTap: (i) => setState(() => _selectedindex = i),
        selectedFontSize: 13.0,
        unselectedFontSize: 10,
        backgroundColor: Colors.black,
        items: [
          BottomNavigationBarItem(
              icon: InkWell(
                  onTap: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => home_screen(),
                        ));
                  },
                  child: Icon(Icons.home, color: Colors.white)),
              label: 'home'),
          BottomNavigationBarItem(
              icon: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => short(index: _selectedindex),
                        ));
                  },
                  child: Icon(Icons.explore, color: Colors.white)),
              label: 'explore'),
          BottomNavigationBarItem(
              icon: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => short(index: _selectedindex),
                        ));
                  },
                  child: Icon(Icons.add_circle_outline, color: Colors.white)),
              label: 'add_circle_outline'),
          BottomNavigationBarItem(
              icon: InkWell(
                  onTap: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => sub_screen(),
                        ));
                  },
                  child: Icon(Icons.subscriptions, color: Colors.white)),
              label: 'subscriptions'),
          BottomNavigationBarItem(
              icon: InkWell(
                  onTap: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => youtube_library(),
                        ));
                  },
                  child: Icon(
                    Icons.video_library,
                    color: Colors.white,
                  )),
              label: 'library'),
        ],
      ),
      body: Column(
        children: [
          Container(
            height: 120,
            child: ListView.builder(
              itemCount: imageconstant.mylist.length,
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 35,
                      backgroundImage: AssetImage(imageconstant.mylist[index]),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      texconstant.mytext[index],
                      style: TextStyle(fontSize: 13, color: Colors.white),
                    )
                  ],
                ),
              ),
            ),
          ),
          Container(
            height: 40,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: texconstant.mytext.length,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.all(5),
                child: Container(
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18),
                        color: Colors.grey),
                    padding: EdgeInsets.all(5),
                    child: Text(texconstant.mytext[index]),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: imageconstant.mylist.length,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.all(5),
                child: Column(
                  children: [
                    Container(
                      height: 200,
                      width: double.infinity,
                      padding: EdgeInsets.all(5),
                      color: Colors.black,
                      child: Image.asset(imageconstant.mylist[index],
                          fit: BoxFit.fitWidth),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        child: Row(
                          children: [
                            CircleAvatar(
                              backgroundImage:
                                  AssetImage(imageconstant.mylist[index]),
                              radius: 18,
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 168),
                                  child: Text(
                                    "gaming stream",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 15),
                                  ),
                                ),
                                SizedBox(
                                  height: 1,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 90),
                                  child: Text(
                                    "gaming stream . 1 lakh views . 10 hours ago",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 9),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
