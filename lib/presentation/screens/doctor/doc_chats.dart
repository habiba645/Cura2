// presentation/screens/doctor/doc_chats.dart
import 'package:flutter/material.dart';
import 'package:learn_bloc/presentation/components/customappbar.dart';
import 'package:learn_bloc/presentation/components/doc_navbar.dart';
import 'package:learn_bloc/presentation/components/theme.dart';
import 'package:learn_bloc/presentation/screens/doctor/chat.dart';

class DoctorChats extends StatelessWidget {
  DoctorChats({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Doctor Chats',
        profileName: "Dr. John Doe",
        profileImagePath: 'assets/doctor_profile_image.png',
        appointments: [
          {'patientName': 'John Smith', 'appointmentDate': '2024-07-15'},
          {'patientName': 'Jane Doe', 'appointmentDate': '2024-07-16'},
        ],
      ),
      backgroundColor: clr(4),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(
              'Chat ${index + 1}',
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
                  builder: (context) => DoctorChat(),
                ),
              );
            },
          );
        },
      ),
      bottomNavigationBar: DoctorBottomNavigationBar(currentIndex: 1),
    );
  }
}
