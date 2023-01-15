import 'package:flutter/material.dart';

class DoneModuleList extends StatelessWidget {
  const DoneModuleList({super.key, required this.doneModuleList});

  final List<String> doneModuleList;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Done Module List'),
      ),
      body: ListView.builder(
          itemCount: doneModuleList.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(doneModuleList[index]),
            );
          }),
    );
  }
}
