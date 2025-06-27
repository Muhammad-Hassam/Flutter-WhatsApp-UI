// ignore: file_names
import 'package:flutter/material.dart';

// ignore: non_constant_identifier_names
PreferredSizeWidget HomeBar(text, Iconn) {
  return AppBar(
    backgroundColor: Color(0xFF121212),
    title: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w500,
            fontSize: 25,
          ),
        ),
        Row(
          children: [
            Icon(Iconn, color: Colors.white),
            SizedBox(width: 20),
            Icon(Icons.more_vert, color: Colors.white),
          ],
        ),
      ],
    ),
  );
}
