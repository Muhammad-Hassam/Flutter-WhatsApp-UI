import 'package:flutter/material.dart';

Widget CallList(url, name, msg, seen) {
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
                    color: seen == "received" ? Colors.red : Colors.white,
                  ),
                ),
                Row(
                  children: [
                    Icon(
                      seen == "received"
                          ? Icons.call_received
                          : Icons.call_made,
                      color: seen == "received"
                          ? Colors.red
                          : Color(0xFF23c063),
                      size: 15,
                    ),
                    Text(msg, style: TextStyle(color: Color(0xFFabacac))),
                  ],
                ),
              ],
            ),
          ],
        ),

        Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 22),
              child: Icon(Icons.call_outlined, color: Colors.white),
            ),
          ],
        ),
      ],
    ),
  );
}
