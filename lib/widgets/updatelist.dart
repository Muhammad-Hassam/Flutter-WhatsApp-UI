import 'package:flutter/material.dart';

// ignore: non_constant_identifier_names
Widget UpdateList(url, name, msg, seen, follow) {
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
            follow
                ? Text(
                    follow ? "2:10 PM" : "",
                    style: TextStyle(
                      color: seen ? Color(0xFFabacac) : Color(0xFF23c063),
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                : SizedBox.shrink(),
            Padding(
              padding: const EdgeInsets.only(left: 25, top: 3),
              child: Container(
                decoration: BoxDecoration(
                  color: Color(follow ? 0xFF23c063 : 0xFF113629),
                  borderRadius: BorderRadius.circular(follow ? 10 : 15),
                ),
                width: follow ? 20 : 70,
                height: follow ? 20 : 25,
                child: Container(
                  alignment: Alignment.center,
                  child: Text(
                    follow ? "2" : "Follow",
                    style: TextStyle(
                      color: follow ? Colors.white : Color(0xFFe4ffe7),
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    ),
  );
}
