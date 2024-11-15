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
      appBar: AppBar(
        title: Text("Info"),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              ListTile(
                title: Text(items[index]['title']!),
                trailing: Icon(Icons.arrow_forward_ios),
                onTap: () {
                  Navigator.push(
                    context,MaterialPageRoute(
                      builder: (context) => WebViewScreen(
                        title: items[index]['title']!,
                        url: items[index]['url']!,
                      ),
                    ),
                  );
                },
              ),
              if (index < items.length - 1) Divider(),
            ],
          );
        },
      ),
    );
  }
}
