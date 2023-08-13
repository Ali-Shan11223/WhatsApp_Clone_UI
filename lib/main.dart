import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clone/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.teal,
        // colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
        //useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}
