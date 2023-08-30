import 'package:flutter/material.dart';
import 'package:my_first_app/chizzy/in_chat.dart';

class ChatsPage extends StatelessWidget {
  const ChatsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(preferredSize: Size(0, 0), child: SizedBox()),
      backgroundColor: const Color(0xff121d27),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Navigator.push(context,
          //     MaterialPageRoute(builder: (context) => const ProfilePage()));
        },
        shape: const CircleBorder(),
        backgroundColor: const Color(0xff01af99),
        child: const Icon(Icons.chat),
      ),
      //ListView widget
      body: ListView(
        children: [
          //Container widget
          Container(
            height: 130,
            color: const Color(0xff202c36),
            // padding widget
            child: Padding(
              padding: const EdgeInsets.fromLTRB(10, 30, 10, 0),
              // column widget
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  //=============app bar=============
                  //Row widget
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //Text widget
                      Row(
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: const Icon(
                              Icons.arrow_back,
                              color: Color(0xffa3b0b8),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const Text('WhatsApp',
                              style: TextStyle(
                                  color: Color(0xffa3b0b8), fontSize: 16)),
                        ],
                      ),
                      //Row widget
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          //SizedBox widget
                          SizedBox(
                            width: 20,
                          ),
                          //Icon widget
                          Icon(
                            Icons.search,
                            color: Color(0xffa3b0b8),
                          ),
                          //SizedBox widget
                          SizedBox(
                            width: 20,
                          ),
                          //Icon widget
                          Icon(
                            Icons.more_vert,
                            color: Color(0xffa3b0b8),
                          ),
                        ],
                      )
                    ],
                  ),
                  //SizedBox widget
                  const SizedBox(
                    height: 20,
                  ),
                  //Padding widget
                  const Padding(
                    padding: EdgeInsets.fromLTRB(8, 0, 8, 0),
                    // row widget
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        //Icon widget
                        Icon(
                          Icons.camera_alt,
                          color: Color(0xffa3b0b8),
                        ),
                        //=============end of app bar===========

                        //============heading of whatsap pages===============
                        //Row widget
                        Row(
                          children: [
                            //Text widget
                            Text(
                              'CHATS',
                              style: TextStyle(color: Color(0xffa3b0b8)),
                            ),
                            //SizedBox widget
                            SizedBox(
                              width: 4,
                            ),
                            //CircleAvatar widget
                            CircleAvatar(
                              radius: 8,
                              backgroundColor: Color(0xff01af99),
                              // text widget
                              child: Text(
                                '6',
                                style: TextStyle(fontSize: 10),
                              ),
                            )
                          ],
                        ),
                        //Text widget
                        Text(
                          'STATUS',
                          style: TextStyle(color: Color(0xffa3b0b8)),
                        ),
                        //Text widget
                        Text(
                          'CALLS',
                          style: TextStyle(color: Color(0xffa3b0b8)),
                        )
                      ],
                    ),
                  ),
                  //=============end of heading of whatsapp pages============

                  // SizedBox(
                  //   height: 200,
                  //   width: 200,
                  //   child: Image.asset(
                  //     'images/whitearabianhorse.jpg',
                  //     fit: BoxFit.contain,
                  //   ),
                  // ),
                  // SizedBox(
                  //   height: 200,
                  //   width: 200,
                  //   child: Image.network(
                  //     'https://images.unsplash.com/photo-1496614932623-0a3a9743552e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=870&q=80',
                  //     fit: BoxFit.cover,
                  //   ),
                  // )
                ],
              ),
            ),
          ),
          //SizedBox
          const SizedBox(
            height: 20,
          ),
          //chatcard widget
          chatcard(
              context,
              'https://images.unsplash.com/photo-1592014876906-c039e0bde2f2?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1374&q=80',
              'Tamar',
              'do u know the song',
              '8:31',
              '1'),
          chatcard(
              context,
              'https://images.unsplash.com/photo-1592014876906-c039e0bde2f2?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1374&q=80',
              'Michael',
              'how fa',
              '6:56',
              '1'),
          chatcard(
              context,
              'https://images.unsplash.com/photo-1592014876906-c039e0bde2f2?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1374&q=80',
              'godfrey',
              'do u have the biology textbook',
              '7:12',
              '5'),
          chatcard(
              context,
              'https://images.unsplash.com/photo-1592014876906-c039e0bde2f2?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1374&q=80',
              'christian',
              'i de',
              '6:21',
              '2'),

          chatcard(
              context,
              'https://images.unsplash.com/photo-1592014876906-c039e0bde2f2?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1374&q=80',
              'chidera',
              'go to bed',
              '6:07',
              '1'),

          chatcard(
              context,
              'https://images.unsplash.com/photo-1592014876906-c039e0bde2f2?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1374&q=80',
              'David',
              'how fa',
              '6:30',
              '2'),
          // InkWell(
          //   onTap: () {
          //     Navigator.push(context,
          //         MaterialPageRoute(builder: (context) => const PiqobePage()));
          //   },
          //   child: Container(
          //     height: 40,
          //     decoration: const BoxDecoration(
          //       color: Colors.blue,
          //     ),
          //     child: const Center(
          //         child: Text(
          //       'Go to Home Page',
          //       style:
          //           TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          //     )),
          //   ),
          // )

          //Row widget
          // Row(
          // children: [
          // column widget
          // Column(
          //   children: [
          //     //network image widget
          //     Image.asset('images/whitearabianhorse.jpg',
          //         width: 190, height: 200, fit: BoxFit.cover),
          //     //Text widget
          //     Text(
          //       'horse 1',
          //       style: TextStyle(color: Color(0xffa3b0b8)),
          //     ),
          //   ],
          // ),
          //SizedBox widget
          // SizedBox(
          // width: 20,
          // ),
          //Column widget
          // Column(
          // children: [
          //network image widget
          // Image.asset(
          // 'images/whitearabianhorse.jpg',
          // fit: BoxFit.cover,
          // width: 190,
          // height: 200,
          // ),
          //Text widget
          // Text(
          // 'horse 2',
          // style: TextStyle(color: Color(0xffa3b0b8)),
          // )
          // ],
          // )
          // ],
          // ),
          // SizedBox(
          //   height: 200,
          //   width: 200,
          //   child: Image.network(
          //       'https://images.unsplash.com/photo-1496614932623-0a3a9743552e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=870&q=80',
          //       fit: BoxFit.cover),
          // )
        ],
      ),
    );
  }

//chatcard widget
  Widget chatcard(context, image, name, message, time, messageCount) {
    //Row widget
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => InChatsPage(
                      userName: name,
                    )));
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            //Row widget
            Row(
              children: [
                // CircleAvatar widget
                CircleAvatar(
                  radius: 20,
                  backgroundImage: NetworkImage(image),
                ),
                //SizedBox widget
                const SizedBox(
                  width: 11,
                ),
                //Column widget
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //Text widget
                    Text(
                      name,
                      style: const TextStyle(
                          color: Colors.grey, fontWeight: FontWeight.w600),
                    ),
                    //Text widget
                    Text(
                      message,
                      style: const TextStyle(
                          color: Colors.grey, fontWeight: FontWeight.w600),
                    ),
                  ],
                )
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Text widget
                Text(
                  time,
                  style: const TextStyle(
                      color: Colors.grey, fontWeight: FontWeight.w600),
                ),
                // Text widget
                Text(
                  messageCount,
                  style: const TextStyle(
                      color: Colors.grey, fontWeight: FontWeight.w600),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
