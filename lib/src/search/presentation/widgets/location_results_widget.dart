import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../current_location/domain/entities/current_location.dart';
import '../state/locations_search.dart';

class LocationResultsWidget extends HookConsumerWidget {
  const LocationResultsWidget(this.query, {super.key});
  final String query;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final locations = ref.watch(searchLocationsProvider(query));
    final selectedLocation = useState<CurrentLocation?>(null); // use a CurrentLocation state

    return AlertDialog(
      title: const Text('Stavi cercando...'),
      content: locations.when(
        data: (data) => Column(
          children: [
            for (final location in data.places)
              ListTile(
                selected: selectedLocation.value == location,
                title: Text(location.cityName),
                subtitle: Text(location.country),
                onTap: () => selectedLocation.value = location,
              ),
          ],
        ),
        error: (error, stackTrace) => const Center(child: Text("C'è stato un errore")),
        loading: () => const Column(
          children: [
            CircularProgressIndicator(),
            Text('Caricamento...'),
          ],
        ),
      ),
      actions: <Widget>[
        TextButton(
          style: TextButton.styleFrom(
            textStyle: Theme.of(context).textTheme.labelLarge,
          ),
          onPressed: context.pop,
          child: const Text('Annulla'),
        ),
        TextButton(
          style: TextButton.styleFrom(
            textStyle: Theme.of(context).textTheme.labelLarge,
          ),
          onPressed: locations.isLoading || selectedLocation.value == null
              ? null
              : () => context.pop(selectedLocation.value),
          child: const Text('Seleziona'),
        ),
      ],
    );
  }
}
