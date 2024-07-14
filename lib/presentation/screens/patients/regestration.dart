// presentation/screens/patients/regestration.dart
import 'package:flutter/cupertino.dart';import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learn_bloc/presentation/components/theme.dart';
class Registeration extends StatefulWidget {
  const Registeration({super.key, required String doctorName});

  @override
  State<Registeration> createState() => _RegisterationState();
}

class _RegisterationState extends State<Registeration> {
  DateTime dateTime = DateTime(2024, 2, 4);
  int  _YellowFingers = -1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: clr(4),
      appBar: AppBar(
        backgroundColor: clr(3),
        title:  Text("Registeration",
          style: TextStyle(
              color: clr(5),
              fontWeight: FontWeight.bold,
              fontSize: 20
          ),),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text("Registeration Now!",
              style: TextStyle(
                color: clr(3),
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),),
              Text("First Name", style: TextStyle(fontSize: 18),),
              _buildTextFiled( "Enter Your First Name"),
              SizedBox(height: 10,),
              Text("Second Name", style: TextStyle(fontSize: 18),),
              _buildTextFiled("Enter Your Second Name"),
              SizedBox(height: 10,),
              Text("Address", style: TextStyle(fontSize: 18),),
              _buildTextFiled("Enter Your Address"),
              SizedBox(height: 10,),
              Text("National ID", style: TextStyle(fontSize: 18),),
              _buildTextFiled("Enter National ID"),
              SizedBox(height: 10,),
              Text(" Phone number ", style: TextStyle(fontSize: 18),),
              _buildTextFiled("Enter Your Phone number"),
              SizedBox(height: 10,),
              buildGenderToggleButton(_YellowFingers, (index) {
                setState(() {
                  _YellowFingers = index;
                });
              }),
              SizedBox(height: 10,),
              _buildDateOfBirth(context),
              SizedBox(height: 10,),
              TextButton(
                onPressed: () {},
                child: Text(
                  "Continue",
                  style: TextStyle(color: clr(5),
                  fontSize: 25),
                ),
                style: TextButton.styleFrom(
                  backgroundColor: clr(3),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
  Widget _buildTextFiled(
      String Text,
      ){
    return TextField(
      decoration: InputDecoration(
        hintText: Text,
        filled: true,
        fillColor:clr(3),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30.0),
          borderSide: BorderSide.none,
        ),
      ),);
  }
  Widget buildGenderToggleButton(int selectedIndex, Function(int) onPressed) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Gender',
          style: TextStyle(fontSize: 18),
        ),
        SizedBox(height: 10),
        ToggleButtons(
          children: ['Male', 'Female'].map((option) => Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(option),
          )).toList(),
          isSelected: List.generate(2, (index) => index == selectedIndex),
          onPressed: onPressed,
          fillColor: clr(3),
          selectedColor:clr(5),
          borderColor: clr(3),
          borderRadius: BorderRadius.circular(30.0),
        ),
      ],
    );
  }
  Widget _buildDateOfBirth(BuildContext context) {
    return CupertinoButton(
      color: clr(3),
      child: Text(
        'Select Date of Birth',
        style: TextStyle(color: clr(5)),
      ),
      onPressed: () {
        showCupertinoModalPopup(
          context: context,
          builder: (BuildContext context) => Container(
            height: 300,
            color: clr(5),
            child: Column(
              children: [
                SizedBox(
                  height: 220,
                  child: CupertinoDatePicker(
                    backgroundColor: clr(5),
                    initialDateTime: dateTime,
                    mode: CupertinoDatePickerMode.date,
                    onDateTimeChanged: (DateTime newTime) {
                      setState(() {
                        dateTime = newTime;
                      });
                    },
                  ),
                ),
                CupertinoButton(
                  child: Text('Done'),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  borderRadius: BorderRadius.circular(30),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
