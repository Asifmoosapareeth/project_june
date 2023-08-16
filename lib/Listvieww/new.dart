import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: WhatsAppStatusUI(),
  ));
}

class WhatsAppStatusUI extends StatelessWidget {
  const WhatsAppStatusUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: statusData.length,
        itemBuilder: (context, index) {
          final status = statusData[index];
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(status.imageURL),
            ),
            title: Text(status.name),
            subtitle: Text(status.time),
          );
        },
      ),
    );
  }
}

class Status {
  final String name;
  final String imageURL;
  final String time;

  Status({
    required this.name,
    required this.imageURL,
    required this.time,
  });
}

List<Status> statusData = [
  Status(
    name: 'John Doe',
    imageURL: 'https://example.com/john.jpg',
    time: '2 hours ago',
  ),
  Status(
    name: 'Jane Smith',
    imageURL: 'https://example.com/jane.jpg',
    time: '1 hour ago',
  ),
  // Add more status items
];
