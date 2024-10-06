import 'package:flutter/material.dart';

class DetailsAnnouncement extends StatefulWidget {
  const DetailsAnnouncement({super.key});

  @override
  _CreateAnnouncementState createState() => _CreateAnnouncementState();
}

class _CreateAnnouncementState extends State<DetailsAnnouncement> {
  String? selectedRecipient;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size(340, 70),
          child: Container(
            margin: EdgeInsets.only(top: 10, right: 10, left: 10),
            width: 340,
            height: 60,
            decoration: BoxDecoration(
              color: Color(0xFF0FAB7D),
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  spreadRadius: 0,
                  blurRadius: 6,
                  offset: Offset(0, 8),
                ),
              ],
            ),
            child: AppBar(
              title: Text(
                'Announcement',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: "PoppinsRegular",
                ),
              ),
              centerTitle: true,
              backgroundColor: Colors.transparent,
              elevation: 0,
              iconTheme: IconThemeData(
                color: Colors.white,
              ),
            ),
          ),
        ),
        body: Column(
          children: [
            Container(
              padding: EdgeInsets.only(left: 15, top: 10, right: 15),
              margin: EdgeInsets.only(top: 20, right: 10, left: 10),
              width: 372,
              height: 120,
              decoration: BoxDecoration(
                color: Color(0xFFE9E9E9),
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    spreadRadius: 0,
                    blurRadius: 6,
                    offset: Offset(0, 8),
                  ),
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "To: ",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            fontFamily: "PoppinsRegular",
                            color: Colors.black,
                          ),
                        ),
                        TextSpan(
                          // text: "${record.to}",
                          style: TextStyle(
                            fontSize: 20,
                            fontFamily: "PoppinsRegular",
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 15),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "Subject: ",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            fontFamily: "PoppinsRegular",
                            color: Colors.black,
                          ),
                        ),
                        TextSpan(
                          // text: "${record.subject}",
                          style: TextStyle(
                            fontSize: 20,
                            fontFamily: "PoppinsRegular",
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 10, top: 10, right: 10),
              margin: EdgeInsets.only(top: 20, right: 10, left: 10),
              width: 372,
              height: 385,
              decoration: BoxDecoration(
                color: Color(0xFFE9E9E9),
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    spreadRadius: 0,
                    blurRadius: 6,
                    offset: Offset(0, 8),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Body:",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontFamily: "PoppinsRegular",
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    /* "${record.body}"*/
                    "",
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: "PoppinsRegular",
                      color: Colors.black,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 280),
                    alignment: Alignment.bottomRight,
                    child: Text(
                      /*"${record.date} "*/
                      "1/7/2025",
                      style: TextStyle(
                        fontSize: 15,
                        fontFamily: "PoppinsRegular",
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
