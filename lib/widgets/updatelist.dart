import 'package:flutter/material.dart';

// ignore: non_constant_identifier_names
Widget UpdateList(url, name, msg, seen) {
  return Padding(
    padding: const EdgeInsets.only(top: 15),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            CircleAvatar(backgroundImage: NetworkImage(url)),
            SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Row(
                  children: [
                    Text(
                      msg,
                      style: TextStyle(
                        color: Color(0xFFabacac),
                        fontWeight: FontWeight.w600,
                        fontSize: 13,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),

        Column(
          children: [
            Text(
              "2:10 PM",
              style: TextStyle(
                color: seen ? Color(0xFFabacac) : Color(0xFF23c063),
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 22, top: 3),
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xFF23c063),
                  borderRadius: BorderRadius.circular(10),
                ),
                width: 20,
                height: 20,
                child: Text(
                  "2",
                  style: TextStyle(color: Colors.white),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
      ],
    ),
  );
}
