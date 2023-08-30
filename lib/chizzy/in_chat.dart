import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InChatsPage extends StatefulWidget {
  final String userName;
  const InChatsPage({super.key, required this.userName});

  @override
  State<InChatsPage> createState() => _InChatsPageState();
}

class _InChatsPageState extends State<InChatsPage> {
  bool send = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(preferredSize: Size(0, 0), child: SizedBox()),
      backgroundColor: const Color(0xff121d27),

      //ListView widget
      body: Stack(
        children: [
          ListView(
            children: [
              //Container widget
              Container(
                height: 80,
                color: const Color(0xff202c36),
                // padding widget
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(10, 30, 10, 0),
                  // column widget
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
                                  color: Color(0xffa3b0b8),
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
                                widget.userName,
                                style: const TextStyle(color: Color(0xffa3b0b8)),
                              ),
                            ],
                          ),
                          const Row(
                            children: [
                              FaIcon(
                                FontAwesomeIcons.video,
                                color: Color(0xffa3b0b8),
                                size: 20,
                              ),
                              SizedBox(
                                width: 12,
                              ),
                              Icon(
                                Icons.phone,
                                color: Color(0xffa3b0b8),
                              ),
                              SizedBox(
                                width: 12,
                              ),
                              Icon(
                                Icons.more_vert,
                                color: Color(0xffa3b0b8),
                              )
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            bottom: 0,
            child: Container(
              padding: const EdgeInsets.all(8),
              height: 50,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                color: Color(0xff202c36),
              ),
              child: Row(
                children: [
                  const Icon(
                    Icons.emoji_emotions,
                    color: Colors.white,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  SizedBox(
                      width: MediaQuery.of(context).size.width * .57,
                      child: TextFormField(
                        maxLines: 3,
                        onChanged: (value) {
                          setState(() {
                            send = true;
                          });
                        },
                        style: const TextStyle(color: Colors.white),
                      )),
                  const SizedBox(
                    width: 10,
                  ),
                  const Icon(
                    Icons.attach_file,
                    color: Colors.white,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Icon(
                    Icons.camera_alt_rounded,
                    color: Colors.white,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  CircleAvatar(
                    radius: 15,
                    backgroundColor: const Color(0xff01af99),
                    child: Icon(
                      send == true ? Icons.send : Icons.mic_none_sharp,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

//chatcard widget
  Widget chatcard(image, name, message, time, messageCount) {
    //Row widget
    return GestureDetector(
      onTap: () {},
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
