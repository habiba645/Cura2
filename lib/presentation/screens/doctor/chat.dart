// presentation/screens/doctor/chat.dart
import 'package:flutter/material.dart';
import 'package:learn_bloc/presentation/components/customappbar.dart';
import 'package:learn_bloc/presentation/components/customnavigatorbar.dart';
import 'package:learn_bloc/presentation/components/theme.dart';
import 'package:learn_bloc/presentation/screens/doctor/doc_chats.dart';
import 'package:learn_bloc/presentation/screens/patients/patient_home.dart';
import 'package:learn_bloc/presentation/screens/patients/profile.dart';

class DoctorChat extends StatelessWidget {
  DoctorChat({Key? key});

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
            
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProfileScreen(
                    profileName: "Dr. mohammed ali", 
                    profileImagePath: 'assets/doctor_profile_image.png', ///////dynamic
                    appointments: [
                      {'patientName': 'John Smith', 'appointmentDate': '2024-07-15'},
                      {'patientName': 'Jane Doe', 'appointmentDate': '2024-07-16'},
                    ],
                  ),
                ),
              );
            },
          ),
        ],
      ),
      body: Center(
        child: Text(
          'Chat Content', 
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
                MaterialPageRoute(builder: (context) => PatientHome(username: "patient")),
              );
              break;
            case 1:
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => DoctorChats()),
              );
              break;
            case 2:
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => ProfileScreen(
                    profileName: "Dr. John Doe", // Replace with doctor's name
                    profileImagePath: 'assets/doctor_profile_image.png', // Replace with doctor's profile image
                    appointments: [
                      {'patientName': 'John Smith', 'appointmentDate': '2024-07-15'},
                      {'patientName': 'Jane Doe', 'appointmentDate': '2024-07-16'},
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
