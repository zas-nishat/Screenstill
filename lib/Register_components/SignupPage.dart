import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:screenstill/ui_components/color_contants.dart';
import '../HomePage_components/Profile_UI/ProfilePage.dart';
import 'LoginPage.dart';
class Signup_Page extends StatefulWidget {
  const Signup_Page({Key? key}) : super(key: key);

  @override
  State<Signup_Page> createState() => _Signup_PageState();
}

class _Signup_PageState extends State<Signup_Page> {

  TextEditingController userName = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController phoneNumber = TextEditingController();
  bool _obscuretext = true;
  var SignupUserName ='';
  var SignupUserEmail='';
  var SignupUserNumber='';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 50.h),
                  //welcome Text
                  Row(
                    children: [
                      Text("Welcome to ", style: TextStyle(
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w500,
                          color: Colors.black
                      ),),
                      Text("Medicare", style: TextStyle(
                          fontSize: 22.sp,
                          fontFamily: "Serif",
                          fontWeight: FontWeight.w600,
                          color: LogoColor
                      ),)
                    ],
                  ),
                  SizedBox(height: 5.h,),

                  //signup page line
                  Row(
                    children: [
                      Text("Already have an account?",style: TextStyle(
                        color: Colors.black.withOpacity(.7),
                        fontSize: 15.sp,
                      ),),
                      SizedBox(width: 5.w,),
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Login_Page()));
                        },
                        child: Text("Login",style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w800,
                          fontSize: 16.sp,
                        ),),
                      )
                    ],
                  ),
                  SizedBox(height: 40.h,),

                  // User name
                  TextFormField(
                    style: TextFormPasswordFonts(
                      fontSize: 15.sp
                    ),
                    controller: userName,
                onChanged: (val){
                      SignupUserName = val;
                },
                decoration: InputDecoration(
                    hintText: "Username",
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.transparent,
                        ),
                        borderRadius: BorderRadius.circular(10.r)
                    ),
                    helperStyle: TextStyle(
                    ),
                    hintStyle: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400
                    ),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.transparent,
                        ),
                        borderRadius: BorderRadius.circular(10.r)
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.transparent,
                        ),
                        borderRadius: BorderRadius.circular(10.r)
                    ),
                    filled: true,
                    fillColor: Colors.grey.withOpacity(.2)
                ),
              ),
                  SizedBox(height: 14.h,),

                  //Email
                  TextFormField(
                    style: TextFormPasswordFonts(
                      fontSize: 15.sp
                    ),
                    onChanged: (val){
                      SignupUserEmail = val;
                    },
                    keyboardType: TextInputType.emailAddress,
                    controller: email,
                    decoration: InputDecoration(
                      hintText: "Your Email",
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.transparent,
                            ),
                            borderRadius: BorderRadius.circular(10.r)
                        ),
                        helperStyle: TextStyle(
                        ),
                        hintStyle: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400
                        ),
                        border: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.transparent,
                            ),
                            borderRadius: BorderRadius.circular(10.r)
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.transparent,
                            ),
                            borderRadius: BorderRadius.circular(10.r)
                        ),
                        filled: true,
                        fillColor: Colors.grey.withOpacity(.2)
                    ),
                  ),
                  SizedBox(height: 14.h,),

                  //mobile
                  TextFormField(
                    keyboardType: TextInputType.phone,
                    style: TextFormPasswordFonts(
                      fontSize: 15.sp
                    ),
                    onChanged: (val){
                      SignupUserNumber = val;
                    },
                    controller: phoneNumber,
                    decoration: InputDecoration(
                        hintText: "Phone",
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.transparent,
                            ),
                            borderRadius: BorderRadius.circular(10.r)
                        ),
                        helperStyle: TextStyle(
                        ),
                        hintStyle: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400
                        ),
                        border: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.transparent,
                            ),
                            borderRadius: BorderRadius.circular(10.r)
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.transparent,
                            ),
                            borderRadius: BorderRadius.circular(10.r)
                        ),
                        filled: true,
                        fillColor: Colors.grey.withOpacity(.2)
                    ),
                  ),
                  SizedBox(height: 14.h,),

                  //password
                  TextFormField(
                    style: TextFormPasswordFonts(
                        fontSize: 15.sp
                    ),
                    obscureText: _obscuretext,
                    decoration: InputDecoration(
                      hintText: "Password",
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.transparent,
                            ),
                            borderRadius: BorderRadius.circular(10.r)
                        ),
                        helperStyle: TextStyle(
                        ),
                        hintStyle: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w400
                        ),
                        border: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.transparent,
                            ),
                            borderRadius: BorderRadius.circular(10.r)
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.transparent,
                            ),
                            borderRadius: BorderRadius.circular(10.r)
                        ),
                        filled: true,
                        fillColor: Colors.grey.withOpacity(.2)
                    ),
                  ),
                  SizedBox(height: 14.h,),

                  //Confirm Password
                  TextFormField(
                    style: TextFormPasswordFonts(
                        fontSize: 15.sp
                    ),
                    obscureText: _obscuretext,
                    decoration: InputDecoration(
                        suffixIcon: GestureDetector(
                          onTap: (){
                            setState(() {
                              _obscuretext=!_obscuretext;
                            });
                          },
                          child: Icon(_obscuretext?Icons.visibility: Icons.visibility_off_outlined, color: Colors.grey,),
                        ),
                      hintText: "Confirm password",
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.transparent,
                            ),
                            borderRadius: BorderRadius.circular(10.r)
                        ),
                        helperStyle: TextStyle(
                        ),
                        hintStyle: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w400
                        ),
                        border: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.transparent,
                            ),
                            borderRadius: BorderRadius.circular(10.r)
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.transparent,
                            ),
                            borderRadius: BorderRadius.circular(10.r)
                        ),
                        filled: true,
                        fillColor: Colors.grey.withOpacity(.2)
                    ),
                  ),
                  SizedBox(height: 14.h,),

                  //create account button
                  SizedBox(
                    width: double.infinity,
                    child: TextButton(
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => ProfilePage(
                          ProfileUserName: SignupUserName,
                          ProfileUserEmail: SignupUserEmail,
                          ProfileuserNumber: SignupUserNumber,)));
                      },
                      child: Text("Create Account",style: TextStyle(
                          fontSize: 15.sp
                      ),),
                      style: ButtonStyle(
                          shape: MaterialStatePropertyAll<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.r)
                              )
                          ),
                          backgroundColor: MaterialStateProperty.all(Colors.teal.shade500),
                          foregroundColor: MaterialStateProperty.all(Colors.white),
                          padding: MaterialStateProperty.all(EdgeInsets.symmetric(vertical: 14.h))
                      ),
                    ),
                  ),
                  SizedBox(height: 16.h,),

                  //else
                  Row(
                    children: [
                      Expanded(child: Divider()),
                      SizedBox(width: 30.w,),
                      Text("or sign up with",style: TextStyle(
                          fontSize: 15.sp,
                          color: Colors.black.withOpacity(.7)
                      ),),
                      SizedBox(width: 30.w,),
                      Expanded(child: Divider()),
                    ],
                  ),
                  SizedBox(height: 16.h,),
                  SizedBox(
                    width: double.infinity,
                    child: TextButton(
                      onPressed: (){},
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Image(image: AssetImage("Assets/google_logo.png"),height: 15.h,),
                          SizedBox(width: 5.w,),
                          Text("Google",style: TextStyle(
                              fontSize: 12.sp,
                              color: Colors.black
                          ),),
                        ],
                      ),
                      style: ButtonStyle(
                          shape: MaterialStatePropertyAll<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.r)
                              )
                          ),
                          side: MaterialStatePropertyAll(BorderSide(color: Colors.grey)),
                          foregroundColor: MaterialStateProperty.all(Colors.white),
                          padding: MaterialStateProperty.all(EdgeInsets.symmetric(vertical: 14.h))
                      ),
                    ),
                  ),
                  SizedBox(height: 16.h,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("By singning up to Medicare, you agree to our", style: TextFonts(textStyle: TextStyle(
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w500,
                          color: Colors.black.withOpacity(.7),
                          letterSpacing: .5
                      ),)),
                      Text("Terms and conditions",style: TextFonts(textStyle: TextStyle(
                        color: Colors.indigo.shade500,
                        fontWeight: FontWeight.w600,
                        fontSize: 15.sp,
                      ),)),
                    ],
                  ),
                  SizedBox(height: 30.h,)
                ],
              ),
            ),),
        )
    );
  }
}
