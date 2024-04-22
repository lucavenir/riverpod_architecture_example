import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../router/config.routes.dart';
import '../../shared/widgets/standard_error_widget.dart';
import '../../shared/widgets/standard_loading_widget.dart';
import '../providers/splash_loading.provider.dart';

class SplashPage extends ConsumerWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final loading = ref.watch(splashLoadingProvider);

    return Scaffold(
      body: Center(
        child: switch (loading) {
          AsyncData() => const Icon(Icons.sentiment_very_satisfied)
              .animate()
              .fadeIn(duration: 200.milliseconds)
              .fadeOut(duration: 800.milliseconds)
              .then()
              .callback(callback: (value) => const HomeRoute().go(context)),
          AsyncError(:final error, :final stackTrace) => StandardErrorWidget(error, stackTrace),
          _ => const StandardLoadingWidget()
        },
      ),
    );
  }
}
