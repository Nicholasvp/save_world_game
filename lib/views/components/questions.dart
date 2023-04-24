import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:save_world_game/provider/varProvider.dart';
import 'package:save_world_game/views/lose_page.dart';

import '../winner_page.dart';

class Questions extends StatelessWidget {
  Questions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var value = Provider.of<VarProvider>(context);
    return Container(
      width: MediaQuery.of(context).size.width,
      height: double.infinity,
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('Questão 1'),
          const Text(
              'Qual é uma das formas mais eficazes de prevenção da COVID-19?'),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            width: double.maxFinite,
            child: Wrap(alignment: WrapAlignment.center, children: [
              ElevatedButton(
                  onPressed: () {
                    value.contamination <= 0.15
                        ? Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const WinnerPage()))
                        : Provider.of<VarProvider>(context, listen: false)
                            .correct();
                    print(value.contamination);
                  },
                  child: const Text('certo')),
              const SizedBox(
                width: 10,
              ),
              ElevatedButton(
                  onPressed: () {
                    value.contamination >= 0.85
                        ? Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const LosePage()))
                        : Provider.of<VarProvider>(context, listen: false)
                            .wrong();
                    print(value.contamination);
                  },
                  child: const Text('errado'))
            ]),
          )
        ],
      ),
    );
  }
}
