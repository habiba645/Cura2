// presentation/screens/signup.dart
import 'package:flutter/material.dart';import 'package:flutter/material.dart';
import 'package:learn_bloc/presentation/components/theme.dart';

class SignUp extends StatefulWidget {
  SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  String? user;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: clr(4),
      body: 
        Padding(
          padding:  EdgeInsets.only(left: 40, right: 40),
          child:  Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 150),
          
              
                 Text(
                  'Sign up to Cura',
                  style: TextStyle(
                    color: clr(1),
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
            
              SizedBox(height: 16),
              Text(
                'Sign up as a',
                style: TextStyle(
                  color: clr(2),
                  fontSize: 18,
                ),
              ),
              Row(
                children: [
                  Radio(
                    value: 'doctor',
                    groupValue: user,
                    onChanged: (value) {
                      setState(() {
                        user = value ;
                      });
                    },
                    activeColor: clr(2),
                  ),
                  Text(
                    'Doctor',
                    style: TextStyle(fontSize: 16.0),
                  ),
                  SizedBox(width: 20.0),
                  Radio(
                    value: 'patient',
                    groupValue: user,
                    onChanged: (value) {
                      setState(() {
                        user = value ;
                      });
                    },
                    activeColor: clr(2),

                  ),
                  Text(
                    'Patient',
                    style: TextStyle(fontSize: 16.0),
                  ),
                ],
              ),
              SizedBox(height: 30),
            
            buildCustomField("user name"),
             SizedBox(height: 20),
            buildCustomField("email"),
             SizedBox(height: 20),
            buildCustomField("password"),
             SizedBox(height: 30),

            Center(
              child: ElevatedButton(
              onPressed: () {
                /////////// Create an account logic
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: clr(3), 
                padding: EdgeInsets.symmetric(vertical:10), 
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20), 
                ),
             
                
              ),
              child: Padding(
                padding:  EdgeInsets.only(left: 20, right: 20),
                child: Text(
                  "Create an Account",
                  style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                ),
              ),
                        ),
            )

            ],
          ),
        ),
    );
  }
}

Widget buildCustomField(String myText) {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(50),
      border: Border.all(color: const Color.fromARGB(255, 199, 194, 194)),
    ),
    child: Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0), 
      child: TextFormField(
        decoration: InputDecoration(
          filled: true,
          fillColor: clr(5),
          hintText: myText,
          hintStyle: TextStyle(color: const Color.fromARGB(255, 199, 194, 194)),
          border: InputBorder.none,
          contentPadding: EdgeInsets.zero, 
        ),
        style: TextStyle(color: Colors.black), 
      ),
    ),
  );
}
