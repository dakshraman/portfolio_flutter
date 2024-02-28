// ignore_for_file: file_names

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:portfolio_flutter/main.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 221, 209, 255),
        appBar: CupertinoNavigationBar(
          backgroundColor: Colors.deepPurple,
          middle: Title(
            color: Colors.deepPurple,
            child: Text(
              widget.title,
              style: const TextStyle(color: Colors.white),
            ),
          ),
        ),
        body: Center(
          child: Container(
            height: MediaQuery.of(context).size.height * .7,
            width: MediaQuery.of(context).size.width * .8,
            //margin: const EdgeInsets.only(top: 100, bottom: 100, left: 50, right: 50),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.deepPurple,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.deepPurple,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                              MediaQuery.of(context).size.height * .2),
                          border: Border.all(
                            color: Colors
                                .deepPurpleAccent, // Choose your desired border color
                            width: 3.0, // Choose your desired border width
                          ),
                        ),
                        child: Container(
                          width: MediaQuery.of(context).size.height * .3,
                          height: MediaQuery.of(context).size.height * .3,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              alignment: Alignment.center,
                              image: AssetImage('images/image.jpg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                    ),
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * .03),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Name: ',
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                        Text(
                          "Raman Daksh",
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'About: ',
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                        Text(
                          "Cool and Calm",
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                    Container(
                      color: Colors.white,
                      padding: const EdgeInsets.only(top: 10, bottom: 10),
                      margin: const EdgeInsets.only(top: 10, bottom: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onTap: () {
                              launchUrl(fb);
                            },
                            child: Image.asset(
                              'images/facebook.png',
                              width: 30,
                              height: 30,
                            ),
                          ),
                          const SizedBox(width: 10),
                          GestureDetector(
                            onTap: () {
                              launchUrl(tw);
                            },
                            child: Image.asset(
                              'images/twitter.png',
                              width: 30,
                              height: 30,
                            ),
                          ),
                          const SizedBox(width: 10),
                          GestureDetector(
                            onTap: () {
                              launchUrl(ig);
                            },
                            child: Image.asset(
                              'images/instagram.png',
                              width: 30,
                              height: 30,
                            ),
                          ),
                          const SizedBox(width: 10),
                          GestureDetector(
                            onTap: () {
                              launchUrl(git);
                            },
                            child: Image.asset(
                              'images/github.png',
                              width: 30,
                              height: 30,
                            ),
                          ),
                          const SizedBox(width: 10),
                          GestureDetector(
                            onTap: () {
                              launchUrl(li);
                            },
                            child: Image.asset(
                              'images/linkedin.png',
                              width: 30,
                              height: 30,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        )
        // This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}
