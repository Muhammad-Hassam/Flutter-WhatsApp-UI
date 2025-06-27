import 'package:flutter/material.dart';
import 'package:whatsappui/widgets/chatlistitem.dart';
import 'package:whatsappui/widgets/homebar.dart';
import 'package:whatsappui/widgets/updatelist.dart';

class Updates extends StatelessWidget {
  const Updates({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF121212),
      appBar: HomeBar("Updates", Icons.search),
      body: Padding(
        padding: const EdgeInsets.only(left: 17, right: 17),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Status",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w700,
                fontSize: 20,
              ),
            ),
            Row(
              children: [
                Text(
                  "Channels",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
            UpdateList(
              "https://canto-wp-media.s3.amazonaws.com/app/uploads/2021/06/19183934/photo-metadata-featured.jpg",
              "Jobs",
              "All Internships Oppurtunity",
              false,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Text(
                "Find channels to follow",
                style: TextStyle(
                  color: Color(0xFFabacac),
                  fontWeight: FontWeight.w700,
                  fontSize: 13,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
