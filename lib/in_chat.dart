import 'package:flutter/material.dart';

class InChatsPage extends StatelessWidget {
  const InChatsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(preferredSize: Size(0, 0), child: SizedBox()),
      backgroundColor: const Color(0xff121d27),
      floatingActionButton: const FloatingActionButton(
        onPressed: null,
        shape: CircleBorder(),
        backgroundColor: Color(0xff01af99),
        child: Icon(Icons.chat),
      ),
      //listview widget
      body: ListView(
        children: [
          //=========container widget==========
          Container(
            height: 80,
            color: const Color(0xff202c36),
            //=========padding widget===========
            child: Padding(
              padding: const EdgeInsets.fromLTRB(10, 30, 10, 0),
              // column
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
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
