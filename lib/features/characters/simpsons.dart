import 'package:dexian/features/characters/simpsons/simpsons_provider.dart';
import 'package:dexian/widgets/custom_search_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SimpsonsPage extends ConsumerWidget {
  const SimpsonsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final simpsonsData = ref.watch(simpsonsProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Simpsons'),
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
            simpsonsData.when(
              data: (simpsons) => SizedBox(
                height: MediaQuery.of(context).size.height * 0.8,
                child: ListView.builder(
                  itemCount: simpsons.length,
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                      leading: CircleAvatar(
                        backgroundImage:
                            NetworkImage(simpsons[index].icon!.url!),
                      ),
                      title: Text(simpsons[index].text!),
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
