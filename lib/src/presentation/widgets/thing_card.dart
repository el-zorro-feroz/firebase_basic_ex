import 'package:flutter/material.dart';
import 'package:things/src/domain/entities/thing.dart';

class ThingCard extends StatelessWidget {
  final Thing thing;

  const ThingCard({
    super.key,
    required this.thing,
  });

  @override
  Widget build(BuildContext context) {
    final TextTheme globalTextTheme = Theme.of(context).textTheme;

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  thing.username,
                  style: globalTextTheme.labelSmall,
                ),
                const Spacer(),
                Text(
                  thing.lastUpdAt.toString().substring(0, 16),
                  style: globalTextTheme.labelSmall,
                ),
              ],
            ),
            const SizedBox(height: 4.0),
            Text(
              thing.data,
              style: globalTextTheme.bodyLarge,
            ),
          ],
        ),
      ),
    );
  }
}
