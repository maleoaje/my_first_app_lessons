import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InChatsPage extends StatelessWidget {
  final String userName;

  const InChatsPage({super.key, required this.userName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(preferredSize: Size(0, 0), child: SizedBox()),
      backgroundColor: const Color(0xff121d27),

      //listview widget
      body: ListView(
        children: [
          //=========container widget==========
          Container(
            height: 80,
            color: const Color(0xff202c36),
            //=========padding widget===========
            child: Padding(
              padding: const EdgeInsets.fromLTRB(10, 40, 10, 0),
              // column
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
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
                              color: Colors.white,
                              size: 30,
                            ),
                          ),
                          const CircleAvatar(
                            radius: 15,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            userName,
                            style: const TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                      const Row(
                        children: [
                          FaIcon(
                            FontAwesomeIcons.video,
                            color: Colors.white,
                            size: 20,
                          ),
                          SizedBox(
                            width: 12,
                          ),
                          Icon(
                            Icons.phone,
                            color: Colors.white,
                            size: 30,
                          ),
                          SizedBox(
                            width: 12,
                          ),
                          Icon(
                            Icons.more_vert_rounded,
                            color: Colors.white,
                            size: 30,
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          //=====row======
        ],
      ),
    );
  }

  Widget chatCard(image, name, message, time, messageCount) {
    //========row========-==
    return GestureDetector(
      onTap: () {},
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
        ),
      ),
    );
  }
}
