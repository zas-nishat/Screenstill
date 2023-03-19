import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'SearchTabBar1_AlertBox_UI.dart';

class Search_ui_doctor_appointment extends StatefulWidget {
  const Search_ui_doctor_appointment({Key? key}) : super(key: key);

  @override
  State<Search_ui_doctor_appointment> createState() => _Search_ui_doctor_appointmentState();
}

class _Search_ui_doctor_appointmentState extends State<Search_ui_doctor_appointment> {

  void createAppointment(){
    showDialog(context: context, builder: (context) {
      return AlertBox();
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton.extended(
          backgroundColor: Colors.teal,
        onPressed: createAppointment,
          label: Text("Make an Appointment",style: TextStyle(
          fontSize: 12.sp,
          fontWeight: FontWeight.w500
        ),),
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Make_Appointment(),
              Make_Appointment(),
              Make_Appointment(),
              Make_Appointment(),
              Make_Appointment(),
              Make_Appointment(),
              Make_Appointment(),
              Make_Appointment(),
            ],
          ),
        ),
      ),
    );
  }
}


class AlertBox extends StatelessWidget {
  const AlertBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height =  MediaQuery.of(context).size.height;
    return AlertDialog(
      backgroundColor: Colors.teal.shade100,
      content: Container(
        height: height*0.4,
        child: Center(child: Text("create an appointment")),
      ),
    );
  }
}

