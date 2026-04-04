import 'package:flutter/material.dart';

import '../../../storage/preference_storage.dart';

class StorageManagePage extends StatefulWidget {
  const StorageManagePage({super.key});

  @override
  State<StorageManagePage> createState() => _StorageManagePageState();
}

class _StorageManagePageState extends State<StorageManagePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Storage Manager'), centerTitle: false, scrolledUnderElevation: 0),
      body: FutureBuilder(
        future: PreferenceStorage().readAll(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }

          if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          }

          return ListView(
            children: [
              ListTile(
                title: Text('Storage total : ${snapshot.data?.length ?? 0} items'),
                trailing: FilledButton(
                  child: Text('Clear all'),
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        title: const Text('Clear all'),
                        content: const Text('Are you sure you want to clear all storage?'),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text('Cancel'),
                          ),
                          TextButton(
                            onPressed: () {
                              PreferenceStorage().clear();
                              setState(() {});
                              Navigator.pop(context);
                            },
                            child: Text('Clear'),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              ...snapshot.data?.entries
                      .map(
                        (entry) => ListTile(
                          title: Text(entry.key),
                          subtitle: Text(entry.value),
                          trailing: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              // IconButton(
                              //   onPressed: () { },
                              //   icon: const Icon(Icons.edit),
                              // ),
                              IconButton(
                                onPressed: () {
                                  PreferenceStorage().delete(entry.key);
                                  setState(() {});
                                },
                                icon: const Icon(Icons.delete),
                              ),
                            ],
                          ),
                        ),
                      )
                      .toList() ??
                  [],
            ],
          );
        },
      ),
    );
  }
}
