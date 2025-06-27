import 'package:flutter/material.dart';
import 'package:whatsappui/widgets/calllist.dart';
import 'package:whatsappui/widgets/homebar.dart';

class Calls extends StatelessWidget {
  const Calls({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF121212),
      appBar: HomeBar("Calls", Icons.search),
      body: Padding(
        padding: const EdgeInsets.only(left: 17, right: 17),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Favorites",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w700,
                fontSize: 20,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    top: 15,
                    right: 15,
                    bottom: 15,
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xFF23c063),
                      borderRadius: BorderRadius.circular(22),
                    ),
                    height: 35,
                    width: 35,
                    child: Icon(Icons.favorite, size: 20),
                  ),
                ),

                Text(
                  "Add favorite",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
            Text(
              "Recent",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w700,
                fontSize: 20,
              ),
            ),
            CallList(
              "https://as2.ftcdn.net/jpg/05/16/13/85/1000_F_516138501_Wlzyo6y4CMmDRl0XGmhFHnuHi28CBowe.jpg",
              "Zohaib NED",
              "Today , 11:38 AM",
              "received",
            ),
          ],
        ),
      ),
    );
  }
}
