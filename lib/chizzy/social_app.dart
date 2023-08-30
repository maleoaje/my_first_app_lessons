import 'package:flutter/material.dart';
import 'package:my_first_app/constants.dart';

class SocialApp extends StatelessWidget {
  const SocialApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: brown,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: brown,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.keyboard_backspace,
            color: orange,
            size: 35,
          ),
        ),
        actions: const [
          Icon(
            Icons.more_vert,
            color: orange,
            size: 30,
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Row(
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
                        backgroundColor: brown,
                        backgroundImage: AssetImage('images/batman.jpg'),
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
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'SARAH GELLER',
                style: TextStyle(
                    color: white, fontSize: 20, fontWeight: FontWeight.w500),
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.location_on_outlined,
                    color: grey,
                  ),
                  Text(
                    'Los Angeles',
                    style: TextStyle(
                        fontSize: 14, color: grey, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    style: ButtonStyle(
                      elevation: MaterialStateProperty.all(1),
                      backgroundColor: MaterialStateProperty.resolveWith<Color>(
                        (Set<MaterialState> states) => orange,
                      ),
                      overlayColor: MaterialStateProperty.all(orange),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      )),
                    ),
                    onPressed: () {},
                    child: const Padding(
                      padding: EdgeInsets.fromLTRB(30, 5, 30, 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.add,
                            color: white,
                          ),
                          Text(
                            'FOLLOW',
                            style: TextStyle(
                                fontSize: 14,
                                color: white,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  OutlinedButton(
                    style: ButtonStyle(
                      side: MaterialStateProperty.all(
                        const BorderSide(color: grey, width: 2),
                      ),
                      elevation: MaterialStateProperty.all(1),
                      backgroundColor: MaterialStateProperty.resolveWith<Color>(
                        (Set<MaterialState> states) => brown,
                      ),
                      overlayColor: MaterialStateProperty.all(orange),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                          side: BorderSide.none)),
                    ),
                    onPressed: () {},
                    child: const Padding(
                      padding: EdgeInsets.fromLTRB(27, 16, 27, 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'MESSAGE',
                            style: TextStyle(
                                fontSize: 14,
                                color: grey,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(0, 40, 20, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'PORTFOLIO',
                      style: TextStyle(
                          fontSize: 14,
                          color: white,
                          fontWeight: FontWeight.w600),
                    ),
                    Text(
                      'LIFESTYLE',
                      style: TextStyle(
                          fontSize: 14,
                          color: white,
                          fontWeight: FontWeight.w600),
                    ),
                    Text(
                      'COLLABORATION',
                      style: TextStyle(
                          fontSize: 14,
                          color: white,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              SizedBox(
                height: 320,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                        'images/lioness.jpg',
                        width: 170,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                        'images/animegirl.jpg',
                        width: 170,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                        'images/fastcar.jpg',
                        width: 170,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                        'images/dog.jpg',
                        width: 170,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                        'images/yoda.jpg',
                        width: 170,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
