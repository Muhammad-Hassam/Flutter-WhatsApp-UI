import 'package:flutter/material.dart';
import 'package:whatsappui/widgets/chatlistitem.dart';
import 'package:whatsappui/widgets/homebar.dart';
import 'package:whatsappui/widgets/search.dart';

class Home extends StatelessWidget {
  const Home({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF121212),
      appBar: HomeBar("WhatsApp", Icons.camera_alt_outlined),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Search(),
          ChatListItem(
            "https://as2.ftcdn.net/jpg/05/16/13/85/1000_F_516138501_Wlzyo6y4CMmDRl0XGmhFHnuHi28CBowe.jpg",
            "Zohaib NED",
            "App dveloped krni hai whatsapp ki trha",
            true,
          ),
        ],
      ),
    );
  }
}
