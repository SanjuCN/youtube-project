import 'package:flutter/material.dart';
import 'package:youtube/utils/image_constasnt/image_constant.dart';
import 'package:youtube/utils/text_constant/text_constant.dart';
import 'package:youtube/view/home_screen/videoscreen.dart';
import 'package:youtube/view/profile/profile.dart';
import 'package:youtube/view/search_screen/search_screen.dart';
import 'package:youtube/view/shorts/shorts.dart';
import 'package:youtube/view/subcription/sub.dart';
import 'package:youtube/view/youtube_library/youtube_library.dart';

class home_screen extends StatefulWidget {
  const home_screen({super.key});

  @override
  State<home_screen> createState() => _home_screenState();
}

class _home_screenState extends State<home_screen> {
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
      body: Column(
        children: [
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
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  videoscreen(index: _selectedindex),
                            ));
                      },
                      child: Container(
                        height: 200,
                        width: double.infinity,
                        padding: EdgeInsets.all(5),
                        child: Image.asset(imageconstant.mylist[index],
                            fit: BoxFit.fitWidth),
                      ),
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
