import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_first_app/chizzy/chats.dart';
import 'package:my_first_app/chizzy/piqobe.dart';
import 'package:my_first_app/chizzy/profile_page.dart';
import 'package:my_first_app/chizzy/social_app.dart';
import 'package:my_first_app/constants.dart';

class ChizzysPage extends StatelessWidget {
  const ChizzysPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Chizzy's work"),
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
                        builder: (context) => const PiqobePage()));
              },
              child: Container(
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.lightGreen),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FaIcon(
                      FontAwesomeIcons.piedPiper,
                      color: white,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "Piqobe",
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
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const SocialApp()));
              },
              child: Container(
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.amber),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FaIcon(
                      FontAwesomeIcons.personFallingBurst,
                      color: white,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "Social Page",
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
                        builder: (context) => const ProfilePageChiz()));
              },
              child: Container(
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.redAccent),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FaIcon(
                      FontAwesomeIcons.personFallingBurst,
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
