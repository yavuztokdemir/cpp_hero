import 'package:flutter/material.dart';
import '../widgets/video_card.dart'; // Doğru import

class HomeScreen extends StatelessWidget {
  // Örnek video listesi
  final List<Map<String, dynamic>> videos = List.generate(46, (index) {
    return {
      'title': '${index + 1}. Video',
      'topics': ['C++ nasıl bir dil?', 'C & C++ Farkları', '...'],
    };
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF27374D), // Arka plan rengi
      appBar: AppBar(
        title: Text('C++ Eğitim Kursu'),
        actions: <Widget>[
          // actions özelliği eklendi
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              'assets/icon.png', // icon.png eklendi
              width: 40,
              height: 40,
            ),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: videos.length,
        itemBuilder: (context, index) {
          return VideoCard(
            videoTitle: videos[index]['title'],
            topics: videos[index]['topics'],
          );
        },
      ),
    );
  }
}
