import 'package:flutter/material.dart';
import 'package:youtube/utils/image_constasnt/image_constant.dart';
import 'package:youtube/view/home_screen/home_screen.dart';
import 'package:youtube/view/movies/movies.dart';
import 'package:youtube/view/profile/profile.dart';
import 'package:youtube/view/search_screen/search_screen.dart';
import 'package:youtube/view/shorts%20create/shorts_create.dart';
import 'package:youtube/view/shorts/shorts.dart';
import 'package:youtube/view/subcription/sub.dart';

class youtube_library extends StatefulWidget {
  const youtube_library({super.key});

  @override
  State<youtube_library> createState() => _youtube_libraryState();
}

class _youtube_libraryState extends State<youtube_library> {
  @override
  Widget build(BuildContext context) {
    int _selectedindex = 0;
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
              child:  Icon(Icons.cast),
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
          InkWell(onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => profile(),));
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
      // appbar
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.history,
                  color: Colors.white,
                  size: 25,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "History",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 23,
                      fontWeight: FontWeight.w500),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 170, top: 10),
                  child: Text(
                    "VIEW ALL",
                    style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.w700,
                        fontSize: 13),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 170,
              width: double.infinity,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: 20,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Column(
                      children: [
                        Container(
                          width: 180,
                          height: 90,
                          child: Image.asset(imageconstant.mylist[index]),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5, right: 70),
                          child: Text(
                            "gangstersss",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 2, right: 62),
                          child: Text(
                            "@streamworld",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Divider(
              thickness: 0.5,
              color: Colors.white,
            ),
            SizedBox(
              height: 20,
            ),
            InkWell(onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => shorts_create(),));
            },
              child: ListTile(
                leading: Icon(
                  Icons.slideshow_sharp,
                  color: Colors.white,
                  size: 30,
                ),
                title: Text("Your videos",
                    style: TextStyle(color: Colors.white, fontSize: 20)),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.download,
                size: 30,
                color: Colors.white,
              ),
              trailing: Icon(
                Icons.check_circle_rounded,
                color: Colors.white,
              ),
              title: Text("Downloads",
                  style: TextStyle(color: Colors.white, fontSize: 20)),
              subtitle: Text("5 Videos",
                  style: TextStyle(
                      color: Color.fromARGB(255, 124, 121, 121), fontSize: 13)),
            ),
            InkWell(onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => movies(),));
            },
              child: ListTile(
                leading: Icon(
                  Icons.local_movies_outlined,
                  color: Colors.white,
                  size: 30,
                ),
                title: Text(
                  "Your movies",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
            Divider(
              thickness: 0.5,
              color: Colors.white,
            ),
            Column(children: [
              Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "Playlists",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w700),
                  ),
                  SizedBox(
                    width: 240,
                  ),
                  Text(
                    "A-Z",
                    style: TextStyle(color: Colors.white),
                  ),
                  Icon(
                    Icons.keyboard_arrow_down_sharp,
                    color: Colors.white,
                  )
                ],
              ),
              Column(children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20, left: 20),
                  child: Row(
                    children: [
                      Icon(
                        Icons.add,
                        size: 30,
                        color: Colors.blue,
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Text(
                        "New playlist",
                        style: TextStyle(
                            color: Colors.blue,
                            fontSize: 20,
                            fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30, top: 30),
                  child: Row(
                    children: [
                      Icon(
                        Icons.schedule,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Text(
                        "Watch Later",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 90,
                    ),
                    Text(
                      "1,985 unwatched videos",
                      style: TextStyle(
                          color: const Color.fromARGB(255, 115, 114, 114)),
                    )
                  ],
                )
              ])
            ]),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20, top: 20),
                  child: Container(
                    height: 50,
                    width: 50,
                    color: Colors.amber,
                  ),
                ),
                SizedBox(
                  width: 50,
                ),
                Row(
                  children: [
                    Text(
                      "Malayalam tutorial",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}


//  ListTile(
//               title: Text(
//                 "Playlists",
//                 style: TextStyle(color: Colors.white, fontSize: 20),
//               ),
//               trailing: Icon(
//                 Icons.keyboard_arrow_down_sharp,
//                 color: Colors.white,
//               ),
//             ),
//             ListTile(
//               title: Text(
//                 "a-z",
//                 style: TextStyle(color: Colors.white),
//               ),
//             )