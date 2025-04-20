import 'package:flutter/material.dart';

class ErrorWithStack extends StatelessWidget {
  final String error;
  final StackTrace? stack;

  const ErrorWithStack({super.key, required this.error, this.stack});

  @override
  Widget build(BuildContext context) {
    debugPrintStack(stackTrace: stack, label: error);
    return Card(
      margin: const EdgeInsets.all(16.0),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const Icon(Icons.error_outline, color: Colors.red),
                const SizedBox(width: 16.0),
                Expanded(
                  child: Text(
                    error,
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          color: Colors.red,
                        ),
                  ),
                ),
              ],
            ),
            if (stack != null) ...[
              const SizedBox(height: 16.0),
              ExpansionTile(
                title: const Text('Stack Trace'),
                children: [
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        stack.toString(),
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                              fontFamily: 'monospace',
                            ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ],
        ),
      ),
    );
  }
}
