import 'package:chat_app/screens/welcome/welcomeScreen.dart';
import 'package:flutter/material.dart';

import 'theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  
  bool islight = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: lightThemeData(context),
      darkTheme: darkThemeData(context),
      // themeMode: islight ? ThemeMode.dark : ThemeMode.light,
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.arrow_back),
          actions: [
            Center(
                child: TextButton(
              onPressed: () {
                setState(() {
                  if (islight) {
                    islight = false;
                  } else {
                    islight = true;
                   
                  }
                });
              },
              child: Center(
                  child: Text(
                islight ? "Light" : "Dark",
                style: TextStyle(color: Colors.white),
              )),
            ))
          ],
        ),
        body: const WelcomeScreen(),
      ),
    );
  }
}
