import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../shared/presentation/widgets/standard_when.dart';
import '../state/locations_search.dart';

class LocationResultsWidget extends HookConsumerWidget {
  const LocationResultsWidget(this.query, {super.key});
  final String query;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final locations = ref.watch(searchLocationsProvider(query));

    return AlertDialog(
      actionsAlignment: MainAxisAlignment.center,
      title: const Text('Available locations'),
      content: locations.standardWhen(
        data: (data) => SizedBox(
          height: MediaQuery.sizeOf(context).height * 0.30,
          child: SingleChildScrollView(
            child: Column(
              children: [
                for (final location in data.places)
                  ListTile(
                    minVerticalPadding: 0,
                    contentPadding: EdgeInsets.zero,
                    dense: true,
                    title: Text(location.cityName),
                    subtitle: Text(location.country),
                    onTap: () => context.pop(location),
                  ),
              ],
            ),
          ),
        ),
      ),
      actions: <Widget>[
        TextButton(
          style: TextButton.styleFrom(
            textStyle: Theme.of(context).textTheme.labelLarge,
          ),
          onPressed: context.pop,
          child: const Text('CANCEL'),
        ),
      ],
    );
  }
}
