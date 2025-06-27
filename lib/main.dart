import 'package:flutter/material.dart';
import 'package:whatsappui/calls.dart';
import 'package:whatsappui/home.dart';
import 'package:whatsappui/update.dart';

void main() {
  runApp(const MyApp());
}

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(debugShowCheckedModeBanner: false, home: Calls());
//   }
// }

// import 'bottom_screens/home_screen.dart';
// import 'bottom_screens/profile_screen.dart';
// import 'bottom_screens/setting_screen.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  _MainHomeScreenState createState() => _MainHomeScreenState();
}

class _MainHomeScreenState extends State<MyApp> {
  int _selectedIndex = 0;

  final List<Widget> widgetOptions = const [Home(), Updates(), Calls()];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        hoverColor: Colors.transparent,
      ),
      home: Scaffold(
        body: widgetOptions.elementAt(_selectedIndex),

        bottomNavigationBar: BottomNavigationBar(
          showSelectedLabels: true,
          showUnselectedLabels: true,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Color(0xFF23c063),
          unselectedItemColor: Colors.white,
          backgroundColor: Color(0xFF121212),
          selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
          unselectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.chat), label: 'Chats'),
            BottomNavigationBarItem(
              icon: Icon(Icons.history),
              label: 'Updates',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.call_outlined),
              label: 'Calls',
            ),
          ],
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
