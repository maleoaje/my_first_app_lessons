import 'package:flutter/material.dart';
import 'package:my_first_app/constants.dart';

class SocialApp extends StatelessWidget {
  const SocialApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: brown,
      appBar: AppBar(
        backgroundColor: brown,
        leading: const Icon(
          Icons.keyboard_backspace,
          color: orange,
          size: 35,
        ),
        actions: const [
          Icon(
            Icons.more_vert,
            color: orange,
            size: 30,
          )
        ],
      ),
      body: const Padding(
        padding: EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 100,
                  child: Column(
                    children: [
                      Text(
                        "4356",
                        style: TextStyle(
                            color: white,
                            fontSize: 20,
                            fontWeight: FontWeight.w600),
                      ),
                      Text(
                        "FOLLOWERS",
                        style: TextStyle(
                            color: grey,
                            fontSize: 14,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ),
                CircleAvatar(
                  radius: 75,
                  backgroundColor: orange,
                  child: CircleAvatar(
                    radius: 74,
                    backgroundColor: brown,
                    child: CircleAvatar(
                      radius: 60,
                      backgroundImage: NetworkImage(
                          'https://images.unsplash.com/photo-1611432579402-7037e3e2c1e4?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1365&q=80'),
                    ),
                  ),
                ),
                SizedBox(
                  width: 100,
                  child: Column(
                    children: [
                      Text(
                        "734",
                        style: TextStyle(
                            color: white,
                            fontSize: 20,
                            fontWeight: FontWeight.w600),
                      ),
                      Text(
                        "PHOTOS",
                        style: TextStyle(
                            color: grey,
                            fontSize: 14,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ),
              ],
            )
          ]),
        ),
      ),
    );
  }
}
