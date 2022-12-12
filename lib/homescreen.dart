// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'Tabs/profile.dart';
import 'Tabs/weather.dart';
import 'Tabs/map.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super (key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          bottom: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.sunny_snowing)),
              Tab(icon: Icon(Icons.map_outlined)),
              Tab(icon: Icon(Icons.person)),
            ],
          ),

        ),
        body:  TabBarView(
          children: [
            Weather(title: 'Weather'),
            Map(),
            Profile(title: 'Profile'),

          ],
        ),
      ),
    );
  }
}