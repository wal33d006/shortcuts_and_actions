import 'package:flutter/material.dart';

class BackIntent extends Intent {
  const BackIntent();
}

class BackAction extends Action<BackIntent> {
  BackAction(this.controller);

  final PageController controller;

  @override
  Object? invoke(covariant BackIntent intent) {
    controller.previousPage(duration: const Duration(milliseconds: 1200), curve: Curves.elasticInOut);
  }
}
