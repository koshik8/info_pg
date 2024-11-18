import 'package:flutter/material.dart';
import 'webview_screen.dart';

class InfoScreen extends StatelessWidget {
  final List<Map<String, String>> items = [
    {"title": "Terms of Service", "url": "https://example.com/terms"},
    {"title": "Privacy Policy", "url": "https://example.com/privacy"},
    {"title": "Licenses", "url": "https://example.com/licenses"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Info',
          style: TextStyle(
            color: Colors.white,
            fontSize: 22,
            fontWeight: FontWeight.w800,
          ),
        ),
        backgroundColor: const Color(0xFF5676F5),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
            size: 32,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Colors.white,
          ),
          child: ListView.builder(
            shrinkWrap: true, // Ensures ListView only takes required space
            physics: const NeverScrollableScrollPhysics(), // Prevent scrolling
            itemCount: items.length,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  ListTile(
                    title: Text(
                      items[index]['title']!,
                      style: TextStyle(color: Colors.grey[700]),
                    ),
                    trailing: const Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.grey,
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => WebViewScreen(
                            title: items[index]['title']!,
                            url: items[index]['url']!,
                          ),
                        ),
                      );
                    },
                  ),
                  if (index < items.length - 1) _divd(),
                ],
              );
            },
          ),
        ),
      ),
    );
  }

  Widget _divd() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8.0), // Adjusts line length
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Colors.grey, // Line color
            width: 0.5, // Line thickness
          ),
        ),
      ),
    );
  }
}
