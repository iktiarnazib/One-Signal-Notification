import 'package:flutter/material.dart';

class NotificationPage extends StatelessWidget {
  final String title;
  final String description;
  const NotificationPage({
    super.key,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Notification Page')),
      body: Column(children: [Text(title), Text(description)]),
    );
  }
}
