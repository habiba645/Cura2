// presentation/screens/patients/PatientChat.dart
import 'package:flutter/material.dart';import 'package:flutter/material.dart';
import 'package:learn_bloc/presentation/components/customnavigatorbar.dart';
import 'package:learn_bloc/presentation/components/theme.dart';
import 'package:learn_bloc/presentation/screens/patients/patient_chats.dart';
import 'package:learn_bloc/presentation/screens/patients/patient_home.dart';
import 'package:learn_bloc/presentation/screens/patients/profile.dart';

class PatientChat extends StatelessWidget {
  PatientChat({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: clr(4),
      appBar: AppBar(
        title: Center(
          child: Text(
            'Chat with Patient',
            style: TextStyle(color: clr(5)),
          ),
        ),
        backgroundColor: clr(3),
        actions: [
          IconButton(
            icon: Icon(Icons.person),
            onPressed: () {
              // Navigate to profile screen
            },
          ),
        ],
      ),
      body: Center(
        child: Text(
          'Chat Content', // Replace with your dynamic chat content
          style: TextStyle(color: clr(1)),
        ),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(
        currentIndex: 1,
        onTap: (index) {
          switch (index) {
            case 0:
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => PatientHome()),
              );
              break;
            case 1:
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => PatientChats()),
              );
              break;
            case 2:
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => ProfileScreen(
                    profileName: "username",
                    profileImagePath: 'assets/profile_image.png',
                    appointments: [
                      {'doctorName': 'Dr. mohamed ali', 'appointmentDate': '2024-07-13'},
                      {'doctorName': 'Dr. mohamed', 'appointmentDate': '2024-07-14'},
                    ],
                  ),
                ),
              );
              break;
          }
        },
      ),
    );
  }
}
