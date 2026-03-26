// ignore_for_file: file_names, sized_box_for_whitespace, unnecessary_import

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key, required String title});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  Widget projetCard(String lang, String title, String description) {
    return SingleChildScrollView(
      child: Container(
        width: MediaQuery.of(context).size.width * 0.8,
        height: 160,
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
              ),
              projetCard(
                'Flutter',
                'Portfolio',
                'A Portfolio App',
              ),
              projetCard(
                'Flutter',
                'Calculator',
                'A Calculator App',
              ),
              projetCard(
                'HTML,CSS,JS',
                'Weather Application ',
                'Weather Web App',
              ),
              projetCard(
                'Python',
                'Virtual Assistant',
                'Virtual assistant for PC',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
