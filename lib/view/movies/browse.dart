import 'package:flutter/material.dart';
import 'package:youtube/utils/database/database.dart';

class browse extends StatefulWidget {
  const browse({super.key});

  @override
  State<browse> createState() => _browseState();
}

class _browseState extends State<browse> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  right: 180,
                ),
                child: Text(
                  "movies",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ),
              SizedBox(
                height: 250,
                child: ListView.builder(
                    itemCount: 15,
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemBuilder: ((context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Container(
                              width: 103,
                              height: 160,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          database.movies[index]["image"]),
                                      fit: BoxFit.cover)),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                  width: 103,
                                  height: 50,
                                  child: Text(
                                    database.movies[index]["text"],
                                    style: TextStyle(color: Colors.white),
                                  )),
                            )
                          ],
                        ),
                      );
                    })),
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  right: 140,
                ),
                child: Text(
                  "Popular On Youtube",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ),
              SizedBox(
                height: 250,
                child: ListView.builder(
                    itemCount: 13,
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemBuilder: ((context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Container(
                              width: 103,
                              height: 160,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  image: DecorationImage(
                                      image: AssetImage(
                                          database.movies[index]["image"]),
                                      fit: BoxFit.cover)),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                  width: 103,
                                  height: 50,
                                  child: Text(
                                    database.movies[index]["text"],
                                    style: TextStyle(color: Colors.white),
                                  )),
                            )
                          ],
                        ),
                      );
                    })),
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  right: 165,
                ),
                child: Text(
                  "Trending Now",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ),
              SizedBox(
                height: 250,
                child: ListView.builder(
                    itemCount: 14,
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemBuilder: ((context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Container(
                              width: 103,
                              height: 160,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  image: DecorationImage(
                                      image: AssetImage(
                                          database.movies[index]["image"]),
                                      fit: BoxFit.cover)),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                  width: 103,
                                  height: 50,
                                  child: Text(
                                    database.movies[index]["text"],
                                    style: TextStyle(color: Colors.white),
                                  )),
                            )
                          ],
                        ),
                      );
                    })),
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  right: 120,
                ),
                child: Text(
                  "Top 10 in India Today",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ),
              SizedBox(
                height: 250,
                child: ListView.builder(
                    itemCount: 13,
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemBuilder: ((context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Container(
                              width: 103,
                              height: 160,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  image: DecorationImage(
                                      image: AssetImage(
                                          database.movies[index]["image"]),
                                      fit: BoxFit.cover)),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                  width: 103,
                                  height: 50,
                                  child: Text(
                                    database.movies[index]["text"],
                                    style: TextStyle(color: Colors.white),
                                  )),
                            )
                          ],
                        ),
                      );
                    })),
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  right: 240,
                ),
                child: Text(
                  "Action Movies",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ),
              SizedBox(
                height: 250,
                child: ListView.builder(
                    itemCount: 14,
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemBuilder: ((context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Container(
                              width: 103,
                              height: 160,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  image: DecorationImage(
                                      image: AssetImage(
                                          database.movies[index]["image"]),
                                      fit: BoxFit.cover)),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                  width: 103,
                                  height: 50,
                                  child: Text(
                                    database.movies[index]["text"],
                                    style: TextStyle(color: Colors.white),
                                  )),
                            )
                          ],
                        ),
                      );
                    })),
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  right: 165,
                ),
                child: Text(
                  "Watch it Again",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ),
              SizedBox(
                height: 250,
                child: ListView.builder(
                    itemCount: 13,
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemBuilder: ((context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Container(
                              width: 103,
                              height: 160,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  image: DecorationImage(
                                      image: AssetImage(
                                          database.movies[index]["image"]),
                                      fit: BoxFit.cover)),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                  width: 103,
                                  height: 50,
                                  child: Text(
                                    database.movies[index]["text"],
                                    style: TextStyle(color: Colors.white),
                                  )),
                            )
                          ],
                        ),
                      );
                    })),
              ),
            ],
          ),
        ));
  }
}
