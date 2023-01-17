import 'package:flutter/material.dart';
import 'package:management_state/provider/done_module_provider.dart';
import 'package:provider/provider.dart';

class DoneModuleList extends StatelessWidget {
  const DoneModuleList({super.key, required this.doneModuleList});

  final List<String> doneModuleList;

  @override
  Widget build(BuildContext context) {
    final doneModuleList =
        Provider.of<DoneModuleProvider>(context, listen: false).doneModuleList;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Done Module List'),
      ),
      body: ListView.builder(
          itemCount: doneModuleList.length,
          itemBuilder: (context, index) {
            return Consumer<DoneModuleProvider>(
                builder: (context, data, child) {
                  return ListTile(
                    title: Text(doneModuleList[index]),
                    trailing: IconButton(
                        onPressed: () {
                          data.remove(doneModuleList[index]);
                        },
                        icon: const Icon(Icons.remove)),
                  );
                },
                child: Text('${doneModuleList.length}'));
          }),
    );
  }
}
