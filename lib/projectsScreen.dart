// ignore_for_file: file_names, sized_box_for_whitespace, unused_import

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key, required String title});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  projetCard(lang, title, description, link, live) {
    return SingleChildScrollView(
      child: Container(
        width: MediaQuery.of(context).size.width * 0.8,
        height: 220,
        child: Card( 
          elevation: 20,
          color: Colors.deepPurple,
          child: Container(
            margin: const EdgeInsets.only(left: 20, top: 30, right: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  lang,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
                const Divider(
                  height: 10,
                ),
                Text(
                  title,
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.w700),
                ),
                const Divider(
                  height: 3,
                ),
                Text(
                  description,
                  style: const TextStyle(color: Colors.white70, fontSize: 16),
                ),
                const Divider(
                  height: 10,
                ),
                Expanded(
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          launchUrlString(link);
                        },
                        icon: const Icon(
                          FontAwesomeIcons.github,
                          color: Colors.white,
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          launchUrlString(live);
                        },
                        icon: const Icon(
                          FontAwesomeIcons.link,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 221, 209, 255),
      appBar: const CupertinoNavigationBar(
        backgroundColor: Colors.deepPurple,
        middle: Text(
          'Projects',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.only(bottom: 20, top: 10),
          alignment: Alignment.center,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              projetCard(
                'Flutter',
                'Messager',
                'Chatting Application',
                'https://github.com/dakshraman/Messager',
                'https://dakshraman.github.io/Messager/',
              ),
              projetCard(
                'Flutter',
                'Portfolio',
                'A Portfolio App',
                'https://github.com/dakshraman/portfolio_flutter',
                'https://github.com/dakshraman/portfolio_flutter/releases/download/1.1.0/app-release.apk',
              ),
              projetCard(
                'Flutter',
                'Calculator',
                'A Calculator App',
                'https://github.com/dakshraman/Calculator',
                'https://github.com/dakshraman/Calculator/releases/download/1.1.0/app-release.apk',
              ),
              projetCard(
                'HTML,CSS,JS',
                'Weather Application ',
                'Weather Web App',
                'https://github.com/dakshraman/Weather_forecast_web_application',
                'https://dakshraman.github.io/Weather_forecast_web_application/',
              ),
              projetCard(
                'Python',
                'Virtual Assistant',
                'Virtual assistant for PC',
                'https://github.com/dakshraman/Virtual-Assistant',
                'https://github.com/dakshraman/Virtual-Assistant',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
