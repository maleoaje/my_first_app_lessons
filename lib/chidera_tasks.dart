import 'package:flutter/material.dart';

class ChiderasTasks extends StatelessWidget {
  const ChiderasTasks({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        title: const Text("Chidera's Task"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    'images/animefood.jpg',
                    height: 100,
                  ),
                  const Text(
                    'Yumiko',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    'images/animegirl.jpg',
                    height: 100,
                  ),
                  const Text('mako',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w700))
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    'images/animegirl2andafox.jpg',
                    height: 100,
                  ),
                  const Text('firex',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w700))
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    'images/batman.jpg',
                    height: 100,
                  ),
                  const Text('batman',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w700))
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    'images/dog.jpg',
                    height: 100,
                  ),
                  const Text('drex',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w700))
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    'images/fastcar.jpg',
                    height: 100,
                  ),
                  const Text('miles',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w700))
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    'images/horse.jpeg',
                    height: 100,
                  ),
                  const Text('arabian',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w700))
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    'images/lioness.jpg',
                    height: 100,
                  ),
                  const Text('brainstorm',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w700))
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    'images/racoon.jpg',
                    height: 100,
                  ),
                  const Text('goku',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w700))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
