import 'package:flutter/material.dart';

Widget Search() {
  return SearchBar(
    backgroundColor: WidgetStateProperty.all<Color>(Color(0xFF2e2f2f)),
    hintText: "Ask Meta AI or Search",
    textStyle: WidgetStatePropertyAll(
      TextStyle(color: Colors.white, fontSize: 16),
    ),
    hintStyle: WidgetStatePropertyAll(
      TextStyle(color: Color(0xFFabacac), fontSize: 15),
    ),
    leading: Padding(
      padding: EdgeInsets.only(left: 5, top: 3),
      child: Icon(Icons.search, size: 26, color: Color(0xFFabacac)),
    ),
  );
}
