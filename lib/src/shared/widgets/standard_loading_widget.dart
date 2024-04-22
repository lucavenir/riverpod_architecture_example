import 'package:flutter/material.dart';

class StandardLoadingWidget extends StatelessWidget {
  const StandardLoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircularProgressIndicator(),
          SizedBox(height: 12),
          Text('Loading...'),
        ],
      ),
    );
  }
}
