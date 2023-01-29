import 'package:flutter/material.dart';

class Listview2Screen extends StatelessWidget {
  final options = const ['Ninja Gaiden', 'Metroid', 'Galaga', 'Pokemon'];

  const Listview2Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Listview Tipo 2"),
        ),
        body: ListView.separated(
          itemCount: options.length,
          itemBuilder: (context, i) => ListTile(
            title: Text(options[i]),
            leading: const Icon(
              Icons.gamepad_rounded,
            ),
            trailing: const Icon(
              Icons.save,
            ),
            onTap: (() {
              final game = options[i];
              print(game);
            }),
          ),
          separatorBuilder: (_, __) => const Divider(),
        ));
  }
}
