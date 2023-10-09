import 'package:flutter/material.dart';
import 'package:things/src/domain/entities/thing.dart';
import 'package:things/src/presentation/widgets/messenger_field.dart';
import 'package:things/src/presentation/widgets/thing_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  Thing _debugGetThing() => Thing(
        id: '',
        username: 'anonymus',
        data: 'data',
        lastUpdAt: DateTime.now(),
      );

  @override
  Widget build(BuildContext context) {
    final TextEditingController editingController = TextEditingController();

    Never onRefreshPressed() {
      throw UnimplementedError();
    }

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        titleSpacing: 32.0,
        title: const Text(
          'Things Dash-Inside Demo App',
        ),
        actions: [
          IconButton(
            onPressed: onRefreshPressed,
            icon: const Icon(
              Icons.refresh,
            ),
          ),
          const SizedBox(width: 32.0),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 4,
              itemBuilder: (_, __) {
                return Padding(
                  padding: const EdgeInsets.only(
                    bottom: 8.0,
                    left: 16.0,
                    right: 16.0,
                  ),
                  child: ThingCard(
                    thing: _debugGetThing(),
                  ),
                );
              },
            ),
          ),
          MessengerField(
            editingController: editingController,
          ),
        ],
      ),
    );
  }
}
