import 'package:flutter/material.dart';
class Make_Appointment extends StatefulWidget {
  const Make_Appointment({Key? key}) : super(key: key);

  @override
  State<Make_Appointment> createState() => _Make_AppointmentState();
}

class _Make_AppointmentState extends State<Make_Appointment> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: height*0.2,
        color: Colors.grey,
      ),
    );
  }
}
