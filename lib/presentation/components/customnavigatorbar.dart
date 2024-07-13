// presentation/components/customnavigatorbar.dart
import 'package:flutter/material.dart';import 'package:flutter/material.dart';
import 'package:learn_bloc/presentation/components/theme.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;


  CustomBottomNavigationBar({
    required this.currentIndex,
    required this.onTap,
    
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: clr(3),
      selectedItemColor: clr(4),
      unselectedItemColor: Color.fromARGB(255, 18, 12, 12),
      currentIndex: currentIndex,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.chat),
          label: 'Chat',
        ),
       
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Profile',
        ),
      ],
      onTap: onTap,
    );
  }
}
