import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'standard_error_widget.dart';
import 'standard_loading_widget.dart';

extension StandardWhen<T> on AsyncValue<T> {
  Widget standardWhen({
    required Widget Function(T data) data,
    Widget Function() loading = StandardLoadingWidget.new,
    Widget Function(Object error, StackTrace stackTrace) error = StandardErrorWidget.new,
    bool skipLoadingOnReload = false,
    bool skipLoadingOnRefresh = true,
    bool skipError = false,
  }) =>
      when(
        data: data,
        loading: loading,
        error: error,
        skipError: skipError,
        skipLoadingOnRefresh: skipLoadingOnRefresh,
        skipLoadingOnReload: skipLoadingOnReload,
      );
}
