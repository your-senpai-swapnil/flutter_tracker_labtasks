import 'package:flutter/material.dart';

void main() => runApp(DateTimePickerApp());

class DateTimePickerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Date & Time Picker',
      theme: ThemeData(primarySwatch: Colors.indigo),
      home: DateTimePickerPage(),
    );
  }
}

class DateTimePickerPage extends StatefulWidget {
  @override
  _DateTimePickerPageState createState() => _DateTimePickerPageState();
}

class _DateTimePickerPageState extends State<DateTimePickerPage> {
  DateTime? selectedDate;
  TimeOfDay? selectedTime;

  Future<void> pickDate() async {
    final now = DateTime.now();
    final picked = await showDatePicker(
      context: context,
      initialDate: now,
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );
    if (picked != null) {
      setState(() => selectedDate = picked);
    }
  }

  Future<void> pickTime() async {
    final picked = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );
    if (picked != null) {
      setState(() => selectedTime = picked);
    }
  }

  String get formattedDate {
    if (selectedDate == null) return 'No date selected';
    return '${selectedDate!.year}-${selectedDate!.month.toString().padLeft(2, '0')}-${selectedDate!.day.toString().padLeft(2, '0')}';
  }

  String get formattedTime {
    if (selectedTime == null) return 'No time selected';
    final hour = selectedTime!.hour.toString().padLeft(2, '0');
    final minute = selectedTime!.minute.toString().padLeft(2, '0');
    return '$hour:$minute';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Pick Date & Time')),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: pickDate,
              child: Text('Pick A Date Mate'),
            ),
            SizedBox(height: 12),
            ElevatedButton(
              onPressed: pickTime,
              child: Text('Pick A Time Mate'),
            ),
            SizedBox(height: 24),
            Text('User Selected Date: $formattedDate'),
            Text('User Selected Time: $formattedTime'),
          ],
        ),
      ),
    );
  }
}
