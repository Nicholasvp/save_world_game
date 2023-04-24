import 'package:flutter/material.dart';

class WinnerPage extends StatelessWidget {
  const WinnerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.emoji_events_rounded)),
      ),
    );
  }
}
