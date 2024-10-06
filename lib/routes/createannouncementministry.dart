import 'package:flutter/material.dart';

import 'announcement.dart';

class createannouncement extends StatefulWidget {
  const createannouncement({super.key});

  @override
  _CreateAnnouncementState createState() => _CreateAnnouncementState();
}

@override
_CreateAnnouncementState createState() => _CreateAnnouncementState();

class _CreateAnnouncementState extends State<createannouncement> {
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
                children: [
                  Row(
                    children: [
                      Text(
                        "To:",
                        style: TextStyle(fontSize: 20),
                      ),
                      SizedBox(
                        width: 119,
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 10, right: 5),
                        width: 195,
                        height: 45,
                        decoration: BoxDecoration(
                          color: Color(0xFFFFFFFF),
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.2),
                              spreadRadius: 0,
                              blurRadius: 6,
                              offset: Offset(0, 8),
                            ),
                          ],
                        ),
                        child: DropdownButton<String>(
                          hint: Text("Select Direction"),
                          isExpanded: true,
                          value: selectedRecipient,
                          // Set the current value
                          items: [
                            DropdownMenuItem(
                              value: "1",
                              child: Text("Companies"),
                            ),
                            DropdownMenuItem(
                              value: "2",
                              child: Text("All Students"),
                            ),
                            DropdownMenuItem(
                              value: "3",
                              child: Text("Mobile App"),
                            ),
                            DropdownMenuItem(
                              value: "7",
                              child: Text("Wep Devolopment"),
                            ),
                            DropdownMenuItem(
                              value: "5",
                              child: Text("Data Science"),
                            ),
                            DropdownMenuItem(
                              value: "6",
                              child: Text("AI"),
                            ),
                          ],
                          onChanged: (String? newValue) {
                            setState(() {
                              selectedRecipient = newValue;
                            });
                          },
                          underline: SizedBox(),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Text(
                        "Subject:",
                        style: TextStyle(fontSize: 20),
                      ),
                      SizedBox(
                        width: 73,
                      ),
                      SizedBox(
                        width: 195,
                        height: 45,
                        child: TextField(
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            hintText: 'Subject',
                          ),
                        ),
                      )
                    ],
                  )
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
                      fontFamily: "PoppinsRegular",
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    width: 372,
                    height: 300,
                    child: TextField(
                      maxLines: null,
                      expands: true,
                      textAlignVertical: TextAlignVertical.top,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        hintText: 'Top to Write...',
                        contentPadding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => announcement()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF0FAB7D),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding: EdgeInsets.symmetric(vertical: 12, horizontal: 24),
                ),
                child: Text(
                  'Submit',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                  ),
                ),
              ),
              width: 300,
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}
