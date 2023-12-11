import 'package:chat_app/Screens/login_home_page.dart';
import 'package:chat_app/Screens/signup_home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const ChatModApp());
}

class ChatModApp extends StatelessWidget {
  const ChatModApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        LoginHomePage.id: (context) => const LoginHomePage(),
        SignupHomePage.id: (context) => const SignupHomePage(),
      },
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: false),
      initialRoute: LoginHomePage.id,
    );
  }
}
