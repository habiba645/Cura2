// presentation/components/doc_appbar.dart
import 'package:flutter/material.dart';import 'package:flutter/material.dart';
import 'package:learn_bloc/presentation/screens/doctor/DoctorProfileScreen.dart'; // Adjust import path as per your project structure
import 'package:learn_bloc/presentation/components/theme.dart';

class DocAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final String profileImagePath;
  final String doctorName;
  final String specialty;

  DocAppBar({
    required this.title,
    required this.profileImagePath,
    required this.doctorName,
    required this.specialty,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        title,
        style: TextStyle(color: clr(5)),
      ),
      backgroundColor: clr(3),
      actions: [
        IconButton(
          icon: Icon(Icons.person),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DoctorProfileScreen(
                  doctorName: doctorName,
                  specialty: specialty,
                  profileImagePath: profileImagePath,
                ),
              ),
            );
          },
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
