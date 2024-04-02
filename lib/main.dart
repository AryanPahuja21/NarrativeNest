import 'package:flutter/material.dart';
import 'package:startup_draft1/core/secrets/app_secrets.dart';
import 'package:startup_draft1/core/theme/theme.dart';
import 'package:startup_draft1/features/auth/presentation/pages/login.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Supabase.initialize(
      url: AppSecrets.supabaseUrl, anonKey: AppSecrets.supabaseKey);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'School Bus Tracker',
      theme: AppTheme.darkThemeMode,
      home: const LoginPage(),
    );
  }
}
