// ignore_for_file: prefer_const_constructors

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'authscreen.dart';
import 'loggedinscreen.dart';

class LoggedScreen extends StatelessWidget {
  const LoggedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (context, snapshot) {
            if(snapshot.hasData){
              return LoggedInScreen();
            }else{
              return AuthScreen();
            }
          },
          ),
    );
  }
}
