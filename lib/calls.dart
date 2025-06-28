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
        padding: const EdgeInsets.only(left: 17, right: 17, top: 10),
        child: Stack(
          children: [
            Column(
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
                CallList(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTAU0qMtvXKm8ud_EN-muK0DcD7Hd6PtDlPeS4AUM_i1xokrcvAm5zDB7nWXemaUW-_vac&usqp=CAU",
                  "Anu Jazz",
                  "Yesterday , 10:09 AM",
                  "not",
                ),
                CallList(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSpD1_zxcoLGrWsSQG9XPLb_ZP_Z5HGd_y1BzbSDa1e9hCvts1ouiw9UQWUjepyrGlv-8w&usqp=CAU",
                  "Farteen Ufone",
                  "Yesterday , 10:09 AM",
                  "not",
                ),
              ],
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
                  child: Icon(Icons.add_ic_call, color: Color(0xFF121212)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
