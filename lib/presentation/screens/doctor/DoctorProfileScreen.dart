// presentation/screens/doctor/DoctorProfileScreen.dart
import 'package:flutter/material.dart';
import 'package:learn_bloc/presentation/components/doc_appbar.dart';
import 'package:learn_bloc/presentation/components/doc_navbar.dart';
import 'package:learn_bloc/presentation/components/theme.dart';

class DoctorProfileScreen extends StatelessWidget {
  final String doctorName;
  final String specialty;
  final String profileImagePath;

  DoctorProfileScreen({
    required this.doctorName,
    required this.specialty,
    required this.profileImagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DocAppBar(
        title: 'Doctor Profile',
        profileImagePath: profileImagePath,
        doctorName: doctorName,
        specialty: specialty,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage(profileImagePath),
            ),
            SizedBox(height: 20),
            Text(
              doctorName,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              specialty,
              style: TextStyle(
                fontSize: 18,
                color: Colors.grey[600],
              ),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
      bottomNavigationBar: DoctorBottomNavigationBar(currentIndex: 3),
    );
  }
}
