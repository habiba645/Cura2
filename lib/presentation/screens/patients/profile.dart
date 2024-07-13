// presentation/screens/patients/profile.dart
import 'package:flutter/material.dart';import 'package:flutter/material.dart';
import 'package:learn_bloc/presentation/components/customnavigatorbar.dart';
import 'package:learn_bloc/presentation/components/theme.dart';
import 'package:learn_bloc/presentation/screens/patients/patient_chats.dart';
import 'package:learn_bloc/presentation/screens/patients/patient_home.dart';

class ProfileScreen extends StatelessWidget {
  final String profileName;
  final String profileImagePath;
  final List<Map<String, String>> appointments;

  ProfileScreen({
    required this.profileName,
    required this.profileImagePath,
    required this.appointments,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: clr(4),
      appBar: AppBar(
        title: Center(
          child: Text(
            'Profile',
            style: TextStyle(color: clr(5)),
          ),
        ),
        backgroundColor: clr(3),
      ),
      body: Column(
        children: [
          SizedBox(height: 20), 
          CircleAvatar(
            backgroundImage: AssetImage(profileImagePath),
            radius: 50,
          ),
          SizedBox(height: 16),
          Text(
            profileName,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: clr(1),
            ),
          ),
          SizedBox(height: 24),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                'Appointments',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: clr(1),
                ),
              ),
            ),
          ),
          SizedBox(height: 16),
          Expanded(
            child: ListView.builder(
              itemCount: appointments.length,
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: clr(5),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        appointments[index]['doctorName']!,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: clr(1),
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        appointments[index]['appointmentDate']!,
                        style: TextStyle(
                          fontSize: 16,
                          color: clr(2),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
      bottomNavigationBar: CustomBottomNavigationBar(
        currentIndex: 2,
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
                    profileName: profileName,
                    profileImagePath: profileImagePath,
                    appointments: appointments,
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
