import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: SafeArea(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                  decoration: BoxDecoration(
                    color: Colors.blue[200],
                    border: Border.all(color: Colors.black26),
                  ),
                  height: 150,
                  child: const Center(
                      child: Text(
                    'Helikopter 1',
                    style: TextStyle(fontSize: 50),
                  ))),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                  decoration: BoxDecoration(
                    color: Colors.blue[200],
                    border: Border.all(color: Colors.black26),
                  ),
                  height: 150,
                  child: const Center(
                      child: Text(
                    'Helikopter 2',
                    style: TextStyle(fontSize: 50),
                  ))),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                  decoration: BoxDecoration(
                    color: Colors.blue[200],
                    border: Border.all(color: Colors.black26),
                  ),
                  height: 150,
                  child: const Center(
                      child: Text(
                    'Helikopter 3',
                    style: TextStyle(fontSize: 50),
                  ))),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                  decoration: BoxDecoration(
                    color: Colors.blue[200],
                    border: Border.all(color: Colors.black26),
                  ),
                  height: 150,
                  child: const Center(
                      child: Text(
                    'Helikopter 4',
                    style: TextStyle(fontSize: 50),
                  ))),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                  decoration: BoxDecoration(
                    color: Colors.blue[200],
                    border: Border.all(color: Colors.black26),
                  ),
                  height: 150,
                  child: const Center(
                      child: Text(
                    'Helikopter 5',
                    style: TextStyle(fontSize: 50),
                  ))),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                  decoration: BoxDecoration(
                    color: Colors.blue[200],
                    border: Border.all(color: Colors.black26),
                  ),
                  height: 150,
                  child: const Center(
                      child: Text(
                    'Helikopter 6',
                    style: TextStyle(fontSize: 50),
                  ))),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                  decoration: BoxDecoration(
                    color: Colors.blue[200],
                    border: Border.all(color: Colors.black26),
                  ),
                  height: 150,
                  child: const Center(
                      child: Text(
                    'Helikopter 7',
                    style: TextStyle(fontSize: 50),
                  ))),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                  decoration: BoxDecoration(
                    color: Colors.blue[200],
                    border: Border.all(color: Colors.black26),
                  ),
                  height: 150,
                  child: const Center(
                      child: Text(
                    'Helikopter 8',
                    style: TextStyle(fontSize: 50),
                  ),
                  ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
