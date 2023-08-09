import 'package:flutter/material.dart';

class ChatsPage extends StatelessWidget {
  const ChatsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(preferredSize: Size(0, 0), child: SizedBox()),
      backgroundColor: const Color(0xff121d27),
      floatingActionButton: const FloatingActionButton(
        onPressed: null,
        shape: CircleBorder(),
        backgroundColor: Color(0xff01af99),
      ),
      //listview widget
      body: ListView(
        children: [
          //=========container widget==========
          Container(
            height: 120,
            color: const Color(0xff202c36),
            //=========padding widget===========
            child: const Padding(
              padding: EdgeInsets.fromLTRB(10, 30, 10, 0),
              // column
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  //==============appbar================
                  //==============row widget===============
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //=======text widget========
                      Text(
                        'WhatsApp',
                        style:
                            TextStyle(color: Color(0xffa3b0b8), fontSize: 16),
                      ),
                      //row
                      Row(
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
                  SizedBox(
                    height: 20,
                  ),
                  //===============padding widget================
                  Padding(
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
              'https://images.unsplash.com/photo-1636391671189-b74857c38626?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=3000&q=80',
              'goku',
              'turn to ultra instinct',
              '6:00am',
              '10'),
          //=====row======
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //=========column=========
              Column(
                children: [
                  //==========chidera starts image==========
                  Image.asset(
                    'images/horse.jpeg',
                    fit: BoxFit.cover,
                    width: 190,
                    height: 200,
                  ),
                  //=========chidera ends image==========
                  //========text=========
                  const Text(
                    "ARABIAN HORSE",
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
              //========column=========
              Column(
                children: [
                  Image.network(
                    'https://images.unsplash.com/photo-1636391671189-b74857c38626?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=3000&q=80',
                    fit: BoxFit.cover,
                    width: 190,
                    height: 200,
                  ),
                  //===========text=========
                  const Text(
                    "goku and frieza",
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget chatCard(image, name, message, time, messageCount) {
    //========row========-==
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        //=======row========
        Row(
          children: [
            // circle avatar
            CircleAvatar(
              radius: 20,
              backgroundImage: NetworkImage(image),
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
    );
  }
}
