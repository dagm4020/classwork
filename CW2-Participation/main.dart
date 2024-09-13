import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isDarkMode = false; // Toggle value to track theme mode

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: isDarkMode
          ? ThemeData(brightness: Brightness.dark)
          : ThemeData(brightness: Brightness.light),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(19, 50, 247, 70),
          title: const Text(
            'Dagm\'s Insane App',
            style: TextStyle(
              fontSize: 23,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                isDarkMode ? 'Dark Mode' : 'Light Mode',
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(height: 20),
              Switch(
                value: isDarkMode,
                onChanged: (bool value) {
                  setState(() {
                    isDarkMode = value; // Toggle between dark and light mode
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
