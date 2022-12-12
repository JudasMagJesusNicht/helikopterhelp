// ignore_for_file: prefer_const_constructors

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:helikopterhelp/authscreen.dart';
import 'screens.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      theme: ThemeData(
          brightness: Brightness.dark,
          primaryColor: Colors.blueGrey,
          scaffoldBackgroundColor: Colors.grey[300],
      ),
      initialRoute: '/logcheck',
      routes: {
          '/home' : (context) => HomeScreen(),
          '/login' : (context) => AuthScreen(),
          '/listview' : (context) => ListScreen(),
          '/logcheck' : (context) => LoggedScreen(),
          '/loggedin' : (context) => LoggedInScreen(),
      },
    );
  }
}

