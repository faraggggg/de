// details_screen.dart

import 'package:details_screen/components.dart';
import 'package:flutter/material.dart';
import 'Court.dart';

enum ScreenMode {
  Book,
  JoinTeam,
}

class DetailsScreen extends StatefulWidget {
  final Court court;
  final ScreenMode mode;

  const DetailsScreen({
    Key? key,
    required this.court,
    required this.mode,
  }) : super(key: key);

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.network(
            widget.court.imageUrl,
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.cover,
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 350,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50.0),
                  topRight: Radius.circular(50.0),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      widget.court.name,
                      style: const TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(Icons.location_on_outlined),
                        Text(widget.court.address),
                      ],
                    ),
                    const SizedBox(height: 16.0),
                    Text(widget.court.description),
                    const SizedBox(height: 24.0),
                    StyledElevatedButton(
                      onPressed: () {
                        if (widget.mode == ScreenMode.Book) {
                          print('Book button pressed');
                        } else {
                          print('Join Team button pressed');
                        }
                      },
                      text: widget.mode == ScreenMode.Book ? 'Book' : 'Join Team',
                      color: widget.mode == ScreenMode.Book ? Colors.green : Colors.green,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

