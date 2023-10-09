import 'package:flutter/material.dart';
import 'package:things/src/presentation/pages/home_page.dart';

class ThingsApp extends StatelessWidget {
  const ThingsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(useMaterial3: true),
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}
