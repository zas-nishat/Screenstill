import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'EditProfile_ui.dart';

class ProfilePage extends StatefulWidget {
  final String ProfileUserName;
  final String ProfileUserEmail;
  final String ProfileuserNumber;

  ProfilePage({Key? key, required this.ProfileUserName, required this.ProfileUserEmail, required this.ProfileuserNumber,
      })
      : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 1,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        title: Text("Profile",style: TextStyle(
          color: Colors.black
        ),),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                    color: Colors.teal.shade100,
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),bottomRight: Radius.circular(10))
                ),
                height: height*0.25,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    //Profile Picture
                    Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height*0.15,
                            width: MediaQuery.of(context).size.width*0.3,
                            decoration: BoxDecoration(
                              color: Colors.grey.shade300,
                              borderRadius: BorderRadius.circular(20)
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                                child: Center(child: Image.asset("Assets/doctor1.png",
                                  fit: BoxFit.cover,width: double.infinity, height: double.infinity,))),
                          ),
                          TextButton(onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) =>EditProfilePage(
                              // profileUserName: 'fhj', profileEmail: 'dfg', Number: 12,
                            )));
                          },
                              style: ButtonStyle(
                                padding: MaterialStatePropertyAll(EdgeInsets.symmetric(horizontal: 18.sp)),
                                foregroundColor: MaterialStatePropertyAll(Colors.black),
                                backgroundColor: MaterialStatePropertyAll(Colors.white)
                              ),
                              child: Text("Edit your profile"))
                        ],
                      ),
                    ),
                    SizedBox(width: 10.w,),

                    //UserName
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("${widget.ProfileUserName}", style: TextStyle(
                            fontSize: 17.sp,
                          fontWeight: FontWeight.w500
                        ),),

                        //UserMail address
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(Icons.email,color: Colors.red, size: 18,),
                            SizedBox(width: 7.w,),
                            Text("${widget.ProfileUserEmail}", style: TextStyle(
                                fontSize: 15.sp,
                              color: Colors.black.withOpacity(.7)
                            ),),
                          ],
                        ),

                        //User Phone Number
                        Row(
                          children: [
                            Icon(Icons.phone,color: Colors.green , size: 18,),
                            SizedBox(width: 7.w,),
                            Text("${widget.ProfileuserNumber}", style: TextStyle(
                                fontSize: 16.sp,
                                color: Colors.black.withOpacity(.7)
                            ),),
                          ],
                        ),

                        //User Gender
                        Row(
                          children: [
                            Icon(Icons.person, color: Colors.black,size: 20,),
                            SizedBox(width: 7.w,),
                            Text("Male", style: TextStyle(
                                fontSize: 16.sp,
                                color: Colors.black.withOpacity(.7)
                            ),),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10.h,),
              Container(
                decoration: BoxDecoration(
                    color: Colors.teal.shade100,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10))
                ),
                height: height*0.8,
              )
            ],
          ),
        ),
      ),
    );
  }
}