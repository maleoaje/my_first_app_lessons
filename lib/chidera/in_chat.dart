// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InChatsPage extends StatefulWidget {
  final String userName;
  final String userImage;

  const InChatsPage(
      {super.key, required this.userName, required this.userImage});

  @override
  State<InChatsPage> createState() => _InChatsPageState();
}

class _InChatsPageState extends State<InChatsPage> {
  TextEditingController messageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(preferredSize: Size(0, 0), child: SizedBox()),
      backgroundColor: const Color(0xff121d27),

      //listview widget
      body: Stack(
        children: [
          ListView(
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
                              CircleAvatar(
                                backgroundImage: AssetImage(
                                  widget.userImage,
                                ),
                                radius: 15,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Text(
                                widget.userName,
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
              Padding(
                padding: const EdgeInsets.only(right: 150),
                child: messagesCard(
                    context, 'stop what ever you are doing chidera', '12:00pm'),
              )
            ],
          ),
          Positioned(
            bottom: 0,
            child: Container(
                color: const Color(0xff202c36),
                height: 50,
                child: Row(
                  children: [
                    const SizedBox(
                      width: 8,
                    ),
                    const Icon(
                      Icons.emoji_emotions,
                      color: Colors.white,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    SizedBox(
                      width: 240,
                      child: TextFormField(
                        cursorColor: Colors.white,
                        style: const TextStyle(color: Colors.white),
                        controller: messageController,
                        decoration: const InputDecoration(),
                      ),
                    ),
                    const Icon(
                      Icons.attach_file,
                      color: Colors.white,
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    const Icon(
                      Icons.camera_alt_rounded,
                      color: Colors.white,
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    const CircleAvatar(
                      backgroundColor: Color(0xff01af99),
                      child: Icon(
                        Icons.mic_none_sharp,
                        color: Colors.white,
                      ),
                    )
                  ],
                )),
          )
        ],
      ),
    );
  }

  Widget messagesCard(context, message, date) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: MediaQuery.of(context).size.width * .5,
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
            color: const Color.fromARGB(183, 32, 44, 54),
            borderRadius: BorderRadius.circular(10)),
        child: SizedBox(
          width: MediaQuery.of(context).size.width * .4,
          child: Column(
            children: [
              Text(
                message,
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.w300),
              ),
              const SizedBox(
                height: 7,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "${DateTime.now().hour}:${DateTime.now().minute}",
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.w300),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
