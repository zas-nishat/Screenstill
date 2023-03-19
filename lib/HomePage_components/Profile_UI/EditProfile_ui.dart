import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../ui_components/color_contants.dart';
class EditProfilePage extends StatefulWidget {
  // String profileUserName;
  // String profileEmail;
  // int Number;
  EditProfilePage({Key? key,
    // required this.profileUserName, required this.profileEmail, required this.Number
  }) : super(key: key);

  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 30.0, horizontal: 15),
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(
                  focusedErrorBorder: InputBorder.none,
                  disabledBorder: InputBorder.none,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5)
                  ),
                  hintText: "UserName"
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              TextFormField(
                decoration: InputDecoration(
                  hintText: "Phone Number"
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
