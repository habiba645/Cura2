// presentation/screens/doctor/AImodels/lung.dart
import 'package:flutter/material.dart';import 'package:flutter/material.dart';
import 'package:learn_bloc/presentation/components/theme.dart';
class lung extends StatefulWidget {
  const lung({super.key});

  @override
  State<lung> createState() => _lungState();
}
class _lungState extends State<lung> {
  int _AnxietyStatus = -1;
  int _PeerPressureStatus = -1;
  int _ChronicDiseaseStatus = -1;
  int _FatigueStatus = -1;
  int _AllergyStatus = -1;
  int _WheezingStatus = -1;
  int _SwallowingStatus = -1;
  int _AlcoholStatus = -1;
  int _ChestPainStatus = -1;
  int _CoughingStatus = -1;
  int _YellowFingers = -1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      appBar: AppBar(
        backgroundColor: clr(3),
        title:  Text("lung Disease",
          style: TextStyle(
              color: clr(5),
              fontWeight: FontWeight.bold,
              fontSize: 20
          ),),
        centerTitle: true,
      ),
      body: Padding(
    padding: const EdgeInsets.all(15.0),
       child: Container(
        width: 350,
        decoration: BoxDecoration(
        color: clr(5),
        borderRadius: BorderRadius.circular(40),
    ),
         child: SingleChildScrollView(
          child: Padding(
          padding: const EdgeInsets.all(15.0),
           child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Text("Patient Information",
            style: TextStyle(
            color: clr(3),
            fontSize: 25,
             fontWeight: FontWeight.bold
            ),),

            _buildToggleButton("Anxiety Status",  _AnxietyStatus, (index) {
    setState(() {
      _AnxietyStatus = index;
    });
    }),
            _buildToggleButton("Peer Pressure Status",  _PeerPressureStatus, (index) {
    setState(() {
      _PeerPressureStatus = index;
    });
    }),
            _buildToggleButton("Chronic Disease Status",  _ChronicDiseaseStatus, (index) {
    setState(() {
      _ChronicDiseaseStatus = index;
    });
    }),
            _buildToggleButton("Fatigue Status",  _FatigueStatus, (index) {
        setState(() {
          _FatigueStatus = index;
        });
      }),
            _buildToggleButton("Allergy Status",  _AllergyStatus, (index) {
        setState(() {
          _AllergyStatus = index;
        });
      }),
            _buildToggleButton("Wheezing Status", _WheezingStatus, (index) {
        setState(() {
          _WheezingStatus = index;
        });
      }),
            _buildToggleButton("Swallowing Status",  _SwallowingStatus, (index) {
        setState(() {
          _SwallowingStatus= index;
        });
      }),
            _buildToggleButton("Alcohol Status",  _AlcoholStatus, (index) {
        setState(() {
          _AlcoholStatus = index;
        });
      }),
            _buildToggleButton("ChestPain Status", _ChestPainStatus, (index) {
        setState(() {
          _ChestPainStatus = index;
        });
      }),
            _buildToggleButton("Coughing Status", _CoughingStatus, (index) {
        setState(() {
          _CoughingStatus = index;
        });
      }),
            _buildToggleButton("Yellow Fingers ", _YellowFingers , (index) {
        setState(() {
          _YellowFingers = index;
        });
      }),
            TextButton(
        onPressed: () {},
        child: Text(
          "Diagnose ",
          style: TextStyle(color: clr(5)),
        ),
        style: TextButton.styleFrom(
          backgroundColor: clr(3),
        ),
      ),

      ]
    ),
    ),
    ),),),
    );
  }
  Widget _buildToggleButton(String label, int selectedIndex, Function(int) onPressed) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(fontSize: 18),
        ),
        SizedBox(height: 10),
        ToggleButtons(
          children: ['Yes', 'No'].map((option) => Padding(
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

}
