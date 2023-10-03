import 'package:flutter/material.dart';
import 'package:youtube/utils/text_constant/text_constant.dart';

class shorts_create extends StatelessWidget {
  const shorts_create({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(
          "Your videos",
          style: TextStyle(
              fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.black,
        actions: [
          Icon(
            Icons.cast,
            color: Colors.white,
          ),
          SizedBox(
            width: 10,
          ),
          Icon(
            Icons.search,
            color: Colors.white,
          ),
          SizedBox(
            width: 10,
          ),
          Icon(
            Icons.more_vert,
            color: Colors.white,
          ),
          SizedBox(
            width: 10,
          )
        ],
      ),
      body: Column(
        children: [
          Container(
            height: 40,
            child: ListView.builder(
              itemCount: texconstant.videostext.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(5),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        texconstant.videostext[index],
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          Stack(
            children: [
              Container(
                height: 800,
                width: double.infinity,
                child: Image.asset(
                  "assets/image/IMG_20231002_154358.jpg",
                  fit: BoxFit.fill,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 500),
                child: Center(
                    child: ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          "Create",
                          style: TextStyle(color: Colors.white),
                        ))),
              )
            ],
          ),
        ],
      ),
    );
  }
}
