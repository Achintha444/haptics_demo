import 'package:haptics_demo/haptic/haptic_strategy.dart';

/// Haptic types that is used in the app
enum HapticType {
  /// Menu haptic
  menu,

  /// Button haptic
  button,

  /// Success haptic
  success,

  /// Error haptic
  error,
}

class Haptic {
  // Singleton instance
  static final Haptic _instance = Haptic._internal();

  /// Use haptics in the app. Instead of directly using [HapticStrategy], use this.
  Haptic._internal();

  // Factory constructor to return the singleton
  factory Haptic() => _instance;

  /// Map to store strategies
  final Map<HapticType, HapticStrategy> _strategies = {
    HapticType.menu: MenuHaptic(),
    HapticType.button: ButtonHaptic(),
    HapticType.success: SuccessHaptic(),
    HapticType.error: ErrorHaptic(),
  };

  /// Trigger a haptic feedback based on the type
  void triggerHaptic(HapticType type) {
    _strategies[type]?.trigger();
  }
}
