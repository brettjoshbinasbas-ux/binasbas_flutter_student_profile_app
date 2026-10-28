import 'package:flutter/material.dart';
import 'student_profile_page.dart';

class StudentProfileApp extends StatelessWidget {
  const StudentProfileApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Student Profile',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF303F9F), // Refined Indigo 700
        ),
        useMaterial3: true,
      ),
      home: const StudentProfilePage(),
    );
  }
}
