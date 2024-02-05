import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:talker_flutter/talker_flutter.dart';

class RiverpodWeatherProviderObserver extends ProviderObserver {
  const RiverpodWeatherProviderObserver(this._talker);
  final Talker _talker;

  @override
  void didAddProvider(
    ProviderBase<Object?> provider,
    Object? value,
    ProviderContainer container,
  ) {
    _talker.verbose(
      '$provider has been created\n'
      '\tInitial value:\n'
      '\t\t$value',
    );
  }

  @override
  void providerDidFail(
    ProviderBase<Object?> provider,
    Object error,
    StackTrace stackTrace,
    ProviderContainer container,
  ) {
    _talker.handle(
      error,
      stackTrace,
      '$provider raised an Exception\n',
    );
  }

  @override
  void didUpdateProvider(
    ProviderBase<Object?> provider,
    Object? previousValue,
    Object? newValue,
    ProviderContainer container,
  ) {
    _talker.verbose(
      '$provider updated\n'
      '\tOld value:\n'
      '\t\t$previousValue\n'
      '\tNew value:\n'
      '\t\t$newValue',
    );
  }

  @override
  void didDisposeProvider(
    ProviderBase<Object?> provider,
    ProviderContainer container,
  ) {
    _talker.verbose('$provider has been disposed');
  }
}
