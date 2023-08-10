import 'package:dexian/features/characters/simpsons/simpsons_provider.dart';
import 'package:dexian/features/characters/wire/wire_provider.dart';
import 'package:dexian/widgets/custom_search_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class WirePage extends ConsumerWidget {
  const WirePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final wireData = ref.watch(wireProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Wire'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const CustomSearchBar(),
            const SizedBox(height: 20),
            TextButton(
              onPressed: () async {
                await ref.read(simpsonsProvider.notifier).fetchSimponsData();
              },
              child: const Text('Fetch Data'),
            ),
            wireData.when(
              data: (wire) => SizedBox(
                height: MediaQuery.of(context).size.height * 0.8,
                child: ListView.builder(
                  itemCount: wire.length,
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(wire[index].icon!.url!),
                      ),
                      title: Text(wire[index].text!),
                    );
                  },
                ),
              ),
              error: (error, stackTrace) =>
                  Center(child: Text(error.toString())),
              loading: () => const Center(
                child: CircularProgressIndicator(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
