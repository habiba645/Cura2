// presentation/screens/patients/search.dart
import 'package:flutter/material.dart';import 'package:flutter/material.dart';
import 'package:learn_bloc/presentation/components/customappbar.dart';
import 'package:learn_bloc/presentation/components/customnavigatorbar.dart';
import 'package:learn_bloc/presentation/components/theme.dart';
import 'package:learn_bloc/presentation/screens/doctor/DoctorProfileScreen.dart';
import 'package:learn_bloc/presentation/screens/patients/patient_chats.dart';
import 'package:learn_bloc/presentation/screens/patients/patient_home.dart';
import 'package:learn_bloc/presentation/screens/patients/profile.dart';

class SearchAndBookScreen extends StatelessWidget {
  final String username;

  SearchAndBookScreen({Key? key, required this.username}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: clr(4),
      appBar: CustomAppBar(
        title: "Search and Book",
        profileName: username,
        profileImagePath: 'assets/profile_image.png',  // This should be dynamic
        appointments: [
          {'doctorName': 'Dr. mohamed ali', 'appointmentDate': '2024-07-13'},
          {'doctorName': 'Dr. mohamed', 'appointmentDate': '2024-07-14'},
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 16),
            TextField(
              decoration: InputDecoration(
                hintText: 'Search for doctors',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              onChanged: (value) {
                // Handle search functionality
              },
            ),
            SizedBox(height: 16),
            Text(
              'Doctors',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: clr(1),
              ),
            ),
            SizedBox(height: 16),
            Expanded(
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  buildDoctorCard(
                    'Dr. mohamed',
                    'assets/doctor1.jpg',
                    'Cardiologist',
                    context,
                  ),
                  SizedBox(width: 16),
                  buildDoctorCard(
                    'Dr. mohamed ali',
                    'assets/doctor2.jpg',
                    'Neurologist',
                    context,
                  ),
                  SizedBox(width: 16),
                  buildDoctorCard(
                    'Dr. moh ali',
                    'assets/doctor3.jpg',
                    'Pediatrician',
                    context,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(
        currentIndex: 1,
        onTap: (index) {
          /////////////
          switch (index) {
            case 0:
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => PatientHome()),
              );
              break;
            case 1:
              
              break;
            case 2:
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => ProfileScreen(
                    profileName: username,
                    profileImagePath: 'assets/profile_image.png', // This should be dynamic
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

  Widget buildDoctorCard(String name, String imagePath, String specialty, BuildContext context) {
    return GestureDetector(
      // onTap: () {
      //   Navigator.push(
      //     context,
      //     MaterialPageRoute(builder: (context) => DoctorProfileScreen(name: name)),
      //   );
      // },
      child: Container(
        width: 120,
        decoration: BoxDecoration(
          color: clr(5),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(60),
              child: Image.asset(
                imagePath,
                width: 80,
                height: 80,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 8),
            Text(
              name,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: clr(1),
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 4),
            Text(
              specialty,
              style: TextStyle(
                fontSize: 12,
                color: clr(1),
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
