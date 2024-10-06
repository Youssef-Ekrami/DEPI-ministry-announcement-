import 'package:flutter/material.dart';

import 'package:secministryannouncement3screens/routes/announcement.dart';
import 'package:secministryannouncement3screens/routes/createannouncementministry.dart';
import 'package:secministryannouncement3screens/routes/detailsannouncementministry.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(useMaterial3: true),
      initialRoute: '/screen1',
      routes: {
        '/screen1': (context) =>  announcement(),
        '/createannouncement': (context) => const createannouncement(),
        '/DetailsAnnouncement': (context) => const DetailsAnnouncement(),

        // '/soft_skills': (context) => const soft_skills(),
        // '/english': (context) => const english(),
        // '/freelance': (context) => const freelance(),
        // '/recordings': (context) =>  recordings(),

      },
    );
  }
}
