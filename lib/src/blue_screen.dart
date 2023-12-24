import '/src/exports/data.dart';
import '/src/exports/utils.dart';

/// A sealed class that containing the default properties of [BlueScreen] widgets.
sealed class BlueScreen {
  /// The text color of the [BlueScreen].
  static const Color textColor = Colors.white;

  /// The background color of the [BlueScreen].
  static const Color backgroundColor = Colors.blue;

  /// The default font family of the [BlueScreen].
  static const String fontFamily = FontFamily.segoe;
}
