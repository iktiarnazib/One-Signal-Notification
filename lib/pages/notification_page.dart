import 'package:flutter/material.dart';

class NotificationPage extends StatelessWidget {
  final String title;
  final String description;
  final String largeIconURL;
  final String bigPictureURL;
  const NotificationPage({
    super.key,
    required this.title,
    required this.description,
    required this.largeIconURL,
    required this.bigPictureURL,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Notification Page')),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (largeIconURL.isNotEmpty)
            Image.network(
              largeIconURL,
              height: 50,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          if (bigPictureURL.isNotEmpty)
            Image.network(bigPictureURL, height: 30, width: double.infinity),

          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [Text(title), Text(description)],
            ),
          ),
        ],
      ),
    );
  }
}
