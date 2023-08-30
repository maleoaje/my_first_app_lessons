import 'package:flutter/material.dart';
import 'package:my_first_app/chizzy/colors..dart';

class PiqobePage extends StatefulWidget {
  const PiqobePage({super.key});

  @override
  State<PiqobePage> createState() => _PiqobePageState();
}

class _PiqobePageState extends State<PiqobePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Piqobe',
          style: TextStyle(
              color: Colors.black, fontSize: 23, fontWeight: FontWeight.w900),
        ),
        actions: const [
          Icon(
            Icons.settings_outlined,
            color: Color(0xff000000),
          ),
          //SizedBox widget
          SizedBox(
            width: 20,
          ),
          //Icon widget
          Icon(
            Icons.notifications_none_outlined,
            color: Color(0xff000000),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 100,
                width: MediaQuery.of(context).size.width,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Column(
                      children: [
                        Container(
                          height: 78,
                          padding: const EdgeInsets.all(5),
                          width: 78,
                          decoration: BoxDecoration(
                              border: Border.all(
                                width: 1,
                                color: orange,
                              ),
                              borderRadius: BorderRadius.circular(20)),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(14),
                            child: Image.asset(
                              'images/animefood.jpg',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const Text('Peters')
                      ],
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      children: [
                        Container(
                          height: 78,
                          padding: const EdgeInsets.all(5),
                          width: 78,
                          decoration: BoxDecoration(
                              border: Border.all(
                                width: 1,
                                color: orange,
                              ),
                              borderRadius: BorderRadius.circular(20)),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(14),
                            child: Image.asset(
                              'images/animegirl.jpg',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const Text('Peters')
                      ],
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      children: [
                        Container(
                          height: 78,
                          padding: const EdgeInsets.all(5),
                          width: 78,
                          decoration: BoxDecoration(
                              border: Border.all(
                                width: 1,
                                color: orange,
                              ),
                              borderRadius: BorderRadius.circular(20)),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(14),
                            child: Image.asset(
                              'images/horse.jpeg',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const Text('Peters')
                      ],
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      children: [
                        Container(
                          height: 78,
                          padding: const EdgeInsets.all(5),
                          width: 78,
                          decoration: BoxDecoration(
                              border: Border.all(
                                width: 1,
                                color: orange,
                              ),
                              borderRadius: BorderRadius.circular(20)),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(14),
                            child: Image.asset(
                              'images/yoda.jpg',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const Text('Peters')
                      ],
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      children: [
                        Container(
                          height: 78,
                          padding: const EdgeInsets.all(5),
                          width: 78,
                          decoration: BoxDecoration(
                              border: Border.all(
                                width: 1,
                                color: orange,
                              ),
                              borderRadius: BorderRadius.circular(20)),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(14),
                            child: Image.asset(
                              'images/racoon.jpg',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const Text('Peters')
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Container(
                padding: const EdgeInsets.all(20),
                height: MediaQuery.of(context).size.height * .65,
                width: MediaQuery.of(context).size.width * .8,
                decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Container(
                  height: MediaQuery.of(context).size.height * .65,
                  width: MediaQuery.of(context).size.width * .8,
                  padding: const EdgeInsets.all(14),
                  decoration: BoxDecoration(
                    color: white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Row(
                            children: [
                              Container(
                                height: 78,
                                padding: const EdgeInsets.all(5),
                                width: 78,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                      width: 1,
                                      color: orange,
                                    ),
                                    borderRadius: BorderRadius.circular(20)),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(14),
                                  child: Image.asset(
                                    'images/batman.jpg',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Steve Johnson',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w800,
                                        fontSize: 15),
                                  ),
                                  Text(
                                    '30 Sec Ago',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 7,
                                        color: Colors.grey),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(
                            width: 18,
                          ),
                          Container(
                            padding: const EdgeInsets.all(3),
                            decoration: BoxDecoration(
                              border: Border.all(width: 1),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: const Icon(
                              Icons.more_horiz,
                              size: 15,
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Container(
                          padding: const EdgeInsets.all(20),
                          height: MediaQuery.of(context).size.width * .7,
                          width: MediaQuery.of(context).size.width * .7,
                          decoration: BoxDecoration(
                            image: const DecorationImage(
                                image: AssetImage(
                                  'images/fastcar.jpg',
                                ),
                                fit: BoxFit.cover),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: const Icon(
                            Icons.play_circle_fill,
                            color: white,
                            size: 50,
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.favorite_outlined,
                                  color: Colors.red,
                                  size: 30,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Icon(
                                  Icons.messenger_outline_rounded,
                                  size: 30,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Icon(
                                  Icons.send_outlined,
                                  size: 30,
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Icon(
                              Icons.bookmark_border_outlined,
                              size: 30,
                            ),
                          ],
                        ),
                      ),
                      const Text(
                        '4m Likes',
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
