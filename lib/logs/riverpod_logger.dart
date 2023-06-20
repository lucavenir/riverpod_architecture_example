import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logging/logging.dart';

class RiverpodLogger extends ProviderObserver {
  const RiverpodLogger(this._logger);
  final Logger _logger;

  @override
  void didAddProvider(
    ProviderBase<Object?> provider,
    Object? value,
    ProviderContainer container,
  ) {
    _logger
      ..finest('$provider has been created')
      ..finest('\tValue: $value');
  }

  @override
  void didUpdateProvider(
    ProviderBase<Object?> provider,
    Object? previousValue,
    Object? newValue,
    ProviderContainer container,
  ) {
    if (newValue is AsyncError) return;

    _logger
      ..finest('$provider updated')
      ..finest('\tOld value: $previousValue')
      ..finest('\tNew value: $newValue');
  }

  @override
  void didDisposeProvider(
    ProviderBase<Object?> provider,
    ProviderContainer container,
  ) {
    _logger.fine('$provider has been disposed');
  }
}
