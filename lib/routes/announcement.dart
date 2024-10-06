import 'package:flutter/material.dart';
import 'package:secministryannouncement3screens/routes/detailsannouncementministry.dart';
import 'createannouncementministry.dart';

class UserModel {
  final String to;
  final String subject;
  final String date;

  UserModel({required this.to, required this.subject, required this.date});
}

class announcement extends StatelessWidget {
  // Capitalized the class name
  announcement({super.key});

  List<UserModel> _recordings = [
    UserModel(to: "AST", subject: "Session one", date: "1/10/2025"),
    UserModel(to: "AST", subject: "Session one", date: "1/10/2025"),
    UserModel(to: "AST", subject: "Session one", date: "1/10/2025"),
    UserModel(to: "AST", subject: "Session one", date: "1/10/2025"),
  ];

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
                  color: Colors.black.withOpacity(0.2), // Shadow color
                  spreadRadius: 0, // Spread radius
                  blurRadius: 6, // Blur radius
                  offset: Offset(0, 8), // Shadow appears only at the bottom
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
                color: Colors.white, // Set the color of the back arrow to white
              ),
              actions: [
                Container(
                  margin: EdgeInsets.only(right: 5),
                  child: IconButton(
                    icon: Icon(
                      Icons.add_circle_outline,
                      color: Colors.white,
                      size: 30,
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              createannouncement(), // Capitalized the class name
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
        body: ListView.builder(
          padding: EdgeInsets.zero, // Use zero padding for ListView
          itemBuilder: (context, index) =>
              buildUserItem(context, _recordings[index]), // Pass context here
          itemCount: _recordings.length,
        ),
      ),
    );
  }

  Widget buildUserItem(BuildContext context, UserModel record) =>
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => DetailsAnnouncement()),
          );
        },
        child: Container(
          padding: EdgeInsets.only(left: 15, top: 13, right: 15),
          margin: EdgeInsets.only(top: 20, right: 10, left: 10),
          width: 372,
          height: 100,
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
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "To : ",
                      style: TextStyle(
                        fontWeight: FontWeight.bold, // Make this part bold
                        fontSize: 20,
                        fontFamily: "PoppinsRegular",
                        color: Colors.black,
                      ),
                    ),
                    TextSpan(
                      text: "${record.to}",
                      style: TextStyle(
                        fontSize: 20,
                        fontFamily: "PoppinsRegular",
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 6),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "Subject: ",
                      style: TextStyle(
                        fontWeight: FontWeight.bold, // Make this part bold
                        fontSize: 20,
                        fontFamily: "PoppinsRegular",
                        color: Colors.black, // Set the color to black
                      ),
                    ),
                    TextSpan(
                      text: "${record.subject}",
                      style: TextStyle(
                        fontSize: 20,
                        fontFamily: "PoppinsRegular",
                        color: Colors.black, // Ensure this part is also black
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 0),
                alignment: Alignment.bottomRight,
                child: Text(
                  "${record.date} ",
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
      );
}
