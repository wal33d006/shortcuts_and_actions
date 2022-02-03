import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CopyIntent extends Intent {
  const CopyIntent();
}

class CopyAction extends Action<CopyIntent> {
  CopyAction(this.controller);

  final TextEditingController controller;

  @override
  Object? invoke(covariant CopyIntent intent) {
    var selectedString = '';
    if (controller.selection.baseOffset > controller.selection.extentOffset) {
      selectedString = controller.text.substring(
        controller.selection.extentOffset,
        controller.selection.baseOffset,
      );
    } else {
      selectedString = controller.text.substring(
        controller.selection.baseOffset,
        controller.selection.extentOffset,
      );
    }
    Clipboard.setData(ClipboardData(text: selectedString));
  }
}
