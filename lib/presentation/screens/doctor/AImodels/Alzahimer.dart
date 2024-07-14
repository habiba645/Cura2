// presentation/screens/doctor/AImodels/Alzahimer.dart
import 'package:flutter/material.dart';import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'package:learn_bloc/presentation/components/theme.dart';

class Alzheimer extends StatefulWidget {
  const Alzheimer({super.key});

  @override
  _AlzheimerState createState() => _AlzheimerState();
}

class _AlzheimerState extends State<Alzheimer> {
  File? _image;
  String? _diagnosisResult;

  final picker = ImagePicker();

  Future<void> _pickImage() async {
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);

    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
        _diagnosisResult = null;  // Reset diagnosis result when a new image is picked
      }
    });
  }

  Future<void> _diagnose() async {
    // Simulate diagnosis process. Replace this with your model processing code.
    await Future.delayed(Duration(seconds: 2));

    setState(() {
      _diagnosisResult = 'Diagnosis complete';
      _diagnosisResult = 'Alzheimer detected';  // Example result, replace with actual model output
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      appBar: AppBar(
        backgroundColor: clr(3),
        title: Text(
          'Alzheimer Diagnosis',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(40),
          ),
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Upload Image",
                    style: TextStyle(
                      color: Colors.teal,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 20),
                  Center(
                    child: _image == null
                        ? Text('No image selected.')
                        : Image.file(
                            _image!,
                            height: 200,
                          ),
                  ),
                  SizedBox(height: 20),
                  Center(
                    child: ElevatedButton(
                      onPressed: _pickImage,
                      style: ElevatedButton.styleFrom(
                        foregroundColor: clr(5),
                        backgroundColor: clr(3),
                        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                      ),
                      child: Text(
                        'Upload Image',
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Center(
                    child: ElevatedButton(
                      onPressed: _image == null ? null : _diagnose,
                      style: ElevatedButton.styleFrom(
                        foregroundColor: clr(5),
                        backgroundColor: clr(3),
                        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                      ),
                      child: Text(
                        'Start Diagnosing',
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  if (_diagnosisResult != null) ...[
                    Center(
                      child: Text(
                        _diagnosisResult!,
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(height: 10),
                  ],
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
