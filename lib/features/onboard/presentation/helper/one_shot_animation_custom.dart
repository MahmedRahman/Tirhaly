

import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

T? _ambiguate<T>(T? value) => value;
class OneShotAnimationCustom extends SimpleAnimation {
  final VoidCallback? onStop;
  final VoidCallback? onStart;
  OneShotAnimationCustom(
    String animationName, {
    double mix = 1,
    bool autoplay = true,
    this.onStop,
    this.onStart,
  }) : super(animationName, mix: mix, autoplay: autoplay) {
    isActiveChanged.addListener(onActiveChanged);
  }
  @override
  void dispose() {
    super.dispose();
    isActiveChanged.removeListener(onActiveChanged);
  }
  void onActiveChanged() {
    isActive
        ? onStart?.call()
        : _ambiguate(WidgetsBinding.instance)?.addPostFrameCallback((_) => onStop?.call());
  }
}
