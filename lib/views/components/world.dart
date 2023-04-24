import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:save_world_game/provider/varProvider.dart';

class World extends StatefulWidget {
  const World({Key? key}) : super(key: key);

  @override
  State<World> createState() => _WorldState();
}

class _WorldState extends State<World> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: double.infinity,
      color: Colors.green,
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              'https://static.vecteezy.com/system/resources/previews/013/441/257/original/earth-planet-icon-png.png',
              width: MediaQuery.of(context).size.width * 0.2,
            ),
            Padding(
              padding: const EdgeInsets.all(100.0),
              child: Consumer<VarProvider>(
                builder: (context, value, child) {
                  return LinearProgressIndicator(
                    value: value.contamination,
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
