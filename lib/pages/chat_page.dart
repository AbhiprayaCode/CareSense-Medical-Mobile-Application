import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:groq/groq.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  final TextEditingController _textController = TextEditingController();
  final List<ChatMessage> _messages = <ChatMessage>[];
  final ScrollController _scrollController = ScrollController();
  final Groq _groq = Groq(apiKey: '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');
  final String _pineconeApiKey = 'pcsk_oxqYQ_DsEroGn1oS4xPiCB1mPLGgGHP7nYXMrzgBN4N9Vne98en8PF8TMnHpcN555xsH9';
  final String _pineconeIndexUrl = 'https://medical-chatbot-lh7lpad.svc.aped-4627-b74a.pinecone.io/query';

  @override
  void initState() {
    super.initState();
    _startChatWithSystemPrompt();
  }

  void _startChatWithSystemPrompt() {
    // Initial system prompt configuration here
    _groq.startChat();
  }

  bool _isDetailedRequest(String text) {
    final lowerText = text.toLowerCase();
    return lowerText.contains("detail") || lowerText.contains("explain");
  }

  void _handleSubmitted(String text) async {
    _textController.clear();
    if (text.isEmpty) return;

    ChatMessage message = ChatMessage(text: text, isUserMessage: true);

    setState(() {
      _messages.add(message);
    });
    _scrollToBottomWithDelay(const Duration(milliseconds: 200));

    final pineconeResult = await _queryPinecone(text);
    if (pineconeResult.isNotEmpty) {
      _addMessageToChat(pineconeResult);
    } else {
      _sendMessage(text, _isDetailedRequest(text));
    }
  }

  Future<String> _queryPinecone(String query) async {
    final response = await http.post(
      Uri.parse(_pineconeIndexUrl),
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $_pineconeApiKey',
      },
      body: jsonEncode({
        'vector': _convertTextToVector(query),
        'topK': 1,
        'includeMetadata': true,
      }),
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      if (data['matches'].isNotEmpty) {
        return data['matches'][0]['metadata']['content'] ?? '';
      }
    }
    return '';
  }

  List<double> _convertTextToVector(String text) {
    return List.generate(512, (index) => 0.0);
  }

  void _addMessageToChat(String text) {
    ChatMessage responseMessage = ChatMessage(
      text: _formatText(text),
      isUserMessage: false,
    );

    setState(() {
      _messages.add(responseMessage);
    });
  }

  String _formatText(String text) {
    text = text.replaceAllMapped(RegExp(r'\*\*(.+?)\*\*'), (match) => '<b>${match[1]}</b>');

    final lines = text.split('\n');
    final formattedLines = <String>[];

    for (var line in lines) {
      if (line.startsWith('* ')) {
        line = line.replaceAllMapped(RegExp(r'\*+ '), (match) => '  ' * (match[0]!.length - 1) + '• ');
        formattedLines.add('• ${line.substring(2)}');
      } else {
        formattedLines.add(line);
      }
    }

    return formattedLines.join('\n');
  }

  void _sendMessage(String text, bool detailed) async {
    try {
      final prompt = detailed
          ? "Please provide a detailed explanation for the following query: $text"
          : "Please respond briefly and clearly to the following query: $text";

      // Assuming _groq.sendMessage accepts a prompt/message directly
      GroqResponse response = await _groq.sendMessage(prompt);
      _addMessageToChat(response.choices.first.message.content);
    } on GroqException catch (error) {
      _addMessageToChat("Error: ${error.message}");
    }
    _scrollToBottomWithDelay(const Duration(milliseconds: 300));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Doctor AI'),
        actions: [_buildClearChatButton()],
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Flexible(
              child: ListView.builder(
                controller: _scrollController,
                itemCount: _messages.length,
                itemBuilder: (_, int index) => _messages[index],
              ),
            ),
            const Divider(height: 1.0),
            Container(
              decoration: BoxDecoration(
                color: Theme.of(context).cardColor,
              ),
              child: _buildTextComposer(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildClearChatButton() {
    return IconButton(
      onPressed: () {
        _groq.clearChat();
        setState(() {
          _messages.clear();
        });
      },
      icon: const Icon(Icons.delete),
    );
  }

  Widget _buildTextComposer() {
    return IconTheme(
      data: IconThemeData(color: Theme.of(context).colorScheme.secondary),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Row(
          children: <Widget>[
            Flexible(
              child: TextField(
                controller: _textController,
                decoration: const InputDecoration(
                  hintText: 'Send a message',
                  contentPadding: EdgeInsets.symmetric(horizontal: 16.0),
                  border: InputBorder.none,
                ),
              ),
            ),
            IconButton(
              icon: const Icon(Icons.send),
              onPressed: () => _handleSubmitted(_textController.text),
            ),
          ],
        ),
      ),
    );
  }

  _scrollToBottomWithDelay(Duration delay) async {
    await Future.delayed(delay);
    _scrollController.animateTo(
      _scrollController.position.maxScrollExtent,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }
}

class ChatMessage extends StatelessWidget {
  final String text;
  final bool isUserMessage;

  const ChatMessage({
    Key? key,
    required this.text,
    this.isUserMessage = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final CrossAxisAlignment crossAxisAlignment = isUserMessage ? CrossAxisAlignment.end : CrossAxisAlignment.start;

    return Column(
      crossAxisAlignment: crossAxisAlignment,
      children: [
        Container(
          margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 16.0),
          padding: const EdgeInsets.all(10.0),
          decoration: BoxDecoration(
            color: isUserMessage ? Colors.blue[100] : Colors.blue[300],
            borderRadius: isUserMessage
                ? const BorderRadius.only(
              topLeft: Radius.circular(8.0),
              topRight: Radius.circular(8.0),
              bottomLeft: Radius.circular(8.0),
              bottomRight: Radius.circular(0.0),
            )
                : const BorderRadius.only(
              topLeft: Radius.circular(0.0),
              topRight: Radius.circular(8.0),
              bottomLeft: Radius.circular(8.0),
              bottomRight: Radius.circular(8.0),
            ),
          ),
          child: _buildTextContent(text, theme),
        ),
      ],
    );
  }

  Widget _buildTextContent(String text, ThemeData theme) {
    final boldTextRegex = RegExp(r'<b>(.+?)</b>');
    final matches = boldTextRegex.allMatches(text);
    List<InlineSpan> spans = [];
    int currentIndex = 0;

    for (final match in matches) {
      if (match.start > currentIndex) {
        spans.add(TextSpan(
          text: text.substring(currentIndex, match.start),
          style: theme.textTheme.bodyLarge,
        ));
      }

      spans.add(TextSpan(
        text: match.group(1),
        style: theme.textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.bold),
      ));

      currentIndex = match.end;
    }

    if (currentIndex < text.length) {
      spans.add(TextSpan(
        text: text.substring(currentIndex),
        style: theme.textTheme.bodyLarge,
      ));
    }

    return RichText(
      text: TextSpan(children: spans),
    );
  }
}

class ErrorMessage extends ChatMessage {
  const ErrorMessage({Key? key, required String text})
      : super(key: key, text: text);

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 16.0),
          padding: const EdgeInsets.all(10.0),
          decoration: BoxDecoration(
            color: theme.colorScheme.errorContainer,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(0.0),
              topRight: Radius.circular(8.0),
              bottomLeft: Radius.circular(8.0),
              bottomRight: Radius.circular(8.0),
            ),
          ),
          child: Text(
            text,
            style: theme.textTheme.bodyLarge,
          ),
        ),
      ],
    );
  }
}