import 'package:athletekit/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CounterPage extends ConsumerWidget {
  const CounterPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final StateProvider counter = stateProviders.counterProvider;

    ref.listen(counter, (previus, next) {
      if (next >= 5 || previus <= -5) {
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: const Text('Message'),
            content: Text(ref.watch(counter).toString()),
          ),
        );
      }
    });

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Text(
            'You have pushed the button this many times:',
          ),
          Text(
            ref.watch(counter).toString(),
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              mainAxisSize: MainAxisSize.max,
              children: [
                FloatingActionButton(
                  onPressed: () => ref.read(counter.notifier).state--,
                  tooltip: 'Decrement',
                  child: const Icon(Icons.exposure_minus_1),
                ),
                const SizedBox(
                  width: 30,
                ),
                FloatingActionButton(
                  onPressed: () => ref.invalidate(counter),
                  tooltip: 'Reset',
                  child: const Icon(Icons.refresh),
                ),
                const SizedBox(
                  width: 30,
                ),
                FloatingActionButton(
                  onPressed: () => ref.read(counter.notifier).state++,
                  tooltip: 'Increment',
                  child: const Icon(Icons.plus_one),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
