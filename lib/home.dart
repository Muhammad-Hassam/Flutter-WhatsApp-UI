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
      body: Padding(
        padding: const EdgeInsets.only(left: 7, right: 7),
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Search(),
                  SingleChildScrollView(
                    child: Column(
                      children: [
                        ChatListItem(
                          "https://as2.ftcdn.net/jpg/05/16/13/85/1000_F_516138501_Wlzyo6y4CMmDRl0XGmhFHnuHi28CBowe.jpg",
                          "Zohaib NED",
                          "App dveloped krni hai whatsapp ki trha",
                          true,
                          "2:10 PM",
                        ),
                        ChatListItem(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ-z7UGHo9CNaa1rI8vUZAC5bf9xOs7GO01Xs8OKko9hw2ax1nSWFSrObJNBEIrC0eObWo&usqp=CAU",
                          "Annu bhai",
                          "Ye scheme nhi chalegi wha prr",
                          false,
                          "8:16 PM",
                        ),
                        ChatListItem(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTZ5DzG-gg1NCIBPN8ujJksV9AWL8MmFCbpQyIMkywrYLBNe3D8M3lRXh_9XGuNUSuPovc&usqp=CAU",
                          "Mehar Ufone",
                          "Numeric data mai msg send nhi hota",
                          true,
                          "11:10 PM",
                        ),
                        ChatListItem(
                          "https://thumbs.dreamstime.com/b/silhouette-friends-sunset-water-4616423.jpg",
                          "Friend's Zone",
                          "Danial: Nhi hota ye",
                          true,
                          "Yesterday",
                        ),
                        ChatListItem(
                          "https://media.sproutsocial.com/uploads/2022/06/profile-picture.jpeg",
                          "Kashu Habibi",
                          "Fees submit krwadi",
                          false,
                          "Yesterday",
                        ),
                        ChatListItem(
                          "https://img.freepik.com/free-photo/document-marketing-strategy-business-concept_53876-132231.jpg?semt=ais_hybrid&w=740",
                          "Project Dicussion Chat",
                          "Shoaib: Janni add nhi hora",
                          true,
                          "6/25/25",
                        ),
                        ChatListItem(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTAU0qMtvXKm8ud_EN-muK0DcD7Hd6PtDlPeS4AUM_i1xokrcvAm5zDB7nWXemaUW-_vac&usqp=CAU",
                          "Anu Jazz",
                          "Ye sara add krdo file and send krdena",
                          true,
                          "6/22/25",
                        ),
                        ChatListItem(
                          "https://static.thenounproject.com/png/5034901-200.png",
                          "Shaani",
                          "Bhai mjhe ev ke notes dedo yrr",
                          true,
                          "6/18/25",
                        ),
                        ChatListItem(
                          "https://avatar.iran.liara.run/public/1",
                          "kamran UBI",
                          "Phone tu pick krley yrr",
                          false,
                          "6/12/25",
                        ),
                        ChatListItem(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTDBp1En9FQPBFv9eGMXVVAqvPkklufYjG14g&s",
                          "University Life",
                          "Shazaib: Paper kesa aaya tha",
                          true,
                          "6/12/25",
                        ),
                        ChatListItem(
                          "https://profit.pakistantoday.com.pk/wp-content/uploads/2021/12/Getting-additional-money-is-now-more-convenient-than-before-Article-Pic-scaled.jpg",
                          "PMO Mehran",
                          "Douments mil gye hain ssarey tu batana",
                          true,
                          "5/30/25",
                        ),
                        ChatListItem(
                          "https://c8.alamy.com/comp/2JG2PXE/free-handsome-boy-photos-cute-smart-boy-download-stock-images-on-alamy-2JG2PXE.jpg",
                          "Shehzad",
                          "Nhi mjhe iska nhi maloom sahi se",
                          true,
                          "5/30/25",
                        ),
                        ChatListItem(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSpD1_zxcoLGrWsSQG9XPLb_ZP_Z5HGd_y1BzbSDa1e9hCvts1ouiw9UQWUjepyrGlv-8w&usqp=CAU",
                          "Farteen Ufone",
                          "Jani bata uska",
                          true,
                          "5/28/25",
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 20,
              right: 4,
              child: SizedBox(
                height: 55,
                width: 55,
                child: FloatingActionButton(
                  backgroundColor: Color(0xFF21c162),
                  onPressed: () {},
                  child: Icon(Icons.message, color: Color(0xFF121212)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
