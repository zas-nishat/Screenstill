import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Components/AboutDoctor/Dr.sajida.dart';
import '../../ui_components/Search_ui_components/SearchPageSearchLegate.dart';


class Search_ui_doctor_search extends StatefulWidget {
  const Search_ui_doctor_search({Key? key}) : super(key: key);

  @override
  State<Search_ui_doctor_search> createState() => _Search_ui_doctor_searchState();
}
List<String> _suggestions = [
  'Dr.Sajida',
  "Dr.Lubaba",
  "Dr.Evan",
  "Dr.Habu",
  "Dr.Liana",
  "Dr.Yeasmin",
];

class _Search_ui_doctor_searchState extends State<Search_ui_doctor_search> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    final gap = SizedBox(
      height: 8.h,
    );
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Doctors",
                      style:
                      TextStyle(fontSize: 28, fontWeight: FontWeight.w500),
                    ),
                    IconButton(
                        onPressed: () {
                          showSearch(
                              context: context, delegate: DoctorSearchList());
                        },
                        icon: Icon(
                          Icons.search,
                          color: Colors.teal,
                          size: 32,
                        ))
                  ],
                ),
                gap,
                Text(
                  "Find the service you are",
                  style: TextStyle(
                      color: Colors.black.withOpacity(.7), fontSize: 14.sp),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Container(
                  width: double.infinity,
                  height: height * .16.h,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.withOpacity(.7),
                            offset: Offset(0, 0),
                            blurRadius: 1,
                            spreadRadius: 1)
                      ],
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              height: height * .08,
                              width: width * .2,
                              child: Image.asset(
                                "Assets/doctor1.png",
                                height: height * .05.h,
                              ),
                            ),
                            SizedBox(
                              width: 15.w,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Dr. Sajida Labiba",
                                        style: GoogleFonts.lobsterTwo(
                                          textStyle: TextStyle(
                                            fontSize: 16.sp,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        )),
                                    SizedBox(
                                      height: 5.h,
                                    ),
                                    Row(
                                      children: [
                                        Text("Type:",
                                            style: GoogleFonts.abhayaLibre(
                                              textStyle: TextStyle(
                                                  color: Colors.black
                                                      .withOpacity(.7),
                                                  fontSize: 12.sp),
                                            )),
                                        SizedBox(
                                          width: 5.w,
                                        ),
                                        Text("Psychologist",
                                            style: GoogleFonts.abhayaLibre(
                                              textStyle: TextStyle(
                                                  color: Colors.black
                                                      .withOpacity(.8),
                                                  fontSize: 12.sp),
                                            )),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 4.h,
                                    ),
                                    Text("M.B.A from Dhaka Medical",
                                        style: GoogleFonts.abhayaLibre(
                                          textStyle: TextStyle(
                                              color:
                                              Colors.black.withOpacity(.8),
                                              fontSize: 12.sp),
                                        )),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Center(child: Text("৳700")),
                              width: width * .1.w,
                              height: height * .02.h,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.blue.shade200),
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => DrSajida()));
                              },
                              child: Text(
                                "About Doctor",
                                style: TextStyle(
                                    fontSize: 12.sp,
                                    decoration: TextDecoration.underline,
                                    color: Colors.green),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                gap,
                Container(
                  width: double.infinity,
                  height: height * .15.h,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.withOpacity(.7),
                            offset: Offset(0, 0),
                            blurRadius: 1,
                            spreadRadius: 1)
                      ],
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              height: height * .08,
                              width: width * .2,
                              child: Image.asset(
                                "Assets/doctor2.png",
                                height: height * .05.h,
                              ),
                            ),
                            SizedBox(
                              width: 15.w,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Dr. Liana Yeasmin",
                                        style: GoogleFonts.lobsterTwo(
                                          textStyle: TextStyle(
                                            fontSize: 16.sp,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        )),
                                    SizedBox(
                                      height: 5.h,
                                    ),
                                    Row(
                                      children: [
                                        Text("Type:",
                                            style: GoogleFonts.abhayaLibre(
                                              textStyle: TextStyle(
                                                  color: Colors.black
                                                      .withOpacity(.7),
                                                  fontSize: 12.sp),
                                            )),
                                        SizedBox(
                                          width: 5.w,
                                        ),
                                        Text("Psychologist",
                                            style: GoogleFonts.abhayaLibre(
                                              textStyle: TextStyle(
                                                  color: Colors.black
                                                      .withOpacity(.8),
                                                  fontSize: 12.sp),
                                            )),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 4.h,
                                    ),
                                    Text("M.B.A from Dhaka Medical",
                                        style: GoogleFonts.abhayaLibre(
                                          textStyle: TextStyle(
                                              color:
                                              Colors.black.withOpacity(.8),
                                              fontSize: 12.sp),
                                        )),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Center(child: Text("৳650")),
                              width: width * .1.w,
                              height: height * .02.h,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.blue.shade200),
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => DrSajida()));
                              },
                              child: Text(
                                "About Doctor",
                                style: TextStyle(
                                    fontSize: 12.sp,
                                    decoration: TextDecoration.underline,
                                    color: Colors.green),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                gap,
                Container(
                  width: double.infinity,
                  height: height * .15.h,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.withOpacity(.7),
                            offset: Offset(0, 0),
                            blurRadius: 1,
                            spreadRadius: 1)
                      ],
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              height: height * .08,
                              width: width * .2,
                              child: Image.asset(
                                "Assets/doctor3.png",
                                height: height * .05.h,
                              ),
                            ),
                            SizedBox(
                              width: 15.w,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Dr. Evan er vai Habu",
                                        style: GoogleFonts.lobsterTwo(
                                          textStyle: TextStyle(
                                            fontSize: 16.sp,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        )),
                                    SizedBox(
                                      height: 5.h,
                                    ),
                                    Row(
                                      children: [
                                        Text("Type:",
                                            style: GoogleFonts.abhayaLibre(
                                              textStyle: TextStyle(
                                                  color: Colors.black
                                                      .withOpacity(.7),
                                                  fontSize: 12.sp),
                                            )),
                                        SizedBox(
                                          width: 5.w,
                                        ),
                                        Text("Skin disease",
                                            style: GoogleFonts.abhayaLibre(
                                              textStyle: TextStyle(
                                                  color: Colors.black
                                                      .withOpacity(.8),
                                                  fontSize: 12.sp),
                                            )),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 4.h,
                                    ),
                                    Text("M.B.A from Dhaka Medical",
                                        style: GoogleFonts.abhayaLibre(
                                          textStyle: TextStyle(
                                              color:
                                              Colors.black.withOpacity(.8),
                                              fontSize: 12.sp),
                                        )),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Center(child: Text("৳800")),
                              width: width * .1.w,
                              height: height * .02.h,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.blue.shade200),
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => DrSajida()));
                              },
                              child: Text(
                                "About Doctor",
                                style: TextStyle(
                                    fontSize: 12.sp,
                                    decoration: TextDecoration.underline,
                                    color: Colors.green),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                gap,
                Container(
                  width: double.infinity,
                  height: height * .16.h,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.withOpacity(.7),
                            offset: Offset(0, 0),
                            blurRadius: 1,
                            spreadRadius: 1)
                      ],
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              height: height * .08,
                              width: width * .2,
                              child: Image.asset(
                                "Assets/doctor1.png",
                                height: height * .05.h,
                              ),
                            ),
                            SizedBox(
                              width: 15.w,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Dr. Sajida Labiba",
                                        style: GoogleFonts.lobsterTwo(
                                          textStyle: TextStyle(
                                            fontSize: 16.sp,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        )),
                                    SizedBox(
                                      height: 5.h,
                                    ),
                                    Row(
                                      children: [
                                        Text("Type:",
                                            style: GoogleFonts.abhayaLibre(
                                              textStyle: TextStyle(
                                                  color: Colors.black
                                                      .withOpacity(.7),
                                                  fontSize: 12.sp),
                                            )),
                                        SizedBox(
                                          width: 5.w,
                                        ),
                                        Text("Psychologist",
                                            style: GoogleFonts.abhayaLibre(
                                              textStyle: TextStyle(
                                                  color: Colors.black
                                                      .withOpacity(.8),
                                                  fontSize: 12.sp),
                                            )),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 4.h,
                                    ),
                                    Text("M.B.A from Dhaka Medical",
                                        style: GoogleFonts.abhayaLibre(
                                          textStyle: TextStyle(
                                              color:
                                              Colors.black.withOpacity(.8),
                                              fontSize: 12.sp),
                                        )),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Center(child: Text("৳700")),
                              width: width * .1.w,
                              height: height * .02.h,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.blue.shade200),
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => DrSajida()));
                              },
                              child: Text(
                                "About Doctor",
                                style: TextStyle(
                                    fontSize: 12.sp,
                                    decoration: TextDecoration.underline,
                                    color: Colors.green),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                gap,
                Container(
                  width: double.infinity,
                  height: height * .15.h,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.withOpacity(.7),
                            offset: Offset(0, 0),
                            blurRadius: 1,
                            spreadRadius: 1)
                      ],
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              height: height * .08,
                              width: width * .2,
                              child: Image.asset(
                                "Assets/doctor2.png",
                                height: height * .05.h,
                              ),
                            ),
                            SizedBox(
                              width: 15.w,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Dr. Liana Yeasmin",
                                        style: GoogleFonts.lobsterTwo(
                                          textStyle: TextStyle(
                                            fontSize: 16.sp,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        )),
                                    SizedBox(
                                      height: 5.h,
                                    ),
                                    Row(
                                      children: [
                                        Text("Type:",
                                            style: GoogleFonts.abhayaLibre(
                                              textStyle: TextStyle(
                                                  color: Colors.black
                                                      .withOpacity(.7),
                                                  fontSize: 12.sp),
                                            )),
                                        SizedBox(
                                          width: 5.w,
                                        ),
                                        Text("Psychologist",
                                            style: GoogleFonts.abhayaLibre(
                                              textStyle: TextStyle(
                                                  color: Colors.black
                                                      .withOpacity(.8),
                                                  fontSize: 12.sp),
                                            )),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 4.h,
                                    ),
                                    Text("M.B.A from Dhaka Medical",
                                        style: GoogleFonts.abhayaLibre(
                                          textStyle: TextStyle(
                                              color:
                                              Colors.black.withOpacity(.8),
                                              fontSize: 12.sp),
                                        )),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Center(child: Text("৳650")),
                              width: width * .1.w,
                              height: height * .02.h,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.blue.shade200),
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => DrSajida()));
                              },
                              child: Text(
                                "About Doctor",
                                style: TextStyle(
                                    fontSize: 12.sp,
                                    decoration: TextDecoration.underline,
                                    color: Colors.green),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                gap,
                Container(
                  width: double.infinity,
                  height: height * .15.h,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.withOpacity(.7),
                            offset: Offset(0, 0),
                            blurRadius: 1,
                            spreadRadius: 1)
                      ],
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              height: height * .08,
                              width: width * .2,
                              child: Image.asset(
                                "Assets/doctor3.png",
                                height: height * .05.h,
                              ),
                            ),
                            SizedBox(
                              width: 15.w,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Dr. Evan er vai Habu",
                                        style: GoogleFonts.lobsterTwo(
                                          textStyle: TextStyle(
                                            fontSize: 16.sp,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        )),
                                    SizedBox(
                                      height: 5.h,
                                    ),
                                    Row(
                                      children: [
                                        Text("Type:",
                                            style: GoogleFonts.abhayaLibre(
                                              textStyle: TextStyle(
                                                  color: Colors.black
                                                      .withOpacity(.7),
                                                  fontSize: 12.sp),
                                            )),
                                        SizedBox(
                                          width: 5.w,
                                        ),
                                        Text("Skin disease",
                                            style: GoogleFonts.abhayaLibre(
                                              textStyle: TextStyle(
                                                  color: Colors.black
                                                      .withOpacity(.8),
                                                  fontSize: 12.sp),
                                            )),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 4.h,
                                    ),
                                    Text("M.B.A from Dhaka Medical",
                                        style: GoogleFonts.abhayaLibre(
                                          textStyle: TextStyle(
                                              color:
                                              Colors.black.withOpacity(.8),
                                              fontSize: 12.sp),
                                        )),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Center(child: Text("৳800")),
                              width: width * .1.w,
                              height: height * .02.h,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.blue.shade200),
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => DrSajida()));
                              },
                              child: Text(
                                "About Doctor",
                                style: TextStyle(
                                    fontSize: 12.sp,
                                    decoration: TextDecoration.underline,
                                    color: Colors.green),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    )
    ;
  }
}
