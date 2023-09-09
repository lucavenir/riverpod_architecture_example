import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../domain/entities/current_location.dart';
import '../state/current_weather_location.dart';
import 'location_results_widget.dart';

class LocationSearchBar extends HookConsumerWidget {
  const LocationSearchBar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = useTextEditingController(text: '');
    final isSearchEmpty = useListenableSelector(controller, () => controller.text.isEmpty);

    Future<void> dialogBuilder() async {
      if (isSearchEmpty) return;

      final result = await showDialog<CurrentLocation?>(
        context: context,
        builder: (_) => LocationResultsWidget(controller.text),
      );
      // ignore: use_build_context_synchronously
      if (!context.mounted) return;
      if (result == null) return;

      ref.read(currentLocationControllerProvider.notifier).updateLocation(result);
      controller.clear();
      FocusScope.of(context).unfocus();
    }

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
      child: TextField(
        onSubmitted: (_) => dialogBuilder(),
        controller: controller,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
          hintText: 'Your city...',
          prefixIcon: isSearchEmpty
              ? null
              : IconButton(
                  onPressed: controller.clear,
                  icon: const Icon(Icons.close),
                ),
          suffixIcon: IconButton(
            icon: const Icon(
              Icons.search,
              color: Colors.white,
            ),
            onPressed: dialogBuilder,
          ),
        ),
      ),
    );
  }
}
