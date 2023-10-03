import 'package:flutter/material.dart';

import 'package:youtube/view/movies/browse.dart';
import 'package:youtube/view/movies/purchase.dart';

class movies extends StatefulWidget {
  const movies({super.key});

  @override
  State<movies> createState() => _moviesState();
}

class _moviesState extends State<movies> {
  var selectedvalues;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(

      
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text(
            "Filims",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
          ),
          actions: [
            Icon(
              Icons.cast,
              color: Colors.white,
            ),
            SizedBox(
              width: 20,
            ),
            Icon(
              Icons.search,
              color: Colors.white,
            ),
            SizedBox(
              width: 20,
            ),
            Icon(
              Icons.more_vert,
              color: Colors.white,
            ),
          ],
          bottom: TabBar(
              indicator: UnderlineTabIndicator(
                  borderSide: BorderSide(width: 3, color: Colors.white)),
              indicatorColor: Colors.white,
              tabs: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("BROWSE"),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("PURCHASED"),
                ),
              ]),
        ),
        body: TabBarView(children: [browse(),purchase(), ]),
    ),
);
}
}