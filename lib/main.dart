import 'package:flutter/material.dart';
import 'package:smarthome/pages/controlling_page.dart';
import 'package:smarthome/pages/devicepage.dart';
import 'package:smarthome/pages/homepage.dart';
import 'package:smarthome/pages/login/page/loginpage.dart';
import 'package:smarthome/pages/notificationpage.dart';
import 'package:smarthome/pages/onboardingpage.dart';
import 'package:smarthome/pages/register/page/registerpage.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

Future<void> main() async {
  await Supabase.initialize(
    url: 'https://gjsspjfedcyzanjqxyzr.supabase.co',
    anonKey:
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imdqc3NwamZlZGN5emFuanF4eXpyIiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTUwNjQ2NTMsImV4cCI6MjAxMDY0MDY1M30.p7JnTb5egbGkmLe__qe_pO6gFvELHQWR2h71nt7wmwQ',
  );
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': (context) => OnBoarding(),
        '/homepage': (context) => HomePage(),
        '/login': (context) => LoginPage(),
        '/register': (context) => RegisterPage(),
        '/controlling': (context) => ControllingPage(),
        '/device': (context) => DevicePage(),
        '/notification': (context) => NotificationPage(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}

//