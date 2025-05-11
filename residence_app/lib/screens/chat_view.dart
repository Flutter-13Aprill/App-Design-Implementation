import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_chat_core/flutter_chat_core.dart';
import 'package:flutter_chat_ui/flutter_chat_ui.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => ChatScreenState();
}
// This is a chat screen that uses the `flutter_chat_ui` and `flutter_chat_core` packages to display a chat UI.

class ChatScreenState extends State<ChatScreen> {
  final _chatController = InMemoryChatController();

  @override
  void dispose() {
    _chatController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Chat(
          chatController: _chatController,
          currentUserId: 'user1',
          onMessageSend: (text) {
            _chatController.insertMessage(
              TextMessage(
                id: '${Random().nextInt(1000) + 1}',
                authorId: 'user1',
                createdAt: DateTime.now().toUtc(),
                text: text,
              ),
            );
          },
          resolveUser: (UserID id) async {
            return User(id: id, name: 'Remas');
          },
        ),
      ),
    );
  }
}
