import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:save_world_game/provider/visibleProvider.dart';

import 'components/questions.dart';
import 'components/world.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var visibility = Provider.of<VisibleProvider>(context);
    return Scaffold(
      body: Stack(
        alignment: const AlignmentDirectional(0, 0.5),
        children: [
          Visibility(
            visible: visibility.isVisible,
            child: const World(),
          ),
          Visibility(
            visible: visibility.isVisible_,
            child: Questions(),
          ),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  visibility.changeVisibility();
                });
              },
              child: const Text('Avançar'))
        ],
      ),
    );
  }
}
