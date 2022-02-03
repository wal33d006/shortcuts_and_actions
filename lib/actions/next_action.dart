import 'package:flutter/material.dart';

class NextIntent extends Intent {
  const NextIntent();
}

class NextAction extends Action<NextIntent> {
  NextAction(this.controller);

  final PageController controller;

  @override
  Object? invoke(covariant NextIntent intent) {
    controller.nextPage(duration: const Duration(milliseconds: 1200), curve: Curves.elasticInOut);
  }
}
