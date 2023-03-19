import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:screenstill/ui_components/color_contants.dart';

class ForgotPasswordConfirmationPage extends StatefulWidget {

  const ForgotPasswordConfirmationPage({Key? key}) : super(key: key);

  @override
  State<ForgotPasswordConfirmationPage> createState() => _ForgotPasswordConfirmationPageState();
}

class _ForgotPasswordConfirmationPageState extends State<ForgotPasswordConfirmationPage> {

  bool obscuretext = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppBarColor,
        title: Text("Confirm New Password"),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(left: 15.w, right: 15.w, top: 25.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Please enter the verify code that we sent to your email.",
                    style: TextFonts(textStyle: TextStyle(
                    fontSize: 15.sp,
                    color: Colors.black.withOpacity(.6)
                ),)),
                SizedBox(height: 14.h,),
                TextFormField(
                  style: TextFormPasswordFonts(),
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(10.h),
                    prefixIcon: Icon(Icons.code,color: Colors.black.withOpacity(.5),size: 20,),
                    labelText: "Verify code",
                    labelStyle: TextStyle(
                        color: Colors.black.withOpacity(0.5)
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 1,
                          color: Colors.black.withOpacity(.6),
                        ),
                        borderRadius: BorderRadius.circular(10.r)),
                    hintStyle:
                    TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w400),
                    border: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Colors.transparent,
                        ),
                        borderRadius: BorderRadius.circular(10.r)),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 1,
                          color: Colors.black.withOpacity(.3),
                        ),
                        borderRadius: BorderRadius.circular(10.r)),

                  ),
                ),
                SizedBox(height: 14.h,),
                Text("Reset your password:",
                    style: TextFonts(textStyle: TextStyle(
                        fontSize: 15.sp,
                        color: Colors.black.withOpacity(.6)
                    ),)),
                SizedBox(height: 14.h,),
                TextFormField(
                  style: TextFormPasswordFonts(),
                  obscureText: obscuretext,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(10.h),
                    prefixIcon: Icon(Icons.lock,color: Colors.black.withOpacity(.5),size: 20,),
                    labelText: "New password",
                    labelStyle: TextStyle(
                        color: Colors.black.withOpacity(0.5)
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 1,
                          color: Colors.black.withOpacity(.6),
                        ),
                        borderRadius: BorderRadius.circular(10.r)),
                    hintStyle:
                    TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w400),
                    border: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Colors.transparent,
                        ),
                        borderRadius: BorderRadius.circular(10.r)),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 1,
                          color: Colors.black.withOpacity(.3),
                        ),
                        borderRadius: BorderRadius.circular(10.r)),

                  ),
                ),
                SizedBox(height: 14.h,),
                TextFormField(
                  style: TextFormPasswordFonts(),
                  obscureText: obscuretext,
                  decoration: InputDecoration(
                    suffixIcon: GestureDetector(
                      onTap: (){
                        setState(() {
                          obscuretext=!obscuretext;
                        });
                      },
                      child: Icon(obscuretext? Icons.visibility: Icons.visibility_off_outlined, color: Colors.grey,),
                    ),
                    contentPadding: EdgeInsets.all(10.h),
                    prefixIcon: Icon(Icons.lock,color: Colors.black.withOpacity(.5),size: 20,),
                    labelText: "Confirm password",
                    labelStyle: TextStyle(
                        color: Colors.black.withOpacity(0.5)
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 1,
                          color: Colors.black.withOpacity(.6),
                        ),
                        borderRadius: BorderRadius.circular(10.r)),
                    hintStyle:
                    TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w400),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.transparent,
                        ),
                        borderRadius: BorderRadius.circular(10.r)),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 1,
                          color: Colors.black.withOpacity(.3),
                        ),
                        borderRadius: BorderRadius.circular(10.r)),
                    filled: false,
                  ),
                ),
                SizedBox(height: 20.h,),
                Center(
                  child: ElevatedButton(onPressed: (){},
                      style: ElevatedButton.styleFrom(primary: Colors.teal,),
                      child: Text("Save Password")),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
