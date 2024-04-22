import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'standard_when.dart';

extension StandardWhen<T> on AsyncValue<T> {
  Widget emptyWhen({
    required Widget Function(T data) data,
    bool skipLoadingOnReload = false,
    bool skipLoadingOnRefresh = true,
    bool skipError = false,
  }) =>
      standardWhen(
        data: data,
        loading: SizedBox.shrink,
        // TODO logging
        error: (error, stackTrace) => const SizedBox.shrink(),
        skipError: skipError,
        skipLoadingOnRefresh: skipLoadingOnRefresh,
        skipLoadingOnReload: skipLoadingOnReload,
      );
}
