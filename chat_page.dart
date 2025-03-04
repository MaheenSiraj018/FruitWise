import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import '../models/message.dart';
import '../config.dart';

class ChatPage extends StatefulWidget {
  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  final TextEditingController _controller = TextEditingController();
  final List<Message> _messages = [
    Message('How can I assist you today?', Sender.bot),
  ];
  bool _isDarkMode = false;
  bool _generatingAnswer = false;

  void _sendMessage() async {
    if (_controller.text.trim().isEmpty) return;

    final userMessage = Message(_controller.text, Sender.user);
    setState(() {
      _messages.add(userMessage);
      _controller.clear();
      _generatingAnswer = true;
    });

    try {
      final response = await Dio().post(
        'https://generativelanguage.googleapis.com/v1beta/models/gemini-1.5-flash-latest:generateContent?key=${Config.apiKey}',
        data: {
          'system_instruction': {
            'parts': {
              'text':
              'You will assist users in telling the nutritional information of fruits and solving any query related to allergies due to having particular fruits. Your name is FruitWise. You can not give any info other than this',
            },
          },
          'contents': [
            {
              'role': 'user',
              'parts': [
                {'text': userMessage.text},
              ],
            },
          ],
        },
      );
    print("The response from chatbot is $response");
      final botResponse =
      response.data['candidates'][0]['content']['parts'][0]['text'];
      final containsMarkdown = _containsMarkdown(botResponse);

      setState(() {
        _messages.add(
            Message(botResponse, Sender.bot, isMarkdown: containsMarkdown));
      });
    } catch (error) {
      setState(() {
        _messages.add(Message(
            'Sorry - Something went wrong. Please try again!', Sender.bot));
      });
    } finally {
      setState(() {
        _generatingAnswer = false;
      });
    }
  }


  void _toggleMode() {
    setState(() {
      _isDarkMode = !_isDarkMode;
    });
  }

  bool _containsMarkdown(String text) {
    final markdownPattern = RegExp(r'[#*_`\[\]]');
    return markdownPattern.hasMatch(text);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'FruitWise Chatbot',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            letterSpacing: 1.2,
          ),
        ),
        backgroundColor: Color(0xFF9B6BB3),
        elevation: 0, // Removes shadow
        centerTitle: true, // Centers the title horizontally
        actions: [
          IconButton(
            icon: Icon(_isDarkMode ? Icons.light_mode : Icons.dark_mode),
            onPressed: _toggleMode,
          ),
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
                _isDarkMode ? "assets/chatbgblack.jpg" : "assets/chatbg.jpg"),
            fit: BoxFit.cover,
            colorFilter: _isDarkMode
                ? ColorFilter.mode(
                Colors.black.withOpacity(0.8), BlendMode.dstATop)
                : ColorFilter.mode(
                Colors.white.withOpacity(0.6), BlendMode.dstATop),
          ),
        ),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: _messages.length,
                itemBuilder: (context, index) {
                  final message = _messages[index];
                  return Container(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 16),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: message.sender == Sender.user
                          ? MainAxisAlignment.end
                          : MainAxisAlignment.start,
                      children: [
                        if (message.sender == Sender.bot)
                          CircleAvatar(
                            backgroundColor: Color(0xFF9B6BB3),
                            child: Icon(Icons.nature, color: Colors.white),
                          ),
                        if (message.sender == Sender.bot) SizedBox(width: 8),
                        Flexible(
                          child: Container(
                            padding: EdgeInsets.all(12),
                            decoration: BoxDecoration(
                              color: message.sender == Sender.user
                                  ? Color(0xFFf7e6ff)
                                  : Color(0xFFeeccff),
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: message.isMarkdown
                                ? MarkdownBody(
                              data: message.text,
                              styleSheet: MarkdownStyleSheet.fromTheme(
                                  Theme.of(context))
                                  .copyWith(
                                p: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'Poppins',
                                ),
                                h1: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'Poppins',
                                ),
                                h2: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'Poppins',
                                ),
                                h3: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'Poppins',
                                ),
                                h4: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'Poppins',
                                ),
                                h5: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'Poppins',
                                ),
                                h6: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'Poppins',
                                ),
                                strong: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'Poppins',
                                ),
                                code: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'Poppins',
                                ),
                              ),
                            )
                                : Text(
                              message.text,
                              style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'Poppins',
                              ),
                            ),
                          ),
                        ),
                        if (message.sender == Sender.user) SizedBox(width: 8),
                        if (message.sender == Sender.user)
                          CircleAvatar(
                            backgroundColor: Color(0xFF9B6BB3),
                            child: Icon(Icons.person, color: Colors.white),
                          ),
                      ],
                    ),
                  );
                },
              ),
            ),
            if (_generatingAnswer)
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CircularProgressIndicator(),
              ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      style: TextStyle(
                        color: Colors.black,
                      ),
                      controller: _controller,
                      onSubmitted: (_) => _sendMessage(),
                      decoration: InputDecoration(
                        hintText: 'Enter your prompt here...',
                        hintStyle: TextStyle(
                            color:
                            Colors.black), // Set hint text color to black
                        border: OutlineInputBorder(
                          borderRadius:
                          BorderRadius.circular(16), // Add border radius
                        ),
                        filled: true,
                        fillColor: Color(0xFFf7e6ff),
                        enabled: !_generatingAnswer,
                      ),
                    ),
                  ),
                  SizedBox(width: 8),
                  CircleAvatar(
                    backgroundColor: Color(0xFF9B6BB3),
                    child: IconButton(
                      icon: Icon(Icons.send, color: Colors.white),
                      onPressed: _sendMessage,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
