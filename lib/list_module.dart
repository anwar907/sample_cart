import 'package:flutter/material.dart';
import 'package:management_state/provider/done_module_provider.dart';
import 'package:provider/provider.dart';

import 'module_tile.dart';

class ModuleList extends StatelessWidget {
  ModuleList({super.key, required this.doneModuleList});

  final List<String> doneModuleList;

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
          return Consumer<DoneModuleProvider>(builder: (context, data, widget) {
            return ModuleTile(
              isDone: data.doneModuleList.contains(_moduleList[index]),
              moduleName: _moduleList[index],
              onClick: () {
                data.complete(_moduleList[index]);
              },
            );
          });
        });
  }
}
