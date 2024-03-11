// ignore_for_file: file_names, unused_import

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:portfolio_flutter/main.dart';

class Skills extends StatefulWidget {
  const Skills({super.key, required this.title});
  final String title;

  @override
  State<Skills> createState() => _SkillsState();
}

class _SkillsState extends State<Skills> {
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
          child: Wrap(
            children: [
              Container(
                alignment: Alignment.center,
                // height: MediaQuery.of(context).size.height * .4,
                // width: MediaQuery.of(context).size.width * .8,
                padding: const EdgeInsets.all(5),
                margin: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.deepPurple,
                ),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                          height: MediaQuery.of(context).size.height * .03),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        padding: const EdgeInsets.only(
                            top: 10, bottom: 10, left: 10, right: 10),
                        child: Wrap(
                          alignment: WrapAlignment.center,
                          spacing: 10,
                          runSpacing: 20,
                          children: [
                            Image.asset(
                              'images/flutter.png',
                              width: 100,
                              height: 100,
                            ),
                            const SizedBox(width: 10),
                            Image.asset(
                              'images/dart.png',
                              width: 100,
                              height: 100,
                            ),
                            const SizedBox(width: 10),
                            Image.asset(
                              'images/firebase.png',
                              width: 100,
                              height: 100,
                            ),
                            const SizedBox(width: 10),
                            Image.asset(
                              'images/python.png',
                              width: 100,
                              height: 100,
                            ),
                            const SizedBox(width: 10),
                            Image.asset(
                              'images/github.png',
                              width: 100,
                              height: 100,
                            ),
                            const SizedBox(width: 10),
                            Image.asset(
                              'images/wordpress.png',
                              width: 100,
                              height: 100,
                            ),
                            const SizedBox(width: 10),
                            Image.asset(
                              'images/shopify.png',
                              width: 100,
                              height: 100,
                            ),
                            const SizedBox(width: 10),
                            Image.asset(
                              'images/reactjs.png',
                              width: 100,
                              height: 100,
                            ),
                            const SizedBox(width: 10),
                            Image.asset(
                              'images/java.png',
                              width: 100,
                              height: 100,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.02,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        )
        // This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}
