import 'package:flutter/material.dart';
import 'package:youtube/view/home_screen/home_screen.dart';
import 'package:youtube/view/subcription/sub.dart';
import 'package:youtube/view/youtube_library/youtube_library.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class short extends StatefulWidget {
  short({
    super.key,
    required this.index,
  });
  final int index;

  @override
  State<short> createState() => _shortState();
}

class _shortState extends State<short> {
  List<String> shortsLinks = ["CggWWqM2nb8", "gTBpxYpukdc", "M2gMTtgTqPk"];
  int _selectedindex = 0;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController _controller = YoutubePlayerController(
      initialVideoId: shortsLinks[widget.index],
      flags: YoutubePlayerFlags(
        autoPlay: false,
        mute: true,
      ),
    );
    // final List<String> myshorts = [
    //   "https://i.ytimg.com/vi/-W2Oq5Q1z20/maxresdefault.jpg",
    //   "https://th.bing.com/th/id/OIP.iEz7ZIW8uw8FWNP2W7rl_wHaEK?pid=ImgDet&rs=1",
    //   "https://th.bing.com/th/id/OIP.-IknI0WladQHmdKdymHSVAHaEK?pid=ImgDet&rs=1",
    //   "https://i.ytimg.com/vi/kpvKA0vhaT0/maxresdefault.jpg",
    //   "https://th.bing.com/th/id/OIP.vMKYLondwH4vNlVcQ14KJgHaEK?pid=ImgDet&rs=1",
    //   "https://i.pinimg.com/originals/e1/b5/4b/e1b54bc3280ac8e4716f0b6781510e3e.jpg",
    //   "https://th.bing.com/th/id/OIP.GunHfMoxH69PoxPKpU_w-AHaEK?pid=ImgDet&rs=1",
    //   "https://th.bing.com/th/id/OIP.-IknI0WladQHmdKdymHSVAHaEK?pid=ImgDet&rs=1",
    //   "https://i.ytimg.com/vi/kpvKA0vhaT0/maxresdefault.jpg",
    //   "https://th.bing.com/th/id/OIP.vMKYLondwH4vNlVcQ14KJgHaEK?pid=ImgDet&rs=1",
    //   "https://th.bing.com/th/id/OIP.vMKYLondwH4vNlVcQ14KJgHaEK?pid=ImgDet&rs=1",
    //   "https://th.bing.com/th/id/OIP.diCR7d33g54w8D7VZfLMOgAAAA?pid=ImgDet&rs=1",
    //   "https://s3.envato.com/files/171226466/01_Preview%206.jpg",
    //   "https://cdn.iphoneincanada.ca/wp-content/uploads/2014/10/clash-of-clans.jpeg"
    // ];
    return Scaffold(
      body: SafeArea(
          child: Stack(
        children: [
          ListView.builder(
            itemCount: shortsLinks.length,
            itemBuilder: (context, index) => Column(
              children: [
                Stack(
                  children: [
                    // Container(
                    //   height: 700,
                    //   width: 500,
                    //   color: Colors.amber,
                    //   child: Image.network(
                    //     myshorts[index],
                    //     fit: BoxFit.cover,
                    //   ),
                    // ),
                    YoutubePlayer(
                      aspectRatio: 9 / 18,
                      controller: _controller,
                      showVideoProgressIndicator: true,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20, left: 350),
                      child: Icon(
                        Icons.camera_alt_outlined,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 300, left: 350),
                          child: Row(
                            children: [
                              Icon(
                                Icons.thumb_up,
                                color: Colors.white,
                                size: 30,
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 335, top: 5),
                          child: Text(
                            "69k",
                            style: TextStyle(color: Colors.white),
                          ),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5, right: 10),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 370, left: 350),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.thumb_down,
                                  color: Colors.white,
                                  size: 30,
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 335, top: 5),
                            child: Text(
                              "Dislike",
                              style: TextStyle(color: Colors.white),
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 30, right: 10),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 420, left: 350),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.comment,
                                  color: Colors.white,
                                  size: 30,
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 335, top: 5),
                            child: Text(
                              "96",
                              style: TextStyle(color: Colors.white),
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 50, right: 10),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 460, left: 350),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.share,
                                  color: Colors.white,
                                  size: 30,
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 345, top: 5),
                            child: Text(
                              "Share",
                              style: TextStyle(color: Colors.white),
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 90, right: 10),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 480, left: 350),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.more_horiz,
                                  color: Colors.white,
                                  size: 30,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 90, right: 10),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 550, left: 330),
                            child: Row(
                              children: [
                                Container(
                                  height: 50,
                                  width: 50,
                                  child: Image.network(
                                    "https://i.ytimg.com/vi/ESlyy81CkQY/maxresdefault.jpg?sqp=-oaymwEmCIAKENAF8quKqQMa8AEB-AHmAoAC6AKKAgwIABABGGUgZShlMA8=&rs=AOn4CLDimGUts9GKGsPKXsprVuO2lB5PLQ",
                                    fit: BoxFit.cover,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 590, left: 20),
                      child: Text(
                        "Laptop review",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 630, left: 20),
                          child: Row(
                            children: [
                              CircleAvatar(
                                radius: 25,
                                backgroundImage: NetworkImage(
                                    "https://th.bing.com/th/id/OIP.9K788peRzsZ9imd9iXXALQHaHa?pid=ImgDet&rs=1"),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "@streamworld",
                                style: TextStyle(
                                    fontSize: 20, color: Colors.white),
                              )
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      )),
    );
  }
}
