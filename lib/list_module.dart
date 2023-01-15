import 'package:flutter/material.dart';

import 'module_tile.dart';

class ModuleList extends StatefulWidget {
  const ModuleList({super.key, required this.doneModuleList});
  final List<String> doneModuleList;

  @override
  State<ModuleList> createState() => _ModuleListState();
}

class _ModuleListState extends State<ModuleList> {
  final List<String> _moduleList = [
    'Modul 1 - Pengenalan Dart',
    'Modul 2 - Program Dart Pertamamu',
    'Modul 3 - Dart Fundamental',
    'Modul 4 - Control Flow',
    'Modul 5 - Collections',
    'Modul 6 - Object Oriented Programming',
    'Modul 7 - Functional Styles',
    'Modul 8 - Dart Type System',
    'Modul 9 - Dart Futures',
    'Modul 10 - Effective Dart',
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: _moduleList.length,
        itemBuilder: (context, index) {
          return ModuleTile(
            isDone: widget.doneModuleList.contains(_moduleList[index]),
            moduleName: _moduleList[index],
            onClick: () {
              setState(() {
                widget.doneModuleList.add(_moduleList[index]);
              });
            },
          );
        });
  }
}
