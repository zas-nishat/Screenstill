import 'package:flutter/material.dart';
import '../../ui_components/color_contants.dart';
import 'SearchTabBar1.dart';
import 'SearchTabBar2.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}



class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 2,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: AppBarColor,
            automaticallyImplyLeading: false,
            title: const Text("Search"),
          ),
          body: Column(
            children: const [
              TabBar(
                indicatorWeight: 3,
                indicatorColor: Colors.teal,
                tabs: [
                  Tab(child: Text("Search",style: TextStyle(
                      color: Colors.grey
                  ),),),
                  Tab(child: Text("Appointment",style: TextStyle(
                      color: Colors.grey
                  ),),)
                ],
              ),
              Expanded(
                child: TabBarView(
                    children: [
                      Search_ui_doctor_search(),
                      Search_ui_doctor_appointment()
                    ]),
              )
            ],
          ),
        ));
  }
}

