// presentation/screens/welcom.dart
import 'package:flutter/material.dart';import 'package:flutter/material.dart';
import 'package:learn_bloc/presentation/components/theme.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: clr(4),
      
      body: Center(
        child: Padding(
          padding:  EdgeInsets.all(16.0),
            child: Column(
              children: [
                 SizedBox(height: 250),
                Text(
                  'Welcome to',
                  style: TextStyle(fontSize: 45),
                  textAlign: TextAlign.center,
                ),
                Text(
                  'Cura',
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () {
                    // Navigate to signup screen
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF0B1C3D),
                    padding: EdgeInsets.symmetric (horizontal: 50, vertical: 12),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),  
                    ),
                    
                  ),
                  child: Text(
                    'Sign up',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ),
                SizedBox(height: 16),
        
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                    Text(
                        textAlign: TextAlign.center,
                      'Already have an account?',
                      style: TextStyle(color: Colors.grey),
                    ),
                    TextButton(
                    
                      child: 
                      Text(
                          textAlign: TextAlign.center,
                        'log in',
                      style: TextStyle(color: clr(3)),
                      ), 
                      onPressed: () {
                        // navigate to log in screen
                      },
                    )
                  ],
                ),
               
              ],
            ),
          ),
      ),
      
    );
  }
}
