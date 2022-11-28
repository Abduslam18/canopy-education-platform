import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

import '../screens/chat/components/body.dart';
import '../screens/home/components/body.dart';
import '../screens/homework/components/body.dart';
import '../screens/leve_gpa/components/body.dart';

class Floating extends StatefulWidget {
  @override
  _FloatingState createState() => _FloatingState();
}

class _FloatingState extends State<Floating> {
  int _index = 0;
  final isDialOpen = ValueNotifier(false);
  List<Widget> _widgetoptions = <Widget>[
    HomeBody(),
    GpaBody(),
    chatBody(),
    HomeworkBody(),
  ];

  @override
  Widget build(BuildContext context) => WillPopScope(
        onWillPop: () async {
          if (isDialOpen.value) {
            isDialOpen.value = false;
            return false;
          } else {
            return true;
          }
        },
        child: Scaffold(
          floatingActionButton: SpeedDial(
            animatedIcon: AnimatedIcons.menu_close,
            buttonSize: Size(50, 50),
            backgroundColor: Colors.black,
            overlayColor: Colors.black,
            overlayOpacity: 0.5,
            spacing: 7,
            openCloseDial: isDialOpen,
            children: [
              SpeedDialChild(
                child: const Icon(Icons.post_add),
                label: 'Add Post',
              ),
              SpeedDialChild(
                child: const Icon(Icons.question_mark),
                label: 'Add Question',
              ),
            ],
          ),
          //If you want to show body behind the navbar, it should be true
          extendBody: true,
          body: _widgetoptions.elementAt(_index),
          bottomNavigationBar: FloatingNavbar(
            onTap: (int val) => setState(() => _index = val),
            currentIndex: _index,
            items: [
              FloatingNavbarItem(icon: Icons.home, title: 'Home'),
              FloatingNavbarItem(
                  icon: Icons.insert_chart_outlined, title: 'GPA Level'),
              FloatingNavbarItem(
                  icon: Icons.chat_bubble_outline, title: 'Chats'),
              FloatingNavbarItem(icon: Icons.task, title: 'Home work'),
            ],
          ),
        ),
      );
}
