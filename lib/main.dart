import 'package:flutter/material.dart';
import 'package:management_state/provider/done_module_provider.dart';
import 'package:provider/provider.dart';

import 'done_module_list.dart';
import 'list_module.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => DoneModuleProvider(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
            primarySwatch: Colors.blue,
            visualDensity: VisualDensity.adaptivePlatformDensity),
        home: ModulePage(),
      ),
    );
  }
}

class ModulePage extends StatelessWidget {
  ModulePage({super.key});

  final List<String> _doneModuleList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pemrograman Dart'),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => DoneModuleList(
                              doneModuleList: _doneModuleList,
                            )));
              },
              icon: const Icon(Icons.done))
        ],
      ),
      body: ModuleList(doneModuleList: _doneModuleList),
    );
  }
}
