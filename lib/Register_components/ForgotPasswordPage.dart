import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import '../ui_components/color_contants.dart';
import 'ForgotPassword_ConfirmPage.dart';
class ForgotPassPage extends StatelessWidget {


  
  const ForgotPassPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Forgot Password",style: AppBarFonts()),
        backgroundColor: AppBarColor,
      ),
      body: SafeArea(
          child: Padding(
            padding: EdgeInsets.only(left: 15.w, right: 15.w, top: 20.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20.h,),
                TextField(
                  style: TextFormEmailFonts(),
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(12.h),
                    prefixIcon: Icon(Icons.email,color: Colors.black.withOpacity(.5),size: 20,),
                      labelText: "Enter Email",
                      labelStyle: TextStyle(
                        color: Colors.black.withOpacity(0.5)
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            width: 2,
                            color: Colors.teal.withOpacity(.5),
                          ),
                          borderRadius: BorderRadius.circular(10.r)),
                      hintStyle: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w400),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.transparent,
                          ),
                          borderRadius: BorderRadius.circular(10.r)),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            width: 2,
                            color: Colors.black.withOpacity(.2),
                          ),
                          borderRadius: BorderRadius.circular(10.r)),
                      filled: false,
                  ),
                ),
                SizedBox(height: 20.h,),
                SizedBox(
                  width: MediaQuery.of(context).size.width*0.9,
                  child: Text("Please enter the email you've used to sign up."
                      " An email will be sent to this address.",textAlign: TextAlign.center, style: TextFonts(textStyle: TextStyle(
                      fontSize: 15.sp,
                      color: Colors.black.withOpacity(.6)
                  ),)),
                ),
                SizedBox(height: 20.h,),
                Center(
                  child: ElevatedButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => ForgotPasswordConfirmationPage()));
                  },
                      style: ElevatedButton.styleFrom(primary: Colors.teal,),
                      child: Text("Reset Password")),
                ),
              ],
            ),
          ),
      )
    );
  }
}
