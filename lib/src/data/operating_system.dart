import '/src/exports/data.dart';
import '/src/exports/utils.dart';

/// The operating system used for builds [BlueScreenWidget].
enum OperatingSystem {
  /// Windows 8 & 8.1.
  windows8(
    fontFamily: FontFamily.segoe,
    textColor: Colors.white,
    backgroundColor: Colors.blue,
  ),

  /// Windows 10.
  windows10(
    fontFamily: FontFamily.segoe,
    textColor: Colors.white,
    backgroundColor: Colors.blue,
  ),

  /// Windows 11.
  windows11(
    fontFamily: FontFamily.segoe,
    textColor: Colors.white,
    backgroundColor: Colors.black,
  ),

  /// Windows Server.
  windowsServer(
    fontFamily: FontFamily.segoe,
    textColor: Colors.white,
    backgroundColor: Colors.blue,
  );

  /// The font family used for display on [BlueScreenWidget].
  final String? fontFamily;

  /// The color to use when painting the text on [BlueScreenWidget].
  final Color textColor;

  /// The color to use when painting the background on [BlueScreenWidget].
  final Color backgroundColor;

  const OperatingSystem({
    this.fontFamily,
    required this.textColor,
    required this.backgroundColor,
  });
}
