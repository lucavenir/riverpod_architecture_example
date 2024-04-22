import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class StandardErrorWidget extends ConsumerWidget {
  const StandardErrorWidget(
    this.error,
    this.stackTrace, {
    super.key,
    this.message,
    this.icon,
  });
  final Object? error;
  final StackTrace stackTrace;
  final String? message;
  final IconData? icon;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon ?? Icons.sentiment_very_dissatisfied),
          Text(message ?? 'Something went wrong..'),
        ],
      ),
    );
  }
}
