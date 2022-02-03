import 'package:flutter/material.dart';

class ClearIntent extends Intent {
  const ClearIntent();
}

class ClearAction extends Action<ClearIntent> {
  ClearAction(this.controller);

  final TextEditingController controller;

  @override
  Object? invoke(covariant ClearIntent intent) {
    controller.clear();
  }
}
