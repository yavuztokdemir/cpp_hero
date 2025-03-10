import 'package:flutter/material.dart';
import '../screens/note_screen.dart'; // Doğru import

class VideoCard extends StatelessWidget {
  final String videoTitle;
  final List<String> topics;

  VideoCard({required this.videoTitle, required this.topics});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => NoteScreen(
              videoTitle: videoTitle,
              topics: topics,
            ),
          ),
        );
      },
      child: Card(
        margin: EdgeInsets.all(8.0),
        color: Color(0xFF526D82),
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                videoTitle,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: topics.map((topic) {
                  return Text(
                    topic,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14.0,
                    ),
                  );
                }).toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
