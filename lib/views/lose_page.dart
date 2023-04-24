import 'package:flutter/material.dart';

class LosePage extends StatelessWidget {
  const LosePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.restart_alt)),
      ),
    );
  }
}
