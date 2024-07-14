// presentation/screens/doctor/requests.dart
import 'package:flutter/material.dart';
import 'package:learn_bloc/presentation/components/customappbar.dart';
import 'package:learn_bloc/presentation/components/doc_navbar.dart';
import 'package:learn_bloc/presentation/components/theme.dart';

class Requests extends StatelessWidget {
  Requests({Key? key}) : super(key: key);

  final List<Map<String, String>> appointments = [
    {
      'patient': 'John Doe',
      'contact': '123-456-7890',
      'type': 'Check-up',
      'appointment': '10:00 AM',
      'waited': 'Yes',
      'day': 'Monday',
      'week': '1st',
      'month': 'July'
    },
    {
      'patient': 'Jane Smith',
      'contact': '098-765-4321',
      'type': 'Consultation',
      'appointment': '11:00 AM',
      'waited': 'No',
      'day': 'Tuesday',
      'week': '1st',
      'month': 'July'
    },
    
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Requests',
        profileName: "Dr. Mohammed Ali",
        profileImagePath: 'assets/doctor_profile_image.png',
        appointments: [
          {'patientName': 'lhsdflj', 'appointmentDate': '2024-07-15'},
          {'patientName': 'hgjk', 'appointmentDate': '2024-07-16'},
        ],
      ),
      backgroundColor: clr(4),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: DataTable(
            columns: const <DataColumn>[
              DataColumn(label: Text('Patient')),
              DataColumn(label: Text('Contact')),
              DataColumn(label: Text('Type')),
              DataColumn(label: Text('Appointment')),
              DataColumn(label: Text('Waited')),
              DataColumn(label: Text('Day')),
              DataColumn(label: Text('Week')),
              DataColumn(label: Text('Month')),
            ],
            rows: appointments.map((appointment) {
              return DataRow(
                cells: <DataCell>[
                  DataCell(Text(appointment['patient']!)),
                  DataCell(Text(appointment['contact']!)),
                  DataCell(Text(appointment['type']!)),
                  DataCell(Text(appointment['appointment']!)),
                  DataCell(Text(appointment['waited']!)),
                  DataCell(Text(appointment['day']!)),
                  DataCell(Text(appointment['week']!)),
                  DataCell(Text(appointment['month']!)),
                ],
              );
            }).toList(),
          ),
        ),
      ),
      bottomNavigationBar: DoctorBottomNavigationBar(currentIndex: 2),
    );
  }
}
