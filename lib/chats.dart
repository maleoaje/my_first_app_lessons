import 'package:flutter/material.dart';
import 'package:my_first_app/in_chat.dart';
import 'package:my_first_app/social_app.dart';

class ChatsPage extends StatelessWidget {
  const ChatsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(preferredSize: Size(0, 0), child: SizedBox()),
      backgroundColor: const Color(0xff121d27),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const SocialApp()));
        },
        shape: const CircleBorder(),
        backgroundColor: const Color(0xff01af99),
        child: const Icon(Icons.chat),
      ),
      //listview widget
      body: ListView(
        children: [
          //=========container widget==========
          Container(
            height: 120,
            color: const Color(0xff202c36),
            //=========padding widget===========
            child: Padding(
              padding: const EdgeInsets.fromLTRB(10, 30, 10, 0),
              // column
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  //==============appbar================
                  //==============row widget===============
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
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
                          //=======text widget========
                          const Text(
                            'WhatsApp',
                            style: TextStyle(
                                color: Color(0xffa3b0b8), fontSize: 16),
                          ),
                        ],
                      ),
                      //row
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          //====icon widget=====
                          Icon(
                            //====icon widget====
                            Icons.camera_alt_outlined,
                            color: Color(0xffa3b0b8),
                          ),
                          //=======sizedbox widget=========
                          SizedBox(
                            width: 20,
                          ),
                          //======icon widget==========
                          Icon(
                            //=========icon widget=========
                            Icons.search,
                            color: Color(0xffa3b0b8),
                          ),
                          //===========sizedbox widget==============
                          SizedBox(
                            width: 20,
                          ),
                        ],
                      ),
                    ],
                  ),
                  //=============end of appbar===================
                  //=============sizedbox widget==========================
                  const SizedBox(
                    height: 20,
                  ),
                  //===============padding widget================
                  const Padding(
                    padding: EdgeInsets.only(left: 8, right: 8),
                    //=========page headings============
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        //========icon============
                        Icon(
                          Icons.camera_alt,
                          color: Color(0xffa3b0b8),
                        ),
                        //=====row widget=====
                        Row(
                          children: [
                            //==text widget======
                            Text(
                              'chats',
                              style: TextStyle(color: Color(0xffa3b0b8)),
                            ),
                            //===sizedbox===
                            SizedBox(
                              width: 4,
                            ),
                            // circleavatar
                            CircleAvatar(
                              radius: 8,
                              backgroundColor: Color(0xff01af99),
                              //=====text======
                              child: Text(
                                '17',
                                style: TextStyle(fontSize: 10),
                              ),
                            )
                          ],
                        ),
                        //======text========
                        Text(
                          'status',
                          style: TextStyle(color: Color(0xffa3b0b8)),
                        ),
                        //======text=======
                        Text(
                          'calls',
                          style: TextStyle(color: Color(0xffa3b0b8)),
                        )
                      ],
                    ),
                  ), //chidera ended his heading here!!!!!!!
                  // SizedBox(
                  //   height: 200,
                  //   width: 200,
                  //   child: Image.asset(
                  //     'images/horse.jpeg',
                  //     fit: BoxFit.contain,
                  //   ),
                  // ),
                  // SizedBox(
                  //   height: 200,
                  //   width: 200,
                  //   child: Image.network(
                  //     'https://images.unsplash.com/photo-1636391671189-b74857c38626?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=3000&q=80',
                  //     fit: BoxFit.cover,
                  //   ),
                  // )
                ],
              ),
            ),
          ),
          //====sizedbox====

          const SizedBox(
            height: 20,
          ),
          chatCard(
            context,
            'images/animegirl.jpg',
            'chibuike',
            'turn to ultra instinct',
            '6:00am',
            '10',
          ),
          chatCard(
            context,
            'images/dog.jpg',
            'chizi',
            'turn to ultra instinct',
            '6:00am',
            '10',
          ),
          chatCard(
            context,
            'images/horse.jpeg',
            'ada',
            'turn to ultra instinct',
            '6:00am',
            '10',
          ),
          chatCard(
            context,
            'images/lioness.jpg',
            'ekugo',
            'turn to ultra instinct',
            '6:00am',
            '10',
          ),
          chatCard(
            context,
            'images/racoon.jpg',
            'kamsi',
            'turn to ultra instinct',
            '6:00am',
            '10',
          ),
          chatCard(
            context,
            'images/squirl.jpg',
            'aka',
            'turn to ultra instinct',
            '6:00am',
            '10',
          ),

          //=====row======
        ],
      ),
    );
  }

  Widget chatCard(context, image, name, message, time, messageCount) {
    //========row========-==
    return InkWell(
      onTap: () {
        // Navigator.push(context, MaterialPageRoute(
        //           builder: (context) => SecondPage(),
        //         ))

        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => InChatsPage(
                      userName: name,
                      userImage: image,
                    )));
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            //=======row========
            Row(
              children: [
                // circle avatar
                CircleAvatar(
                  radius: 20,
                  backgroundImage: AssetImage(image),
                ),
                //=========sizedbox==========
                const SizedBox(
                  width: 10,
                ),
                //========column===========
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //==========text==========
                    Text(
                      name,
                      style: const TextStyle(
                          color: Colors.grey, fontWeight: FontWeight.w600),
                    ),
                    //========text=========
                    Text(
                      message,
                      style: const TextStyle(
                          color: Colors.grey, fontWeight: FontWeight.w300),
                    ),
                  ],
                ),
              ],
            ),
            //========column=========
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                //========text=========
                Text(
                  name,
                  style: const TextStyle(
                      color: Colors.grey, fontWeight: FontWeight.w600),
                ),
                //========text=============
                Text(
                  message,
                  style: const TextStyle(
                      color: Colors.grey, fontWeight: FontWeight.w300),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
