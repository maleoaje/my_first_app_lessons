import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_first_app/chidera/chats.dart';
import 'package:my_first_app/chidera/chidera_tasks.dart';
import 'package:my_first_app/chidera/profile_page.dart';
import 'package:my_first_app/constants.dart';
import 'package:my_first_app/chidera/tik_tik.dart';

class ChiderasPage extends StatelessWidget {
  const ChiderasPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Chidera's work"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const ChatsPage()));
              },
              child: Container(
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.teal),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FaIcon(
                      FontAwesomeIcons.whatsapp,
                      color: white,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "WhatsApp",
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(color: white, fontWeight: FontWeight.w700),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const TikTikPage()));
              },
              child: Container(
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.indigo),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FaIcon(
                      FontAwesomeIcons.teeth,
                      color: white,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "TikTik App",
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(color: white, fontWeight: FontWeight.w700),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ChiderasTasks()));
              },
              child: Container(
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.deepPurple),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FaIcon(
                      FontAwesomeIcons.galacticRepublic,
                      color: white,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "Images App",
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(color: white, fontWeight: FontWeight.w700),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ProfilePage()));
              },
              child: Container(
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.pink),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FaIcon(
                      FontAwesomeIcons.personFalling,
                      color: white,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "Profile Page",
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(color: white, fontWeight: FontWeight.w700),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
