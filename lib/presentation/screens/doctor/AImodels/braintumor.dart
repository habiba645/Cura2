// presentation/screens/doctor/AImodels/braintumor.dart
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'package:learn_bloc/presentation/components/theme.dart';

class BrainTumor extends StatefulWidget {
  const BrainTumor({super.key});

  @override
  _BrainTumorState createState() => _BrainTumorState();
}

class _BrainTumorState extends State<BrainTumor> {
  File? _image;
  String? _diagnosisResult;
  String? _tumorType;

  final picker = ImagePicker();

  Future<void> _pickImage() async {
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);

    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
        _diagnosisResult = null;  
        _tumorType = null;     
      }
    });
  }

  Future<void> _diagnose() async {
    ///// this is just an exaaaample Replace this with the model.
    await Future.delayed(Duration(seconds: 2));

    setState(() {
      _diagnosisResult = 'Diagnosis complete';
      _tumorType = 'Glioblastoma';  //////////////  Replace this with the real result from model.

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      appBar: AppBar(
        backgroundColor: clr(3),
        title: Text(
          'Brain Tumor Diagnosis',
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
                    Center(
                      child: Text(
                        _tumorType == null ? 'No tumor detected' : 'Tumor Type: $_tumorType',
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                    SizedBox(height: 20),
                    if (_image != null)
                      Center(
                        child: Image.file(
                          _image!,
                          height: 200,
                        ),
                      ),
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
