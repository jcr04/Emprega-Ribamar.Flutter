import 'package:flutter/animation.dart';

// Utilidade para gerenciar a animação de fade-in e fade-out
AnimationController createAnimationController(TickerProvider vSync) {
  return AnimationController(
    duration: const Duration(seconds: 2),
    vsync: vSync,
  );
}

Animation<double> createFadeAnimation(AnimationController controller) {
  return Tween(begin: 0.0, end: 1.0).animate(controller);
}
