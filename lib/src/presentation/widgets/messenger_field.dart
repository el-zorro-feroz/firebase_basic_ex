import 'package:flutter/material.dart';

class MessengerField extends StatelessWidget {
  final TextEditingController editingController;
  final void Function()? onSend;

  const MessengerField({
    super.key,
    required this.editingController,
    this.onSend,
  });

  @override
  Widget build(BuildContext context) {
    final ThemeData themeDataGlobal = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16.0,
        vertical: 8.0,
      ),
      child: Row(
        children: [
          Expanded(
            child: Container(
              color: themeDataGlobal.cardColor,
              child: const TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Enter thing',
                ),
              ),
            ),
          ),
          IconButton.outlined(
            onPressed: onSend,
            icon: const Icon(
              Icons.send,
            ),
          ),
        ],
      ),
    );
  }
}
