import 'package:flutter/material.dart';
import 'package:helikopterhelp/loginscreen.dart';
import 'package:helikopterhelp/registerscreen.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({Key? key}) : super(key: key);

  @override
  _AuthScreenState createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  //Zeige LoginPage
  bool showLoginPage = true;

  void toggleScreens(){
    setState(() {
      showLoginPage = !showLoginPage;
    });
  }

  @override
  Widget build(BuildContext context) {
    if(showLoginPage){
      return LoginScreen(showRegisterPage: toggleScreens);
    }else{
      return RegisterScreen(showLoginPage: toggleScreens);
    }
  }
}
