// main.dart
import 'package:flutter/material.dart';import 'package:flutter/material.dart';
import 'package:learn_bloc/presentation/screens/patients/patient_chats.dart';
import 'package:learn_bloc/presentation/screens/patients/patient_home.dart';
import 'package:learn_bloc/presentation/screens/patients/search.dart';
import 'package:learn_bloc/presentation/screens/signup.dart';
import 'package:learn_bloc/presentation/screens/welcom.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: true,
      ),
      initialRoute: 'patienthome', 
      routes: {
        'signup': (context) => SignUp(),
        'patienthome': (context) => PatientHome(),
        'patientchats': (context) => PatientChats(),
        'searchandbook': (context) => SearchAndBookScreen(username: 'username'),
      },
    );
  }
}
