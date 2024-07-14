import 'package:flutter/material.dart';
import 'package:learn_bloc/presentation/screens/doctor/AImodels/ai_models.dart';
import 'package:learn_bloc/presentation/screens/doctor/DoctorProfileScreen.dart';
import 'package:learn_bloc/presentation/screens/doctor/Requests.dart';
import 'package:learn_bloc/presentation/screens/doctor/doc_chats.dart';
import 'package:learn_bloc/presentation/components/theme.dart';

class DoctorBottomNavigationBar extends StatelessWidget {
  final int currentIndex;

  DoctorBottomNavigationBar({required this.currentIndex});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      backgroundColor: clr(4),
      selectedItemColor: clr(3),
      unselectedItemColor: clr(1),
      onTap: (index) {
        switch (index) {
          case 0:
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => AIModels()),
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
              MaterialPageRoute(builder: (context) => Requests()),
            );
            break;
          case 3:
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => DoctorProfileScreen(
                doctorName: 'Dr. John Doe',
                specialty: 'Pediatrician',
                profileImagePath: 'lib/assets/doctor_profile_image.png',
              )),
            );
            break;
        }
      },
      items: [
        BottomNavigationBarItem(
          icon: SizedBox(
            width: 24, // Set the width
            height: 24, // Set the height
            child: Image.asset('lib/assets/artificial-intelligence_1013336.png'),
          ),
          label: 'AI Models',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.message),
          label: 'Chats',
        ),
        BottomNavigationBarItem(
          icon: SizedBox(
            width: 24, // Set the width
            height: 24, // Set the height
            child: Image.asset('lib/assets/mail_1201222.png'),
          ),
          label: 'Requests',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Profile',
        ),
      ],
    );
  }
}
