import 'package:flutter/material.dart';

// Widget to display a chat tile with username, content, and time in a list.

class ChatTileWidget extends StatelessWidget {
  final String username;
  final String content;
  final String time;

  const ChatTileWidget({
    super.key,
    required this.username,
    required this.content,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(horizontal: 0, vertical: 8),
      leading: CircleAvatar(
        radius: 26,
        backgroundColor: const Color(0xff746c64),
        child: Text(
          username[0],
          style: const TextStyle(fontSize: 22, color: Colors.white),
        ),
      ),
      title: Text(
        username,
        style: const TextStyle(fontWeight: FontWeight.bold),
      ),
      subtitle: Text(
        content,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(color: Colors.grey[700]),
      ),
      trailing: Text(
        time,
        style: TextStyle(color: Colors.grey[500], fontSize: 12),
      ),
      onTap: () {},
    );
  }
}
