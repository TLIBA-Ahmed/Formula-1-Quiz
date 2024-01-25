import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home(this.switchScreen, {super.key});

  final void Function() switchScreen;

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Image.asset('image/logo-f1.png',
          width: 1500, color: Colors.black.withOpacity(0.9)),
      const Text('Learn About Formula 1 !',
          style: TextStyle(fontSize: 30, color: Colors.black)),
      const SizedBox(height: 15),
      ElevatedButton.icon(
        style: ElevatedButton.styleFrom(
            backgroundColor: Colors.black,
            foregroundColor: Colors.blueAccent,
            elevation: 25,
            padding: const EdgeInsets.all(15)),
        onPressed: switchScreen,
        icon: const Icon(Icons.arrow_right),
        label: const Text("Let's Start The Quiz ! "),
      )
    ]));
  }
}
