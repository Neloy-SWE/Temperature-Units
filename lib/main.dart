import 'package:flutter/material.dart';
import 'package:temperature_units/components/theme/my_theme.dart';
import 'package:temperature_units/screens/screen_splash.dart';
import 'package:temperature_units/utilities/all_text.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: MyTheme.set,
        title: AllText.title,
        home: const SplashScreen(),
      ),
    );
  }
}
