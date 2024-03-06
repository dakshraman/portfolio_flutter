// ignore_for_file: file_names

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:portfolio_flutter/main.dart';

class Social extends StatefulWidget {
  const Social({super.key, required this.title});
  final String title;

  @override
  State<Social> createState() => _SocialState();
}

class _SocialState extends State<Social> {
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
          child: SingleChildScrollView(
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
                            GestureDetector(
                              onTap: () {
                                launchUrl(fb);
                              },
                              child: Image.asset(
                                'images/facebook.png',
                                width: 100,
                                height: 100,
                              ),
                            ),
                            const SizedBox(width: 10),
                            GestureDetector(
                              onTap: () {
                                launchUrl(tw);
                              },
                              child: Image.asset(
                                'images/twitter.png',
                                width: 100,
                                height: 100,
                              ),
                            ),
                            const SizedBox(width: 10),
                            GestureDetector(
                              onTap: () {
                                launchUrl(ig);
                              },
                              child: Image.asset(
                                'images/instagram.png',
                                width: 100,
                                height: 100,
                              ),
                            ),
                            const SizedBox(width: 10),
                            GestureDetector(
                              onTap: () {
                                launchUrl(youtube);
                              },
                              child: Image.asset(
                                'images/youtube.png',
                                width: 100,
                                height: 100,
                              ),
                            ),
                            const SizedBox(width: 10),
                            GestureDetector(
                              onTap: () {
                                launchUrl(git);
                              },
                              child: Image.asset(
                                'images/github.png',
                                width: 100,
                                height: 100,
                              ),
                            ),
                            const SizedBox(width: 10),
                            GestureDetector(
                              onTap: () {
                                launchUrl(skype);
                              },
                              child: Image.asset(
                                'images/skype.png',
                                width: 100,
                                height: 100,
                              ),
                            ),
                            const SizedBox(width: 10),
                            GestureDetector(
                              onTap: () {
                                launchUrl(telegram);
                              },
                              child: Image.asset(
                                'images/telegram.png',
                                width: 100,
                                height: 100,
                              ),
                            ),
                            const SizedBox(width: 10),
                            GestureDetector(
                              onTap: () {
                                launchUrl(li);
                              },
                              child: Image.asset(
                                'images/linkedin.png',
                                width: 100,
                                height: 100,
                              ),
                            ),
                            const SizedBox(width: 10),
                            GestureDetector(
                              onTap: () {
                                launchUrl(email);
                              },
                              child: Image.asset(
                                'images/email.png',
                                width: 100,
                                height: 100,
                              ),
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
              ],
            ),
          ),
        )
        // This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}
