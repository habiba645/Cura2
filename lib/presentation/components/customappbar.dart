// presentation/components/customappbar.dart
import 'package:flutter/material.dart';import 'package:flutter/material.dart';
import 'package:learn_bloc/presentation/components/theme.dart';
import 'package:learn_bloc/presentation/screens/patients/profile.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final String profileName;
  final String profileImagePath;
  final List<Map<String, String>> appointments;

  CustomAppBar({
    required this.title,
    required this.profileName,
    required this.profileImagePath,
    required this.appointments,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Center(
        child: Text(
          title,
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
                  profileName: profileName,
                  profileImagePath: profileImagePath,
                  appointments: appointments,
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
