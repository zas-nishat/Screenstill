import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:screenstill/ui_components/color_contants.dart';
import '../HomePage_components/BottomNavBar.dart';
import 'ForgotPasswordPage.dart';
import 'SignupPage.dart';

class Login_Page extends StatefulWidget {
  const Login_Page({Key? key}) : super(key: key);

  @override
  State<Login_Page> createState() => _Login_PageState();
}

class _Login_PageState extends State<Login_Page> {
  bool _obscuretext = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.w),
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    "Welcome to ",
                    style: TextStyle(
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w500,
                        color: Colors.black),
                  ),
                  Text(
                    "Medicare",
                    style: TextStyle(
                        fontSize: 22.sp,
                        fontFamily: "Serif",
                        fontWeight: FontWeight.w600,
                        color: LogoColor),
                  )
                ],
              ),
              SizedBox(height: 5.h,),
              Row(
                children: [
                  Text(
                    "Don't have any account?",
                    style: TextStyle(
                      color: Colors.black.withOpacity(.7),
                      fontSize: 15.sp,
                    ),
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Signup_Page()));
                    },
                    child: Text(
                      "Sign up",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w800,
                        fontSize: 16.sp,
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 40.h,
              ),
              TextFormField(
                style: TextFormPasswordFonts(
                  fontSize: 16.sp
                ),
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    hintText: "Email",
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.transparent,
                        ),
                        borderRadius: BorderRadius.circular(10.r)),
                    helperStyle: TextStyle(),
                    hintStyle:
                        TextStyle(fontSize: 15.sp, fontWeight: FontWeight.w400),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.transparent,
                        ),
                        borderRadius: BorderRadius.circular(10.r)),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.transparent,
                        ),
                        borderRadius: BorderRadius.circular(10.r)),
                    filled: true,
                    fillColor: Colors.grey.withOpacity(.2)),
              ),
              SizedBox(height: 14.h,),
              TextFormField(
                style: TextFormPasswordFonts(
                    fontSize: 16.sp
                ),
                obscureText: _obscuretext,
                keyboardType: TextInputType.visiblePassword,
                decoration: InputDecoration(
                  prefixIconColor: Colors.grey,
                  suffixIcon: GestureDetector(
                    onTap: (){
                      setState(() {
                        _obscuretext=!_obscuretext;
                      });
                    },
                    child: Icon(_obscuretext? Icons.visibility: Icons.visibility_off_outlined, color: Colors.grey,),
                  ),
                    hintText: "Your Password",
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.transparent,
                        ),
                        borderRadius: BorderRadius.circular(10.r)),
                    helperStyle: TextStyle(),
                    hintStyle:
                        TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w400),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.transparent,
                        ),
                        borderRadius: BorderRadius.circular(10.r)),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.transparent,
                        ),
                        borderRadius: BorderRadius.circular(10.r)),
                    filled: true,
                    fillColor: Colors.grey.withOpacity(.2)),
              ),
              SizedBox(height: 14.h,),
              SizedBox(
                width: double.infinity,
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => BottomNavBar()));
                  },
                  child: Text(
                    "Login",
                    style: TextStyle(fontSize: 15.sp),
                  ),
                  style: ButtonStyle(
                      shape: MaterialStatePropertyAll(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.r))),
                      backgroundColor:
                          MaterialStateProperty.all(Colors.teal.shade500),
                      foregroundColor: MaterialStateProperty.all(Colors.white),
                      padding: MaterialStateProperty.all(
                  EdgeInsets.symmetric(vertical: 14.h))
                  ),
                ),
              ),
              SizedBox(height: 20.h,),
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => ForgotPassPage()));
                },
                child: Text("Forgot Password?",style: TextStyle(
                  fontSize: 15.sp,
                )),
              )
            ],
          ),
        ),
      ),
    ));
  }
}
