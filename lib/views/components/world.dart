import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:save_world_game/provider/varProvider.dart';
import 'package:save_world_game/provider/visibleProvider.dart';

class World extends StatefulWidget {
  const World({Key? key}) : super(key: key);

  @override
  State<World> createState() => _WorldState();
}

class _WorldState extends State<World> {
  @override
  Widget build(BuildContext context) {
    var visibility = Provider.of<VisibleProvider>(context);
    var value = Provider.of<VarProvider>(context);
    var taxa = (value.contamination * 100).round();
    return Container(
      width: MediaQuery.of(context).size.width,
      height: double.infinity,
      color: Colors.black26,
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              'https://static.vecteezy.com/system/resources/previews/013/441/257/original/earth-planet-icon-png.png',
              width: MediaQuery.of(context).size.width * 0.2,
            ),
            const SizedBox(
              height: 30,
            ),
            Text('Taxa de contaminação está em $taxa%'),
            const SizedBox(
              height: 30,
            ),
            Padding(
                padding: const EdgeInsets.only(right: 100, left: 100),
                child: LinearProgressIndicator(
                  minHeight: 80,
                  value: value.contamination,
                )),
            const SizedBox(
              height: 30,
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
      ),
    );
  }
}
