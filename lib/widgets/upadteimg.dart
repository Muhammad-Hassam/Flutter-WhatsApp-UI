import 'package:flutter/material.dart';

Widget UpdateImage(me, name, url, bgImg) {
  return Padding(
    padding: const EdgeInsets.only(right: 10, top: 10, bottom: 15),
    child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: me
            ? DecorationImage(
                image: NetworkImage(bgImg),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                  // ignore: deprecated_member_use
                  Colors.black.withOpacity(0.35),
                  BlendMode.darken,
                ),
              )
            : null,

        color: Color(0xFF3e474e),
      ),
      width: 87,
      height: 122,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 8, top: 6),
            child: me
                ? Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Color(0xFF23c063), width: 2),
                    ),
                    child: CircleAvatar(backgroundImage: NetworkImage(url)),
                  )
                : Stack(
                    children: [
                      CircleAvatar(
                        radius: 25,
                        backgroundImage: NetworkImage(
                          "https://photosly.in/wp-content/uploads/2024/07/boy-dp-pic23.jpg",
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.green,
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Color(0xFF3e474e),
                              width: 2,
                            ),
                          ),
                          child: Icon(
                            Icons.add,
                            size: 16,
                            color: Color(0xFF3e474e),
                          ),
                        ),
                      ),
                    ],
                  ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, bottom: 4),
            child: Text(
              name,
              style: TextStyle(
                color: Colors.white,
                fontSize: 14,
                fontWeight: FontWeight.bold,
                letterSpacing: 0.1,
                height: 1,
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
