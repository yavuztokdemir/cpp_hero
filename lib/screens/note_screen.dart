import 'package:flutter/material.dart';

class NoteScreen extends StatelessWidget {
  final String videoTitle;
  final List<String> topics;

  NoteScreen({required this.videoTitle, required this.topics});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(videoTitle),
      ),
      body: ListView.builder(
        itemCount: topics.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(topics[index]),
          );
        },
      ),
    );
  }
}
