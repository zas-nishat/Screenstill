import 'package:flutter/material.dart';

import 'NotificationPageTabBar1.dart';
import 'NotificationPageTabBar2.dart';
class NotificationPage extends StatelessWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            title: Text("Notification"),
            backgroundColor: Colors.teal,
          ),
          body: Column(
            children: [
              TabBar(
                tabs: [
                  Tab(child: Text("Notification",style: TextStyle(
                      color: Colors.grey
                  ),),),
                  Tab(child: Text("Medication",style: TextStyle(
                    color: Colors.grey
                  ),),)
                ],
              ),
              Expanded(
                child: TabBarView(
                    children: [
                      Notification_ui_notification(),
                      Notification_ui_medication()
                    ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}

