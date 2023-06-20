import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logging/logging.dart';

class RiverpodCrashlytics extends ProviderObserver {
  const RiverpodCrashlytics(this._logger);
  final Logger _logger;

  @override
  void providerDidFail(
    ProviderBase<Object?> provider,
    Object error,
    StackTrace stackTrace,
    ProviderContainer container,
  ) {
    _handleError(provider, error, stackTrace);
  }

  @override
  void didUpdateProvider(
    ProviderBase<Object?> provider,
    Object? previousValue,
    Object? newValue,
    ProviderContainer container,
  ) {
    if (newValue is! AsyncError) return;

    return _handleError(provider, newValue.error, newValue.stackTrace);
  }

  void _handleError(
    ProviderBase<Object?> provider,
    Object error,
    StackTrace stackTrace,
  ) {
    _logger
      ..severe('$provider raised an Exception')
      ..severe('\tError: $error')
      ..severe('\tStack Trace: $stackTrace');
  }
}
