import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_first_app/constants.dart';

class TikTikPage extends StatefulWidget {
  const TikTikPage({super.key});

  @override
  State<TikTikPage> createState() => _TikTikPageState();
}

class _TikTikPageState extends State<TikTikPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Column(
          children: [
            Text(
              'Tik TIK',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.w600),
            ),
            Text(
              'Choose your interest',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w200),
            ),
          ],
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: const EdgeInsets.all(10),
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                        border: Border.all(width: .05),
                        borderRadius: BorderRadius.circular(10)),
                    child: const Column(
                      children: [
                        FaIcon(
                          FontAwesomeIcons.book,
                          size: 30,
                          color: orange,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Education',
                          style: TextStyle(fontSize: 12),
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                        border: Border.all(width: .05),
                        borderRadius: BorderRadius.circular(10)),
                    child: const Column(
                      children: [
                        FaIcon(
                          FontAwesomeIcons.gamepad,
                          size: 30,
                          color: orange,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          ' Game',
                          style: TextStyle(fontSize: 12),
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                        border: Border.all(width: .05),
                        borderRadius: BorderRadius.circular(10)),
                    child: const Column(
                      children: [
                        FaIcon(
                          FontAwesomeIcons.basketball,
                          size: 30,
                          color: orange,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Sport',
                          style: TextStyle(fontSize: 12),
                        )
                      ],
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: const EdgeInsets.all(10),
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                        border: Border.all(width: .05),
                        borderRadius: BorderRadius.circular(10)),
                    child: const Column(
                      children: [
                        FaIcon(
                          FontAwesomeIcons.dog,
                          size: 30,
                          color: orange,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Animal',
                          style: TextStyle(fontSize: 12),
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                        border: Border.all(width: .05),
                        borderRadius: BorderRadius.circular(10)),
                    child: const Column(
                      children: [
                        FaIcon(
                          FontAwesomeIcons.heart,
                          size: 30,
                          color: Colors.red,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'love',
                          style: TextStyle(fontSize: 12),
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                        border: Border.all(width: .05),
                        borderRadius: BorderRadius.circular(10)),
                    child: const Column(
                      children: [
                        FaIcon(
                          FontAwesomeIcons.mountain,
                          size: 30,
                          color: orange,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'traveling',
                          style: TextStyle(fontSize: 12),
                        )
                      ],
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: const EdgeInsets.all(10),
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                        border: Border.all(width: .05),
                        borderRadius: BorderRadius.circular(10)),
                    child: const Column(
                      children: [
                        FaIcon(
                          FontAwesomeIcons.headphones,
                          size: 30,
                          color: Colors.green,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'music',
                          style: TextStyle(fontSize: 12),
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                        border: Border.all(width: .05),
                        borderRadius: BorderRadius.circular(10)),
                    child: const Column(
                      children: [
                        FaIcon(
                          FontAwesomeIcons.motorcycle,
                          size: 30,
                          color: Colors.grey,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          ' bikes',
                          style: TextStyle(fontSize: 12),
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                        border: Border.all(width: .05),
                        borderRadius: BorderRadius.circular(10)),
                    child: const Column(
                      children: [
                        FaIcon(
                          FontAwesomeIcons.fire,
                          size: 30,
                          color: Colors.red,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'popular',
                          style: TextStyle(fontSize: 12),
                        )
                      ],
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: const EdgeInsets.all(10),
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                        border: Border.all(width: .05),
                        borderRadius: BorderRadius.circular(10)),
                    child: const Column(
                      children: [
                        FaIcon(
                          FontAwesomeIcons.burger,
                          size: 30,
                          color: orange,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'food',
                          style: TextStyle(fontSize: 12),
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                        border: Border.all(width: .05),
                        borderRadius: BorderRadius.circular(10)),
                    child: const Column(
                      children: [
                        FaIcon(
                          FontAwesomeIcons.hospital,
                          size: 30,
                          color: Colors.yellow,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'health',
                          style: TextStyle(fontSize: 12),
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                        border: Border.all(width: .05),
                        borderRadius: BorderRadius.circular(10)),
                    child: const Column(
                      children: [
                        FaIcon(
                          FontAwesomeIcons.shop,
                          size: 30,
                          color: orange,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'shopping',
                          style: TextStyle(fontSize: 12),
                        )
                      ],
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: const EdgeInsets.all(10),
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                        border: Border.all(width: .05),
                        borderRadius: BorderRadius.circular(10)),
                    child: const Column(
                      children: [
                        FaIcon(
                          FontAwesomeIcons.paintbrush,
                          size: 30,
                          color: Colors.black,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'art',
                          style: TextStyle(fontSize: 12),
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                        border: Border.all(width: .05),
                        borderRadius: BorderRadius.circular(10)),
                    child: const Column(
                      children: [
                        FaIcon(
                          FontAwesomeIcons.pray,
                          size: 30,
                          color: Colors.yellow,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          ' spiritual',
                          style: TextStyle(fontSize: 12),
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                        border: Border.all(width: .05),
                        borderRadius: BorderRadius.circular(10)),
                    child: const Column(
                      children: [
                        FaIcon(
                          FontAwesomeIcons.shower,
                          size: 30,
                          color: Colors.blue,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'maintain',
                          style: TextStyle(fontSize: 12),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Container(
          height: 60,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Colors.black,
          ),
          child: const Center(
            child: Text(
              'Continue',
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
          ),
        ),
      ),
    );
  }
}
