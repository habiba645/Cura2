// main.dart
import 'package:flutter/material.dart';import 'package:flutter/material.dart';
import 'package:learn_bloc/presentation/screens/doctor/AImodels/ai_models.dart';
import 'package:learn_bloc/presentation/screens/patients/patient_chats.dart';
import 'package:learn_bloc/presentation/screens/patients/patient_home.dart';
import 'package:learn_bloc/presentation/screens/patients/search.dart';
import 'package:learn_bloc/presentation/screens/signup.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/patienthome',
      routes: {
        '/signup': (context) => SignUp(),
        '/patienthome': (context) => PatientHome(username: 'ghyujk'),
        '/patientchats': (context) => PatientChats(),
        '/searchandbook': (context) => SearchAndBookScreen(username: 'username'),
      },
    );
  }
}
