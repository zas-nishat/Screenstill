import 'package:flutter/material.dart';
class Notification_ui_notification extends StatefulWidget {
  const Notification_ui_notification({Key? key}) : super(key: key);

  @override
  State<Notification_ui_notification> createState() => _Notification_ui_notificationState();
}

class _Notification_ui_notificationState extends State<Notification_ui_notification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Notification will be shown here"),
      ),
    );
  }
}
