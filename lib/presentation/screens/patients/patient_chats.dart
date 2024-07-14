// presentation/screens/patients/patient_chats.dart
import 'package:flutter/material.dart';import 'package:flutter/material.dart';
import 'package:learn_bloc/presentation/components/customnavigatorbar.dart';
import 'package:learn_bloc/presentation/components/theme.dart';
import 'package:learn_bloc/presentation/screens/patients/PatientChat.dart';
import 'package:learn_bloc/presentation/screens/patients/patient_home.dart';
import 'package:learn_bloc/presentation/screens/patients/profile.dart';

class PatientChats extends StatelessWidget {
  const PatientChats({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: clr(4),
      appBar: AppBar(
        title: Center(
          child: Text(
            'Patient Chats',
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
                    profileName: "username",
                    profileImagePath: 'assets/profile_image.png',
                    appointments: [
                      {'doctorName': 'Dr. mohamed ali', 'appointmentDate': '2024-07-13'},
                      {'doctorName': 'Dr. mohamed', 'appointmentDate': '2024-07-14'},
                    ],
                  ),
                ),
              );
            },
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: 10, ////////
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(
              'Chat ${index + 1}', //////////////
              style: TextStyle(color: clr(1)),
            ),
            subtitle: Text(
              'Last message snippet...',
              style: TextStyle(color: clr(2)),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PatientChat(),
                ),
              );
            },
          );
        },
      ),
      bottomNavigationBar: CustomBottomNavigationBar(
        currentIndex: 1,
        onTap: (index) {
          switch (index) {
            case 0:
              Navigator.pushReplacementNamed(context, '/patienthome');
              break;
            case 1:
              break;
            case 2:
              Navigator.push(
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
