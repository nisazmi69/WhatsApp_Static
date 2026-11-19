import 'package:flutter/material.dart';

// 1. Model Data sesuai Materi Minggu 15 (OOP Dasar)
class Message {
  final String text;
  final bool isMe;

  Message({required this.text, required this.isMe});
}

class Detailchat extends StatefulWidget {
  const Detailchat({super.key});

  @override
  State<Detailchat> createState() => _DetailchatState();
}

class _DetailchatState extends State<Detailchat> {
  // 2. Controller untuk input teks dan auto-scroll
  final TextEditingController _chatController = TextEditingController();
  final ScrollController _scrollController = ScrollController();

  // 3. Daftar pesan menggunakan class Message (dengan percakapanmu sebelumnya)
  final List<Message> _messages = [
    Message(text: 'haaiiiii bb', isMe: false),
    Message(text: 'haaiiiiiii bb', isMe: true),
    Message(text: 'kitaa jadi mainn kannn', isMe: false),
    Message(text: 'jadiiii dongggg', isMe: true),
  ];

  // 4. Manajemen memori (dispose kedua controller)
  @override
  void dispose() {
    _chatController.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  // 5. Logika kirim pesan + auto-scroll ke pesan paling bawah
  void _sendMessage() {
    if (_chatController.text.trim().isEmpty) return;
    setState(() {
      _messages.add(Message(text: _chatController.text.trim(), isMe: true));
    });
    _chatController.clear();

    Future.delayed(const Duration(milliseconds: 100), () {
      if (_scrollController.hasClients) {
        _scrollController.animateTo(
          _scrollController.position.maxScrollExtent,
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeOut,
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF075E54),
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(Icons.arrow_back),
        ),
        titleSpacing: 0,
        title: Row(
          children: [
            const CircleAvatar(
              radius: 20,
              backgroundColor: Color.fromARGB(255, 57, 109, 198),
              child: Text(
                'b',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(width: 10),
            const Expanded(
              child: Text('bebee', style: TextStyle(fontSize: 17)),
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.videocam_outlined),
          ),
          IconButton(onPressed: () {}, icon: const Icon(Icons.call_outlined)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert)),
        ],
      ),
      body: Container(
        color: const Color(0xFFF5F7F8),
        child: Column(
          children: [
            // 6. Area Chat Dinamis dengan ListView.builder & ScrollController
            Expanded(
              child: ListView.builder(
                controller: _scrollController,
                padding: const EdgeInsets.all(14),
                itemCount: _messages.length,
                itemBuilder: (context, index) {
                  final msg = _messages[index];
                  return Align(
                    alignment: msg.isMe
                        ? Alignment.centerRight
                        : Alignment.centerLeft,
                    child: Container(
                      constraints: BoxConstraints(
                        maxWidth: MediaQuery.sizeOf(context).width * 0.78,
                      ),
                      margin: const EdgeInsets.only(bottom: 8),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 9,
                      ),
                      decoration: BoxDecoration(
                        color: msg.isMe
                            ? const Color(0xFFD9FDD3)
                            : Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: const Radius.circular(10),
                          topRight: const Radius.circular(10),
                          bottomLeft: Radius.circular(msg.isMe ? 10 : 2),
                          bottomRight: Radius.circular(msg.isMe ? 2 : 10),
                        ),
                      ),
                      child: Text(
                        msg.text,
                        style: const TextStyle(fontSize: 15),
                      ),
                    ),
                  );
                },
              ),
            ),
            // 7. Input dan Tombol Kirim
            SafeArea(
              top: false,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(8, 6, 8, 8),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Expanded(
                      child: TextField(
                        controller: _chatController,
                        minLines: 1,
                        maxLines: 4,
                        textInputAction: TextInputAction.send,
                        onSubmitted: (value) => _sendMessage(),
                        decoration: InputDecoration(
                          hintText: 'Ketik pesan',
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(24),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 6),
                    CircleAvatar(
                      radius: 24,
                      backgroundColor: const Color(0xFF25D366),
                      child: IconButton(
                        onPressed: _sendMessage,
                        color: Colors.white,
                        icon: const Icon(Icons.send),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}