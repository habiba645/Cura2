// presentation/screens/doctor/AImodels/heart.dart
import 'package:flutter/material.dart';
import 'package:learn_bloc/presentation/components/theme.dart';
class Heart extends StatefulWidget {
  const Heart({super.key});

  @override
  State<Heart> createState() => _HeartState();
}
class _HeartState extends State<Heart> {
  int _selectedGender = -1;
  int _selectedFBS = -1;
  int _selectedExang = -1;
  double _currentSliderValue1 = 0;
  double _currentSliderValue2 = 80;
  double _currentSliderValue3 = 100;
  double _currentSliderValue4 = 0;
  double _currentSliderValue5 = 100;
  double _currentSliderValue6 = 0;
  double _currentSliderValue7 = 0;
  double _currentSliderValue8 = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      appBar: AppBar(
        backgroundColor: clr(3),
        title:  Text("Heart Disease",
          style: TextStyle(
              color:clr(5),
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
                    color:clr(3),
                    fontSize: 25,
                    fontWeight: FontWeight.bold
                  ),),
                  _buildTextFiled(),
                  _buildToggleButton("Gender", ["Male", "Female"], _selectedGender, (index) {
                    setState(() {
                      _selectedGender = index;
                    });
                  }),
                  _buildToggleButton("FBS > 120?", ["Yes", "No"], _selectedFBS, (index) {
                    setState(() {
                      _selectedFBS = index;
                    });
                  }),
                  _buildToggleButton("Exang", ["Yes", "No"], _selectedExang, (index) {
                    setState(() {
                      _selectedExang = index;
                    });
                  }),
                  Text("Medical Information",
                    style: TextStyle(
                        color: clr(3),
                        fontSize: 25,
                        fontWeight: FontWeight.bold
                    ),),
                  _buildSlider(3 ,0, 3, "Chest Pain Type",_currentSliderValue1,(value) {
                    setState(() {
                      _currentSliderValue1 = value;
                    });}),
                  _buildSlider(220 ,80, 140, "Resting Blood Pressure",_currentSliderValue2,(value) {
                    setState(() {
                      _currentSliderValue2 = value;
                    });}),
                  _buildSlider(280 ,100, 180, "Cholesterol",_currentSliderValue3,(value) {
                    setState(() {
                      _currentSliderValue3 = value;
                    });}),
                  _buildSlider(2 , 0,2, "R Cardiograph",_currentSliderValue4,(value) {
                    setState(() {
                      _currentSliderValue4 = value;
                    });}),
                  _buildSlider(220 ,100, 120, "Maximum Heart Rate ",_currentSliderValue5,(value) {
                    setState(() {
                      _currentSliderValue5 = value;
                    });}),
                  _buildSlider(2 ,0, 2, "Slope Type ",_currentSliderValue6,(value) {
                    setState(() {
                      _currentSliderValue6 = value;
                    });}),
                  _buildSlider(3 ,0, 3, "Vessels Colors",_currentSliderValue7,(value) {
                    setState(() {
                      _currentSliderValue7 = value;
                    });}),
                  _buildSlider(3 ,0, 3, "Thalum",_currentSliderValue8,(value) {
                    setState(() {
                      _currentSliderValue8 = value;
                    });}),
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
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
  Widget _buildToggleButton(String label, List<String> options, int selectedIndex, Function(int) onPressed) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(fontSize: 18),
        ),
        SizedBox(height: 10),
        ToggleButtons(
          children: options.map((option) => Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(option),
          )).toList(),
          isSelected: List.generate(options.length, (index) => index == selectedIndex),
          onPressed: onPressed,
          fillColor:clr(3),
          selectedColor: clr(5),
          borderColor: clr(3),
          borderRadius: BorderRadius.circular(30.0),
        ),
      ],
    );
  }
  Widget _buildSlider(
      double Max, double Min,int divisions, label,
      double currentValue, void Function(double) onChanged){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label,style: TextStyle(
          fontSize: 20,
        ),),
        Slider(value:currentValue ,
          min: Min,
          max: Max,
          divisions: divisions,
          activeColor: clr(3),
          onChanged: onChanged,
          label:currentValue.round().toString() ,

        ),
      ],
    );
  }
  Widget _buildTextFiled(){
    return TextField(
      decoration: InputDecoration(
        hintText: "Enter your age",
        filled: true,
        fillColor: clr(3),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30.0),
          borderSide: BorderSide.none,
        ),
      ),);
  }
}
