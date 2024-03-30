import 'package:flutter/material.dart';
import 'package:startup_draft1/core/theme/theme.dart';
import 'package:startup_draft1/features/auth/presentation/pages/signup.dart';

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
      title: 'School Bus Tracker',
      theme: AppTheme.darkThemeMode,
      home: const SignUpPage(),
    );
  }
}
