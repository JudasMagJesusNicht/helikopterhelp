// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ListScreen extends StatelessWidget {
  const ListScreen({Key? key}) : super (key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.indigo[100],
        appBar: AppBar(
          title: Text('List Screen'),
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
                  child: Center(
                    child: Text(
                      'Helikopter 1',
                      style: TextStyle(fontSize: 50),
                    )
                  )
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                    decoration: BoxDecoration(
                      color: Colors.blue[200],
                      border: Border.all(color: Colors.black26),
                    ),
                  height: 150,
                    child: Center(
                        child: Text(
                          'Helikopter 2',
                          style: TextStyle(fontSize: 50),
                        )
                    )
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                    decoration: BoxDecoration(
                      color: Colors.blue[200],
                      border: Border.all(color: Colors.black26),
                    ),
                  height: 150,
                    child: Center(
                        child: Text(
                          'Helikopter 3',
                          style: TextStyle(fontSize: 50),
                        )
                    )
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                    decoration: BoxDecoration(
                      color: Colors.blue[200],
                      border: Border.all(color: Colors.black26),
                    ),
                  height: 150,
                    child: Center(
                        child: Text(
                          'Helikopter 4',
                          style: TextStyle(fontSize: 50),
                        )
                    )
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                    decoration: BoxDecoration(
                      color: Colors.blue[200],
                      border: Border.all(color: Colors.black26),
                    ),
                  height: 150,
                    child: Center(
                        child: Text(
                          'Helikopter 5',
                          style: TextStyle(fontSize: 50),
                        )
                    )
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                    decoration: BoxDecoration(
                      color: Colors.blue[200],
                      border: Border.all(color: Colors.black26),
                    ),
                  height: 150,
                    child: Center(
                        child: Text(
                          'Helikopter 6',
                          style: TextStyle(fontSize: 50),
                        )
                    )
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                    decoration: BoxDecoration(
                      color: Colors.blue[200],
                      border: Border.all(color: Colors.black26),
                    ),
                  height: 150,
                    child: Center(
                        child: Text(
                          'Helikopter 7',
                          style: TextStyle(fontSize: 50),
                        )
                    )
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                    decoration: BoxDecoration(
                      color: Colors.blue[200],
                      border: Border.all(color: Colors.black26),
                    ),
                    height: 150,
                    child: Center(
                        child: Text(
                          'Helikopter 8',
                          style: TextStyle(fontSize: 50),
                        )
                    )
                ),
              )
            ],
          ),
        )
    );
  }
}