import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DrSajida extends StatelessWidget {
  const DrSajida({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.teal.shade100,
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              elevation: 0,
              automaticallyImplyLeading: false,
              backgroundColor: Colors.transparent,
              expandedHeight: height * .6,
              flexibleSpace: FlexibleSpaceBar(
                background: Image.asset(
                  "Assets/doctor2.png",
                  fit: BoxFit.cover, height: double.infinity,
                ),
              ),
              floating: true,
              pinned: true,
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding:
                const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Dr. Madara Uchiha",
                      style: TextStyle(
                          fontFamily: "Serif",
                          color: Colors.black,
                          fontSize: 25,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 4.h,
                    ),
                    // Doctor Type

                    Text(
                      "Psychological- Genjutsu Medicine",
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.blue, fontWeight: FontWeight.w400),
                    ),
                    SizedBox(height: 10.h,
                    ),
                    //Introduction

                    Text(
                      "Introduction:",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500),
                    ),
                    //About & Introduction
                    SizedBox(height: 5.h,),
                    Text("Some people might see a psychologist because they’ve felt depressed or"
                        " anxious or have lacked self-confidence for a long time. Others may see a"
                        " psychologist because they have a short-term issue they want help with, "
                        "such as feeling overwhelmed by a new job or difficulties with a loved one.",
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.black.withOpacity(.7), fontWeight: FontWeight.w400),),
                    SizedBox(
                      height: 10.h,
                    ),
                    Text(
                      "Information",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Text(
                      "Location:",
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.blue,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(height: 4.h,
                    ),
                    Container(
                      width: double.infinity,
                      height: height *.1,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Row(
                              children: [
                                Icon(Icons.location_on_outlined, color: Colors.teal,),
                                SizedBox(width: 5.w,),
                                Text("S.S.K Road, Feni", style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400
                                ),)
                              ],
                            ),
                            Row(
                              children: [
                                Text("Contact Number:", style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400
                                ),),
                                SizedBox(width: 5.w,),
                                Text("+880 112 234 678", style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400
                                ),)
                              ],
                            )
                          ],
                        ),
                      ),
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.withOpacity(.7),
                                offset: Offset(0,0),
                                blurRadius: 1,
                                spreadRadius: 1
                            )
                          ],
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.teal.shade100
                      ),
                    ),
                    SizedBox(height: 10.h,),
                    Text(
                      "Other Information:",
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.blue,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(height: 10.h,),
                    SizedBox(
                      height: height*.3,
                      child: Text("Psychologists help a wide variety of people and can treat many kinds"
                          " of behavioral and mental health issues. They can also"
                          " help with life and relationship issues.",
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.black.withOpacity(.6), fontWeight: FontWeight.w400),),
                    ),
                  ],
                ),
              ),
            ),
            //       SliverList(delegate: SliverChildBuilderDelegate((context, index) => ListTile(
            //         title: Center(
            //           child: Column(
            //             children: [
            //
            //             ],
            //           ),
            //         ),
            //       ),
            // childCount: 15))
          ],
        ),
      ),
    );
  }
}
