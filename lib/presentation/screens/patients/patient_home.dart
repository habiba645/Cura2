// presentation/screens/patients/patient_home.dart
import 'package:flutter/material.dart';
import 'package:learn_bloc/presentation/components/customappbar.dart';
import 'package:learn_bloc/presentation/components/customnavigatorbar.dart';
import 'package:learn_bloc/presentation/components/theme.dart';
import 'package:learn_bloc/presentation/screens/patients/chatbot.dart';
import 'package:learn_bloc/presentation/screens/patients/patient_chats.dart';
import 'package:learn_bloc/presentation/screens/patients/profile.dart';
import 'package:learn_bloc/presentation/screens/patients/search.dart';

class PatientHome extends StatelessWidget {
  PatientHome({super.key, required String username});
  String username = "username";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: clr(4),
      appBar: CustomAppBar(
        title: "Patient Home",
        profileName: username,
        profileImagePath: 'assets/profile_image.png',
        appointments: [
          {'doctorName': 'Dr. mohamed ali', 'appointmentDate': '2024-07-13'},
          {'doctorName': 'Dr. mohamed', 'appointmentDate': '2024-07-14'},
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            buildCard(
              'Chat Bot!',
              'Tell us your symptoms and know the specialty of the doctor recommended for you.',
              'Start',
              () {
                navigateToChatBotScreen(context);
              },
            ),
            SizedBox(height: 16),
            buildCard(
              'Search and Book',
              'Find doctors and book appointments.',
              'Search',
              () {
                navigateToSearchAndBookScreen(context);
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(
        currentIndex: 0,
        onTap: (index) {
          switch (index) {
            case 0:
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => PatientHome(username: 'ghjklhg',)));
              break;
            case 1:
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => PatientChats()));
              break;
            case 2:
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => ProfileScreen(
                profileName: username,
                profileImagePath: 'assets/profile_image.png',
                appointments: [
                  {'doctorName': 'Dr. mohamed ali', 'appointmentDate': '2024-07-13'},
                  {'doctorName': 'Dr. mohamed', 'appointmentDate': '2024-07-14'},
                ],
              )));
              break;
          }
        },
      ),
    );
  }
}
  void navigateToChatBotScreen(BuildContext context) {
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => ChatBotScreen(username: "ghj")));
  }

  void navigateToSearchAndBookScreen(BuildContext context) {
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => SearchAndBookScreen(username: "jhdxfg")));
  }

 Widget buildCard(String title, String description, String buttonText, VoidCallback onPressed) {
  return Card(
    color: clr(5),
    elevation: 4,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
    child: Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: clr(1),
            ),
          ),
          SizedBox(height: 8),
          Text(
            description,
            style: TextStyle(
              fontSize: 16,
              color: clr(1),
            ),
          ),
          SizedBox(height: 16),
          ElevatedButton(
            onPressed: onPressed,
            style: ElevatedButton.styleFrom(
              backgroundColor: clr(3),
              padding: EdgeInsets.symmetric(horizontal: 32, vertical: 12),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            child: Text(
              buttonText,
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
          ),
        ],
      ),
    ),
  );
}
