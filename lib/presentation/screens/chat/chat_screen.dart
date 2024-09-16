import 'package:flutter/material.dart';
import 'package:new_chat/presentation/widgets/chat/her_message_bubble.dart';
import 'package:new_chat/presentation/widgets/chat/my_message_bubble.dart';
import 'package:new_chat/presentation/widgets/shared/message_field_box.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(4.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage('https://i.pravatar.cc/400'),
          ),
        ),
        title: const Text('chat 🐯'),
        centerTitle: true,
      ),
      body: _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return (index % 2 == 0)
                  ? const HerMessageBubble()
                  : const MyMessageBubble();
                },
              ),
            ),

            const MessageFieldBox(),
          ],
        ),
      ),
    );
  }
}
