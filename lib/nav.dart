import 'package:flutter/material.dart';
import 'package:my_dream/credit_page/credit_page_widget.dart';
import 'package:my_dream/nav.dart';
import 'package:my_dream/profile/credit_story_widget.dart';
import 'package:my_dream/profile/profile_item.dart';
import 'package:my_dream/profile/profile_widget.dart';
import 'package:my_dream/list_page/list_page_widget.dart';

class Nav extends StatefulWidget {
  @override
  _NavState createState() => _NavState();
}

class _NavState extends State<Nav> {
  int _selectedIndex = 0;
  List<Widget> _widgetOptions=<Widget>[
    ListPageWidget (),
    CreditStoryWidget(),
    ProfileWidget(),
  ];

void _onItemTab(int index){
  setState(() {
    _selectedIndex = index;
  });
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      )
      ,
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon:Icon(Icons.home),
           label: 'Кредитование',
         ),
          BottomNavigationBarItem(
          icon:Icon(Icons.money),
           label: 'Мои кредиты',
         ),
          BottomNavigationBarItem(
          icon:Icon(Icons.person),
           label: 'Мой профиль',
         )

      ],
      currentIndex: _selectedIndex,
      onTap: _onItemTab,
      ),

    );
  }
}