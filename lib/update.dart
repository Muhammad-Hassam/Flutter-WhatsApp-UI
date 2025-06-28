import 'package:flutter/material.dart';
import 'package:whatsappui/widgets/chatlistitem.dart';
import 'package:whatsappui/widgets/homebar.dart';
import 'package:whatsappui/widgets/upadteimg.dart';
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
        child: Stack(
          children: [
            Column(
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
                SingleChildScrollView(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      UpdateImage(
                        false,
                        "Add status",
                        "https://static.thenounproject.com/png/5034901-200.png",
                        "https://w0.peakpx.com/wallpaper/514/515/HD-wallpaper-vijay-devarakonda-emotional-pic-arjun-reddy-vijay-devarakonda-emotional-pic-thumbnail.jpg",
                      ),
                      UpdateImage(
                        true,
                        "Yasir",
                        "https://static.thenounproject.com/png/5034901-200.png",
                        "https://w0.peakpx.com/wallpaper/514/515/HD-wallpaper-vijay-devarakonda-emotional-pic-arjun-reddy-vijay-devarakonda-emotional-pic-thumbnail.jpg",
                      ),
                      UpdateImage(
                        true,
                        "Hunain",
                        "https://cdn.pixabay.com/photo/2022/09/13/05/34/boy-handsome-pose-ideas-7450990_1280.jpg",
                        "https://www.shutterstock.com/image-photo/awesome-pic-natureza-600nw-2408133899.jpg",
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Channels",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: 20,
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xFF23282D),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      width: 81,
                      height: 32,
                      child: Container(
                        alignment: Alignment.center,
                        child: Text(
                          "Explore",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ],
                ),
                UpdateList(
                  "https://canto-wp-media.s3.amazonaws.com/app/uploads/2021/06/19183934/photo-metadata-featured.jpg",
                  "Jobs",
                  "All Internships Oppurtunity",
                  false,
                  true,
                ),
                UpdateList(
                  "https://pbs.twimg.com/profile_images/1110889734849658881/C9b3BlYh_400x400.png",
                  "Pakistan's Careers",
                  "Pakistan cities jobs",
                  false,
                  true,
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
                UpdateList(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQMLgjWAvhhk6q9DRar4nuTPcmZVDMFyyzuwQ&s",
                  "Crypto With Binance",
                  "600k followers",
                  false,
                  false,
                ),
              ],
            ),
            Positioned(
              bottom: 100,
              right: 0,
              child: SizedBox(
                height: 40,
                width: 40,
                child: FloatingActionButton(
                  backgroundColor: Color(0xFF1f272a),
                  onPressed: () {},
                  child: Icon(Icons.edit, color: Colors.white),
                ),
              ),
            ),
            Positioned(
              bottom: 20,
              right: 0,
              child: SizedBox(
                height: 55,
                width: 55,
                child: FloatingActionButton(
                  backgroundColor: Color(0xFF21c162),
                  onPressed: () {},
                  child: Icon(Icons.camera_alt, color: Color(0xFF121212)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
