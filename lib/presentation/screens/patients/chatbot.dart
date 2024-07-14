// presentation/screens/patients/chatbot.dart
import 'package:flutter/material.dart';import 'package:flutter/material.dart';
import 'package:learn_bloc/presentation/components/customappbar.dart';
import 'package:learn_bloc/presentation/components/customnavigatorbar.dart';
import 'package:learn_bloc/presentation/components/theme.dart';

class ChatBotScreen extends StatefulWidget {
  final String username;

  ChatBotScreen({Key? key, required this.username}) : super(key: key);

  @override
  _ChatBotScreenState createState() => _ChatBotScreenState();
}

class _ChatBotScreenState extends State<ChatBotScreen> {
  final List<Map<String, String>> messages = [];
  final TextEditingController _controller = TextEditingController();
  // final ChatBotModel chatBotModel = ChatBotModel(); // Initialize your chat bot model

  void _sendMessage() {
    if (_controller.text.trim().isEmpty) return;

    setState(() {
      String userMessage = _controller.text.trim();
      messages.add({
        'sender': widget.username,
        'text': userMessage,
      });

      // This part is a placeholder for integrating a chatbot model
      // String botResponse = chatBotModel.getResponse(userMessage); 
      // messages.add({
      //   'sender': 'Bot',
      //   'text': botResponse,
      // });

      _controller.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Chat Bot',
        profileName: widget.username,
        profileImagePath: 'assets/profile_image.png',
        appointments: [], // Replace with actual appointments data
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: messages.length,
              itemBuilder: (context, index) {
                final message = messages[index];
                return ListTile(
                  title: Text(
                    message['sender']!,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: message['sender'] == widget.username ? clr(1) : clr(3),
                    ),
                  ),
                  subtitle: Text(message['text']!),
                  leading: message['sender'] == widget.username
                      ? Icon(Icons.person, color: clr(1))
                      : Icon(Icons.rocket_rounded, color: clr(3)),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _controller,
                    decoration: InputDecoration(
                      hintText: 'Type your message',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.send, color: clr(3)),
                  onPressed: _sendMessage,
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: CustomBottomNavigationBar(
        currentIndex: 1,
        onTap: (index) {
          switch (index) {
            case 0:
              Navigator.pushReplacementNamed(context, '/patienthome'); // Navigate to patient home
              break;
            case 1:
              // Do nothing when index 1 is tapped (current page)
              break;
            case 2:
              Navigator.pushReplacementNamed(context, '/profile'); // Navigate to profile
              break;
          }
        },
      ),
    );
  }
}
