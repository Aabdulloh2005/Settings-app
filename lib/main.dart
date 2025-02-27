import 'package:flutter/material.dart';
import 'package:leeson__43/utils/app_constants.dart';
import 'package:leeson__43/views/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  void toggleThemeMode(bool value) {
    AppConstants.themeMode = value ? ThemeMode.dark : ThemeMode.light;
    setState(() {});
  }

  void changeImage(String image) {
    if (image.trim().isNotEmpty) {
      AppConstants.imageUrl = image;
      setState(() {});
    }
  }

  void togglePassword(List lst) {
    if (lst[0] != null) {
      Password.checkKey = lst[0];
    }
    if (lst[1] != null) {
      TextSize.size = lst[1];
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.amber,
        ),
      ),
      darkTheme: ThemeData.dark(),
      themeMode: AppConstants.themeMode,
      home: HomeScreen(
        changePassword: togglePassword,
        onThemeChanged: toggleThemeMode,
        onImageChanged: changeImage,
      ),
    );
  }
}
