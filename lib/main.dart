// In main.dart

import 'package:details_screen/Court.dart';
import 'package:details_screen/details_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const SportifyApp());
}

class SportifyApp extends StatelessWidget {
  const SportifyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sportify',
      home: DetailsScreen(
        court: Court(
          id: 1,
          name: 'Zayed Arena',
          imageUrl: 'https://th.bing.com/th/id/OIP.xEkV-nFFJlmEOnGjYxWZ1QHaEK?w=1599&h=899&rs=1&pid=ImgDetMain',
          address: 'Sheikh Zayed City',
          description: 'A spacious indoor court with high-quality facilities.', 
        ),
        mode: ScreenMode.Book, // Specify the mode here
      ),
    );
  }
}
