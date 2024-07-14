// presentation/screens/doctor/AImodels/ai_models.dart
import 'package:flutter/material.dart';
import 'package:learn_bloc/presentation/components/doc_navbar.dart';
import 'package:learn_bloc/presentation/components/theme.dart';
import 'package:learn_bloc/presentation/screens/doctor/AImodels/Alzahimer.dart';
import 'package:learn_bloc/presentation/screens/doctor/AImodels/braintumor.dart';
import 'package:learn_bloc/presentation/screens/doctor/AImodels/heart.dart';
import 'package:learn_bloc/presentation/screens/doctor/AImodels/lung.dart';

class AIModels extends StatelessWidget {
  AIModels({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: clr(4),
      appBar: AppBar(
        title: Center(
          child: Text(
            'AI Models',
            style: TextStyle(color: clr(5)),
          ),
        ),
        backgroundColor: clr(3),
        actions: [
          IconButton(
            icon: Icon(Icons.person),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            ModelCard(
              modelName: 'Brain Tumor',
              description: 'Brain tumor detection and type',
              theroute: MaterialPageRoute(builder: (context) => BrainTumor()),
            ),
            SizedBox(height: 20),
            ModelCard(
              modelName: 'Heart Disease',
              description: 'Heart disease diagnosis',
              theroute: MaterialPageRoute(builder: (context) => Heart()),
            ),
            SizedBox(height: 20),
            ModelCard(
              modelName: 'Lung Disease',
              description: 'Lung disease diagnosis',
              theroute: MaterialPageRoute(builder: (context) => lung()),
            ),
            SizedBox(height: 20),
            ModelCard(
              modelName: 'alzahimer',
              description: 'alzahimer disease diagnosis',
              theroute: MaterialPageRoute(builder: (context) =>  Alzheimer()),
            ),
            
          ],
        ),
      ),
      bottomNavigationBar: DoctorBottomNavigationBar(currentIndex: 0),
    );
  }
}

class ModelCard extends StatelessWidget {
  final String modelName;
  final String description;
  final MaterialPageRoute theroute;

  ModelCard({
    required this.modelName,
    required this.description,
    required this.theroute,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: clr(5),
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              modelName,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              description,
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, theroute);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: clr(3),
              ),
              child: Text('Diagnose'),
            ),
          ],
        ),
      ),
    );
  }
}



