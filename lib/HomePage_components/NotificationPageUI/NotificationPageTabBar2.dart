import 'package:flutter/material.dart';
class Notification_ui_medication extends StatefulWidget {
  const Notification_ui_medication({Key? key}) : super(key: key);

  @override
  State<Notification_ui_medication> createState() => _Notification_ui_medicationState();
}

class _Notification_ui_medicationState extends State<Notification_ui_medication> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Medication will be shown here"),
      ),
    );
  }
}
