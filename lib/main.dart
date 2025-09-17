import 'package:flutter/material.dart';
import 'package:flutter_quick_start/onboarding/center_page.dart';
import 'package:flutter_quick_start/onboarding/onboarding.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Flutter App',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Scaffold(body: OnBoarding()),
    );
  }
}
