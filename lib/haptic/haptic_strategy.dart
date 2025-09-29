import 'package:flutter/services.dart';

/// Abstract class that defines the interface for a haptic strategy.
abstract class HapticStrategy {
  /// Triggers the haptic feedback.
  void trigger();
}

/// Haptic strategy for menu interactions.
class MenuHaptic implements HapticStrategy {
  // Singleton instance
  static final MenuHaptic _instance = MenuHaptic._internal();

  /// Haptic strategy for menu interactions.
  MenuHaptic._internal();

  // Factory constructor to return the singleton
  factory MenuHaptic() {
    return _instance;
  }

  @override
  void trigger() {
    HapticFeedback.lightImpact();
  }
}

/// Haptic strategy for button interactions.
class ButtonHaptic implements HapticStrategy {
  // Singleton instance
  static final ButtonHaptic _instance = ButtonHaptic._internal();

  /// Haptic strategy for button interactions.
  ButtonHaptic._internal();

  // Factory constructor to return the singleton
  factory ButtonHaptic() {
    return _instance;
  }

  @override
  void trigger() {
    HapticFeedback.selectionClick();
  }
}

/// Haptic strategy for success feedback.
class SuccessHaptic implements HapticStrategy {
  // Singleton instance
  static final SuccessHaptic _instance = SuccessHaptic._internal();

  /// Haptic strategy for success feedback.
  SuccessHaptic._internal();

  // Factory constructor to return the singleton
  factory SuccessHaptic() {
    return _instance;
  }

  @override
  void trigger() {
    HapticFeedback.vibrate();
  }
}

/// Haptic strategy for error feedback.
class ErrorHaptic implements HapticStrategy {
  // Singleton instance
  static final ErrorHaptic _instance = ErrorHaptic._internal();

  /// Haptic strategy for error feedback.
  ErrorHaptic._internal();

  // Factory constructor to return the singleton
  factory ErrorHaptic() {
    return _instance;
  }

  @override
  void trigger() {
    HapticFeedback.heavyImpact();
  }
}
