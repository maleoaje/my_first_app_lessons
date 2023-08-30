import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                  onTap: () {},
                  child: Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.teal),
                    child: const Column(
                      children: [
                        FaIcon(
                          FontAwesomeIcons.userNinja,
                          color: white,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "Chizzy's\n work",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: white, fontWeight: FontWeight.w700),
                        )
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.indigo),
                    child: const Column(
                      children: [
                        FaIcon(
                          FontAwesomeIcons.jetFighter,
                          color: white,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "Chidera's\n work",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: white, fontWeight: FontWeight.w700),
                        )
                      ],
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
