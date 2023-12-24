import 'package:blue_screen/src/exports/data.dart';
import 'package:blue_screen/src/exports/utils.dart';

/// The theme of the [BlueScreenWidget].
class BlueScreenTheme {
  final String? fontFamily;
  final Color? textColor;
  final Color? backgroundColor;

  /// Creates a custom [BlueScreenTheme].
  const BlueScreenTheme({
    this.fontFamily,
    this.textColor,
    this.backgroundColor,
  });

  /// Creates a [BlueScreenTheme] with the specified operating [system].
  BlueScreenTheme.withOperatingSystem(
    OperatingSystem system,
  )   : fontFamily = system.fontFamily,
        textColor = system.textColor,
        backgroundColor = system.backgroundColor;
}
